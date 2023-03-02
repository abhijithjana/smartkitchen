
int smokeS = A1;
int data = 0; 
 
 
#include <cvzone.h>
SerialData serialData;
int sendVals[2]; 
void setup() {
 
 
  randomSeed(analogRead(0));
  
  serialData.begin(9600);

  pinMode(smokeS, INPUT); 
   
}
 
void loop() {

  int data = analogRead(smokeS); 


  sendVals[0]=data;
  serialData.Send(sendVals);
  

}
 
 
