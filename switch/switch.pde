void setup()
{
  pinMode(7,INPUT);
  pinMode(11,OUTPUT);
  pinMode(13,OUTPUT);
  digitalWrite(7,HIGH);
}
boolean i=0;
void loop()
{
  
  
  if(digitalRead(7)==LOW) 
  {  
    i=!i; 
    digitalWrite(13,i);
    delay(100);
    while(digitalRead(7)==LOW); 
      
}
  delay(90);
}
