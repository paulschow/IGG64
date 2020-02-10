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

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(8, OUTPUT);
  //pinMode(7, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(2, OUTPUT);

  digitalWrite(8, LOW);
digitalWrite(6, LOW);
digitalWrite(3, LOW);
digitalWrite(2, LOW);



}

// the loop function runs over and over again forever
void loop() {

//digitalWrite(2, HIGH);
//digitalWrite(6, HIGH);
//digitalWrite(6, LOW);
//digitalWrite(2, LOW);

analogWrite(6, 163);
digitalWrite(2, HIGH);
delay(1000);
digitalWrite(2, LOW);
analogWrite(6, 0);


delay(1000);

analogWrite(3, 163);
digitalWrite(8, HIGH);
delay(1000);
digitalWrite(8, LOW);
analogWrite(3, 0);

delay(1000);

  
//  //delay(1000);
//  digitalWrite(8, HIGH);   // turn the LED on (HIGH is the voltage level)
  //digitalWrite(2, HIGH);
//  analogWrite(6, 163);
//  //delay(1);
//  analogWrite(6, 0);
//  analogWrite(3, 163);
//  delay(1);
//  analogWrite(3, 0);
  //analogWrite(3, 0);
  //digitalWrite(8, LOW);   // turn the LED on (HIGH is the voltage level)
//    delay(1);
//  digitalWrite(8, LOW);
  //delay(1000);
//
//  digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
//  //analogWrite(6, 163);
//  analogWrite(3, 163);
//  delay(10);
//  //analogWrite(6, 0);
//  analogWrite(3, 0);
//    delay(1);
//  digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
//  //digitalWrite(8, LOW);
//  //delay(1);




//    digitalWrite(8, HIGH);   // turn the LED on (HIGH is the voltage level)
//  //digitalWrite(2, HIGH);
//  analogWrite(3, 163);
//  //analogWrite(3, 163);
//  delay(10);
//  analogWrite(3, 0);
//  //analogWrite(3, 0);
//  //digitalWrite(8, LOW);   // turn the LED on (HIGH is the voltage level)
//    delay(1);
//  digitalWrite(8, LOW);
//  //delay(1);
//
//  digitalWrite(2, HIGH);   // turn the LED on (HIGH is the voltage level)
//  //analogWrite(6, 163);
//  analogWrite(6, 163);
//  delay(10);
//  //analogWrite(6, 0);
//  analogWrite(6, 0);
//    delay(1);
//  digitalWrite(2, LOW);   // turn the LED on (HIGH is the voltage level)
//  //delay(50);


}
