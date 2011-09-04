void setup()
{
 pinMode(15,INPUT);
 pinMode(13,OUTPUT);
 pinMode(11,OUTPUT);
 pinMode(12,OUTPUT);
 Serial.begin(9600);
}
int key=0;

void remote()
{
  
  key = 0;
  while(pulseIn(15,LOW)<2200);
  
  digitalWrite(11,LOW);
  digitalWrite(12,LOW);
  digitalWrite(13,LOW);
  
    for(int i=0;i<7;i++)
    {
      if(pulseIn(15,LOW)>1000)
        key+=1<<i;  
    }
    
    Serial.println(key+1);
    switch(key+1)
    {
      case 1 : digitalWrite(11,HIGH);
               break;
      case 2 : digitalWrite(12,HIGH);
               break;
      case 3 : digitalWrite(13,HIGH);
               break;
                      
      delay(200);
  }
}
void loop()
{
  remote();
}
