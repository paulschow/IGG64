/*
  Blink

  Turns an LED on for one second, then off for one second, repeatedly.

  Most Arduinos have an on-board LED you can control. On the UNO, MEGA and ZERO
  it is attached to digital pin 13, on MKR1000 on pin 6. LED_BUILTIN is set to
  the correct LED pin independent of which board is used.
  If you want to know what pin the on-board LED is connected to on your Arduino
  model, check the Technical Specs of your board at:
  https://www.arduino.cc/en/Main/Products

  modified 8 May 2014
  by Scott Fitzgerald
  modified 2 Sep 2016
  by Arturo Guadalupi
  modified 8 Sep 2016
  by Colby Newman

  This example code is in the public domain.

  http://www.arduino.cc/en/Tutorial/Blink
*/

int brightness = 1;    // how bright the LED is
int fadeAmount = 2;    // how many points to fade the LED by

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(10, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(9, OUTPUT);
  //pinMode(2, OUTPUT);
}

// the loop function runs over and over again forever
void loop() {



for (int fadeValue = 0 ; fadeValue <= 255; fadeValue += 5) {

digitalWrite(7, HIGH);
analogWrite(9, fadeValue);
//delay(100);
analogWrite(9, 0);
analogWrite(10, fadeValue);
//delay(100);
analogWrite(10, 0);
digitalWrite(7, LOW);

//digitalWrite(7, HIGH);
//analogWrite(10, fadeValue);
////delay(100);
//analogWrite(10, 0);
//digitalWrite(7, LOW);

digitalWrite(6, HIGH);
analogWrite(10, fadeValue);
//delay(100);
analogWrite(10, 0);
analogWrite(9, fadeValue);
//delay(100);
analogWrite(9, 0);
digitalWrite(6, LOW);


//digitalWrite(6, HIGH);
//analogWrite(9, fadeValue);
////delay(100);
//analogWrite(9, 0);
//digitalWrite(6, LOW);

}

for (int fadeValue = 255 ; fadeValue >= 0; fadeValue -= 5) {
  // sets the value (range from 0 to 255):
  //analogWrite(ledPin, fadeValue);
  // wait for 30 milliseconds to see the dimming effect
  delay(30);

  digitalWrite(7, HIGH);
  analogWrite(9, fadeValue);
//  delay(100);
  analogWrite(9, 0);
  digitalWrite(7, LOW);
  
  digitalWrite(7, HIGH);
  analogWrite(10, fadeValue);
//  delay(100);
  analogWrite(10, 0);
  digitalWrite(7, LOW);
  
  digitalWrite(6, HIGH);
  analogWrite(10, fadeValue);
//  delay(100);
  analogWrite(10, 0);
  digitalWrite(6, LOW);
  
  
  digitalWrite(6, HIGH);
  analogWrite(9, fadeValue);
//  delay(100);
  analogWrite(9, 0);
  digitalWrite(6, LOW);
}


//brightness = brightness + fadeAmount;
//  if (brightness <= 0 || brightness >= 255) {
//    fadeAmount = -fadeAmount;
//  }
  // wait for 30 milliseconds to see the dimming effect
  //delay(30);

//digitalWrite(6, HIGH);
//analogWrite(9, 20);
//delay(1000);
//analogWrite(9, 0);
//digitalWrite(6, LOW);
//delay(1000);
//digitalWrite(7, HIGH);
//analogWrite(10, 255);
//delay(1000);
//analogWrite(10, 0);
//digitalWrite(7, LOW);
//delay(1000);
  
//  digitalWrite(7, HIGH);   // turn the LED on (HIGH is the voltage level)
//  digitalWrite(8, HIGH);
////  delay(100);
//  delayMicroseconds(100);
//  digitalWrite(8, LOW);
////  digitalWrite(9, HIGH);
////  delayMicroseconds(100);
////  digitalWrite(9, LOW);
//  digitalWrite(7, LOW);   // turn the LED on (HIGH is the voltage level)


//  digitalWrite(6, HIGH);   // turn the LED on (HIGH is the voltage level)
////  digitalWrite(9, HIGH);
////  delayMicroseconds(100);
////  digitalWrite(9, LOW);
//  digitalWrite(8, HIGH);
//  delayMicroseconds(100);
//  digitalWrite(8, LOW);
//  digitalWrite(6, LOW);   // turn the LED on (HIGH is the voltage level)

//digitalWrite(7, HIGH);
//digitalWrite(8, HIGH);
//digitalWrite(9, HIGH);
//delay(10);
//digitalWrite(9, LOW);
//digitalWrite(8, LOW);
//delay(10);
//digitalWrite(7, LOW);
//
//digitalWrite(6, HIGH);
//digitalWrite(8, HIGH);
//digitalWrite(9, HIGH);
//delay(10);
//digitalWrite(9, LOW);
//digitalWrite(8, LOW);
//delay(10);
//digitalWrite(6, LOW);



}
