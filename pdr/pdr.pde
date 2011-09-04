void setup()
{
  Serial.begin(9600);
  Serial.println("Hi");
}
int x;
void loop()
{
  x=analogRead(3);
  if(x>600)
  {  Serial.println("Very Dark");
    digitalWrite(11,HIGH);
    digitalWrite(12,LOW);
    digitalWrite(13,LOW);
  }  
  else if(x>300)
  {
    Serial.println("Dark");
    digitalWrite(12,HIGH);
    digitalWrite(13,LOW);
  }
  else
  {
    Serial.println("Bright");
    digitalWrite(13,HIGH);
  }
  delay(200);
}




