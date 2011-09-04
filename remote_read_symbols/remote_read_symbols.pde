void setup()
{
 pinMode(15,INPUT);
 Serial.begin(9600);
}
char a[8];
void loop()
{
  if(pulseIn(15,LOW)>2200)
  {
    for(int i=0;i<7;i++)
    {
      if(pulseIn(15,LOW)>1000)
        a[i] = '1';
      else
        a[i] = '0';
    }
    a[7]='\0';
    delay(500);
    Serial.println(a);
  }
 }  


