
void setup()
{
  pinMode(13,OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(7,INPUT);
  digitalWrite(7,HIGH);  
}
int i=0;

void loop()
{
  
  if(i==8)i=0;
  if(digitalRead(7)==LOW)
  {
    digitalWrite(11,((i/4)%2));

    digitalWrite(12,((i/2)%2));

    digitalWrite(13,(i%2));
    while(digitalRead(7)==LOW);
    delay(100);

    i++;
  }
}

