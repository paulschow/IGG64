void setup() {
  // put your setup code here, to run once:
//  pinMode(10, OUTPUT);
//  pinMode(7, OUTPUT);
//  pinMode(6, OUTPUT);
//  pinMode(9, OUTPUT);
  pinMode(2, OUTPUT); // anode
  pinMode(3, OUTPUT); // anode
  pinMode(4, OUTPUT); // rest cathode
  pinMode(5, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(13, OUTPUT);
  pinMode(A1, OUTPUT);
  pinMode(A2, OUTPUT);
  pinMode(A3, OUTPUT);
  pinMode(A4, OUTPUT);
  pinMode(A5, OUTPUT);

  digitalWrite(A1, HIGH);
  digitalWrite(A2, HIGH);
  digitalWrite(A3, HIGH);
  digitalWrite(A4, HIGH);
  digitalWrite(A5, HIGH);

}

float delaytime = 1000;

//int HIGH = 5;
int brightness = 0;

void loop() {



  //digitalWrite(2, HIGH);
  
    digitalWrite(4, HIGH);
    delayMicroseconds(delaytime);
    digitalWrite(4, LOW);
    
    digitalWrite(5, HIGH);
    delayMicroseconds(delaytime);
    digitalWrite(5, LOW);
    digitalWrite(6, HIGH);
    delayMicroseconds(delaytime);
    digitalWrite(6, LOW);
    digitalWrite(7, HIGH);
    delayMicroseconds(delaytime);
    digitalWrite(7, LOW);
    digitalWrite(8, HIGH);
    delayMicroseconds(delaytime);
    digitalWrite(8, LOW);
    digitalWrite(9, HIGH);
    delayMicroseconds(delaytime);
    digitalWrite(9, LOW);
    digitalWrite(10, HIGH);
    delayMicroseconds(delaytime);
    digitalWrite(10, LOW);
    digitalWrite(11, HIGH);
    delayMicroseconds(delaytime);
    digitalWrite(11, LOW);
    digitalWrite(12, HIGH);
    delayMicroseconds(delaytime);
    digitalWrite(12, LOW);
    digitalWrite(13, HIGH);
    delayMicroseconds(delaytime);
    digitalWrite(13, LOW);
    
  //digitalWrite(2, LOW);


//  digitalWrite(A1, LOW);
//    digitalWrite(4, HIGH);
//    delay(delaytime);
//    digitalWrite(4, LOW);
//    
//    digitalWrite(5, HIGH);
//    delay(delaytime);
//    digitalWrite(5, LOW);
//    digitalWrite(6, HIGH);
//    delay(delaytime);
//    digitalWrite(6, LOW);
//    digitalWrite(7, HIGH);
//    delay(delaytime);
//    digitalWrite(7, LOW);
//    digitalWrite(8, HIGH);
//    delay(delaytime);
//    digitalWrite(8, LOW);
//    digitalWrite(9, HIGH);
//    delay(delaytime);
//    digitalWrite(9, LOW);
//    digitalWrite(10, HIGH);
//    delay(delaytime);
//    digitalWrite(10, LOW);
//    digitalWrite(11, HIGH);
//    delay(delaytime);
//    digitalWrite(11, LOW);
//    digitalWrite(12, HIGH);
//    delay(delaytime);
//    digitalWrite(12, LOW);
//    digitalWrite(13, HIGH);
//    delay(delaytime);
//    digitalWrite(13, LOW);
//    
//  digitalWrite(A1, HIGH);





// this code worked
//    digitalWrite(7, HIGH);
//  digitalWrite(9, HIGH);
// delay(delaytime);
//  digitalWrite(9, 0);
//  digitalWrite(7, LOW);
//  
//  digitalWrite(7, HIGH);
//  digitalWrite(10, HIGH);
//  delay(delaytime);
//  digitalWrite(10, 0);
//  digitalWrite(7, LOW);
//  
//  digitalWrite(6, HIGH);
//  digitalWrite(10, HIGH);
//  delay(delaytime);
//  digitalWrite(10, 0);
//  digitalWrite(6, LOW);
//  
//  
//  digitalWrite(6, HIGH);
//  digitalWrite(9, HIGH);
//  delay(delaytime);
//  digitalWrite(9, 0);
//  digitalWrite(6, LOW);
  // put your main code here, to run repeatedly:

  //for (int HIGH = 0 ; HIGH <= 255; HIGH += 1) {
//digitalWrite(7, HIGH);
//digitalWrite(9, brightness);
//delay(delaytime);
//digitalWrite(9, 0);
////digitalWrite(10, HIGH);
//////delay(delaytime);
////digitalWrite(10, 0);
//digitalWrite(7, LOW);
//
// brightness = brightness + HIGH;
//
//   if (brightness <= 0 || HIGH >= 255) {
//    HIGH = -HIGH;
//  }

//digitalWrite(7, HIGH);
//digitalWrite(10, HIGH);
////delay(delaytime);
//digitalWrite(10, 0);
//digitalWrite(7, LOW);

//digitalWrite(6, HIGH);
//digitalWrite(10, HIGH);
////delay(delaytime);
//digitalWrite(10, 0);
//digitalWrite(9, HIGH);
////delay(delaytime);
//digitalWrite(9, 0);
//digitalWrite(6, LOW);
  //}


//  for (int HIGH = 255 ; HIGH >= 0; HIGH -= 1) {
//
//    digitalWrite(7, HIGH);
//digitalWrite(9, HIGH);
////delay(delaytime);
//digitalWrite(9, 0);
////digitalWrite(10, HIGH);
//////delay(delaytime);
////digitalWrite(10, 0);
//digitalWrite(7, LOW);

//digitalWrite(7, HIGH);
//digitalWrite(10, HIGH);
////delay(delaytime);
//digitalWrite(10, 0);
//digitalWrite(7, LOW);

//digitalWrite(6, HIGH);
//digitalWrite(10, HIGH);
////delay(delaytime);
//digitalWrite(10, 0);
//digitalWrite(9, HIGH);
////delay(delaytime);
//digitalWrite(9, 0);
//digitalWrite(6, LOW);
  //}
}
