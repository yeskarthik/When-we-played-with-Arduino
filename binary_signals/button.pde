void setup()
{
  pinMode(7,INPUT);
  pinMode(11,OUTPUT);
  pinMode(13,OUTPUT);
  DigitalWrite(7,HIGH);
}

void loop()
{
  if(DigitalRead(7)==HIGH) DigitalWrite(13,HIGH);
  else DigitalWrite(11,HIGH);
  delay(1000);
}
