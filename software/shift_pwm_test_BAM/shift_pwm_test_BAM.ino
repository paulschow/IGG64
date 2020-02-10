
/*
This code drives leds using daisy chained 595 shiftregisters.

Two different drive methods:
PWM - just workks with 32 PWM levels, 6 registers and 90 HZ
BAM - works for lot more with 256 PWM levels

Todo:
1) Precalculate the data for 595 always when PWM levels are changed. This should speed
up the interrupt.
2) Change the interrupt so that it is called only when needed by changing the interrupt time
   on every call. Dunno if this is necessary, the interrupt exists just after a few ifs if nothing
   need to be updated.
   
   Tomas Martinsen 29 Sep 2010
   
 
Lot of code from:
Created 22 May 2009
Created 23 Mar 2010
by Tom Igoe

*/
#include <SPI.h>
#include <TimerThree.h>


//
// Pins on arduino mega
//
//--- Pin connected to ST_CP of 74HC595
const int latchPin = 8;
//--- Pin connected to SH_CP of 74HC595
const int clockPin = 12;
//--- Pin connected to DS of 74HC595
const int dataPin = 11;

//
// constants
//
#define PWM_FREQ 100 // hz
#define PWM_STEPS 256 // PWM resolution - set to 256 when using bam
#define BAM_STEPS 8 // how many times BAM updates are done each cycle
#define TICKER_STEP 256/PWM_STEPS
#define NUM_SHIFT_REGS 6  
#define NUM_CHANNELS NUM_SHIFT_REGS*8


//
// Global variables
//
// holds the current pwm values of pins to be sent by interrupt
volatile unsigned char pwmValues[NUM_CHANNELS];
volatile byte bamLookup[BAM_STEPS*NUM_SHIFT_REGS]; // precalculate the bytes to send every time the PWM values change
volatile byte pwmLookup[PWM_STEPS*NUM_SHIFT_REGS];// precalculate the bytes to send to 595 for pwm

/*
 Precalculate the bytes to send for every PWM cycle. Note that this is not fast either!

*/
void precalcPwmBytes() {
 byte bytesToSend[NUM_SHIFT_REGS];
 
 
 for(int ticker = 0;ticker<PWM_STEPS;ticker++){
   //--- get ticker as a 0 to 255 value, so we can always use the same data regardless of actual PWM levels
   byte myPos = ticker * TICKER_STEP;
   // generate one byte per register
   for(byte regNo = 0 ;regNo<NUM_SHIFT_REGS;regNo++) {
     bytesToSend[regNo]  = 0;
     // loop bits of each register
     for(byte ch = 0;ch<8;ch++){
       if(myPos <= pwmValues[regNo*8+ch]) {
         // turn on channel 0-7
         bytesToSend[regNo] |= (1 << ch);
       }
       
     }
     pwmLookup[ticker*NUM_SHIFT_REGS + regNo] = bytesToSend[regNo];
   }
 }
 

}


/*
 Precalculate the bytes to send for each time slice. Call everytime you update or change
 pwmvalues.

*/
void precalcBamBytes() {
 byte bytesToSend[NUM_SHIFT_REGS];
 
 for(int slice=0;slice<BAM_STEPS;slice++) {
   unsigned char sliceMask = (1 << slice);  
   // generate one byte per register
   for(unsigned char regNo = 0 ;regNo<NUM_SHIFT_REGS;regNo++) {
     bytesToSend[regNo]  = 0;
     // loop bits of each register
     for(unsigned char ch = 0;ch<8;ch++){
       // test if the pwm value has the current slicebit 1
       if( (pwmValues[regNo*8+ch] & sliceMask) == sliceMask) {
         // turn on channel 0-7
         bytesToSend[regNo] |= (1 << ch);
       }
       
     }
     bamLookup[slice*NUM_SHIFT_REGS + regNo] = bytesToSend[regNo];
   }
   
 }

}


// the current data that has last been sent to shift registers
//byte *shiftRegValues;

// interrupt counter
volatile byte ticker = 0;


void setup() {
 //set pins to output because they are addressed in the main loop
 pinMode(latchPin, OUTPUT);
 pinMode(dataPin, OUTPUT);  
 pinMode(clockPin, OUTPUT);
 
 // serial communication to 595s
 SPI.begin();
 SPI.setClockDivider(SPI_CLOCK_DIV2);
 
 // Activate the interrupt
 // calculate how many times per sec the ISR ISR is called
 // to get the requested pwm frequency
 Timer3.initialize(1000000/PWM_FREQ/PWM_STEPS); // Timer for updating pwm pins
 Timer3.attachInterrupt(iUpdateBAM3);
 
 // for debugging
 //Serial.begin(9600);
 
 //
 // signal the setup is done
 //
 for(int i=0;i<NUM_CHANNELS;i++){
   setChannel(i,255);
   delay(50);
 }
 for(int i=NUM_CHANNELS-1;i>0;i--){
   setChannel(i,0);
   delay(50);
 }
 setAllChannelsTo(0);
 
}


void loop() {
 
 // test dimming
 int from = 0;
 int to = 255;
 int d = 10;
 for(int i = from;i<to;i++) {
   setAllChannelsTo(i);  
   delay(d);
 }
 
}



/*
 Sends a byte array using SPI to 595 shift registers
*/
void sendSPI(volatile byte *valuesToSend, int from, int to) {
 // latch off
 digitalWrite(latchPin, LOW);  
 // send bytes the last register first
 for(int i = to-1; i>=from;i--) {
   SPI.transfer(valuesToSend[i]);
 }
  // latch on
 digitalWrite(latchPin, HIGH);
}


void setAllChannelsTo(byte duty) {
 for(int i = 0;i<NUM_CHANNELS;i++) {
   pwmValues[i] = duty;
 }
 precalcBamBytes();
 //precalcPwmBytes();
}

void setChannel(int ch,byte duty) {
 pwmValues[ch] = duty;
 precalcBamBytes();
 //precalcPwmBytes();
}

/*
Pulse Width modulation. Pretty slow. The limit is about 6 shift registers, 32 steps and 90hz. Not Good!


*/
void iUpdatePWM() {
 byte valuesTmp[NUM_SHIFT_REGS];
 
 // update ticker and reset if rolls over
 ticker++;
 if(ticker > PWM_STEPS) {
   ticker = 0;
 }
 //--- get ticker as a 0 to 255 value, so we can always use the same data regardless of actual PWM levels
 byte myPos = ticker * TICKER_STEP;
 
 // generate one byte per register
 for(byte regNo = 0 ;regNo<NUM_SHIFT_REGS;regNo++) {
   valuesTmp[regNo]  = 0;
   // loop bits of each register
   for(byte ch = 0;ch<8;ch++){
     if(myPos <= pwmValues[regNo*8+ch]) {
       // turn on channel 0-7
       valuesTmp[regNo] = valuesTmp[regNo] | (1 << ch);
     }
     
   }
 }
 // update registers
 sendSPI(valuesTmp,0,NUM_SHIFT_REGS);

}

/*
Pulse Width modulation. This one uses precalculated values.
This one can do 6 registers, 256 levels and 100 hz.

*/
void iUpdatePWM2() {
 byte valuesTmp[NUM_SHIFT_REGS];
 
 // update ticker and reset if rolls over
 ticker++;
 if(ticker > PWM_STEPS) {
   ticker = 0;
 }

 // update registers. The lookup table is recalculated always when setting pwm values.
 sendSPI(pwmLookup,ticker*NUM_SHIFT_REGS,ticker*NUM_SHIFT_REGS + NUM_SHIFT_REGS);

}



/*
 
 Bit Angle modulation. This version has a problem:
 When the slice hits and we do send data, the function takes too long to execute.
 The result is that all ticks are not of equal length and the brightness depends also on
 how many bits are 1. The result is that 7 is brighter than 9 and 15 brighter than 16.
 Not good for dimming!

*/
void iUpdateBAM() {
 byte bytesToSend[NUM_SHIFT_REGS];
 
 // update ticker and reset if rolls over
 ticker++;
 if(ticker > PWM_STEPS) {
   ticker = 0;
 }
 
 // find out timeslice startpoint we are at
 unsigned char slice;
 if(ticker == 0) {
   slice = 0;
 }
 
 else if(ticker == 1) {
   slice = 1;
 }
 else if(ticker == 3) {
   slice = 2;
 }
 else if(ticker == 7) {
   // B3 - 8 long
   slice = 3;
 }
 else if(ticker == 15) {
   //
   slice = 4;
 }
 else if(ticker == 31) {
   // B4 - 16 long
   slice = 5;
 }
 else if(ticker == 63) {
   // B6A - 32 long
   slice = 6;
 }
 else if(ticker == 127) {
   // B7a - 32 long
   slice = 7;
 }
 else {
   // no actions required
   return;
 }
 
 unsigned char sliceMask = (1 << slice);
 
 
 // generate one byte per register
 for(unsigned char regNo = 0 ;regNo<NUM_SHIFT_REGS;regNo++) {
   bytesToSend[regNo]  = 0;
   // loop bits of each register
   for(unsigned char ch = 0;ch<8;ch++){
     // test if the pwm value has the current slicebit 1
     if( (pwmValues[regNo*8+ch] & sliceMask) == sliceMask) {
       // turn on channel 0-7
       bytesToSend[regNo] |= (1 << ch);
     }
     
   }
 }
 // update registers
 sendSPI(bytesToSend,0,NUM_SHIFT_REGS);
 

}


/*
 
 Bit Angle modulation. Faster version that uses precalculated data for each slice.
 Mighty fast compared to the other version.
 TODO:
 Split slice 6 to 2 parts slice 7 to 4 parts and interleave to avoid flicker.

*/
void iUpdateBAM2() {
 // update ticker and reset if rolls over
 ticker++;
 if(ticker > PWM_STEPS) {
   ticker = 0;
 }
 
 // find out timeslice startpoint we are at
 unsigned char slice;
 if(ticker == 0) {
   slice = 0;
 }
 else if(ticker == 1) {
   slice = 1;
 }
 else if(ticker == 3) {
   slice = 2;
 }
 else if(ticker == 7) {
   // B3 - 8 long
   slice = 3;
 }
 else if(ticker == 15) {
   slice = 4;
 }
 else if(ticker == 31) {
   // B4 - 16 long
   slice = 5;
 }
 else if(ticker == 63) {
   // B6A - 32 long
   slice = 6;
 }
 else if(ticker == 127) {
   // B7B - 32 long
   slice = 7;
 }
 else {
   // no actions required
   return;
 }
 
 // update registers. The lookup table is recalculated always when setting pwm values.
 sendSPI(bamLookup,slice*NUM_SHIFT_REGS,slice*NUM_SHIFT_REGS + NUM_SHIFT_REGS);
 

}

/*
 
 Bit Angle modulation. Faster version that uses precalculated data for each slice.
 Mighty fast compared to the other version.
 
 This fersion also divideds
 the bits 6 and 7 to 32 tick slices to smoothen the transitions over 126->127
 

*/
void iUpdateBAM3() {
 // update ticker and reset if rolls over
 ticker++;
 if(ticker > PWM_STEPS) {
   ticker = 0;
 }
 
 // find out timeslice startpoint we are at
 unsigned char slice;
 if(ticker == 0) {
   slice = 0;
 }
 else if(ticker == 1) {
   slice = 1;
 }
 else if(ticker == 3) {
   slice = 2;
 }
 else if(ticker == 7) {
   // B3 - 8 long
   slice = 3;
 }
 else if(ticker == 15) {
   // B5 - 32 long
   slice = 5;
 }
 else if(ticker == 47) {
   // B4 - 16
   slice = 4;
 }
 else if(ticker == 63) {
   // B7A - 32 long
   slice = 7;
 }
 else if(ticker == 95) {
   // B6A - 32 long
   slice = 6;
 }
 else if(ticker == 127) {
   // B7B - 32 long
   slice = 7;
 } else if(ticker == 159) {
   // B6B - 32 long
   slice = 6;
 }else if(ticker == 191) {
   // B7C - 32 long
   slice = 7;
 } else if(ticker == 223) {
   // B7D - 32 long
   slice = 7;
 }
 
 else {
   // no actions required
   return;
 }
 
 // update registers. The lookup table is recalculated always when setting pwm values.
 sendSPI(bamLookup,slice*NUM_SHIFT_REGS,slice*NUM_SHIFT_REGS + NUM_SHIFT_REGS);
 

}

