void setup()
{
  Serial.begin(9600);  
}
int x;
void loop()
{
    x=analogRead(3);
    analogWrite(3,x/4);
        analogWrite(5,x/4);
        analogWrite(6,x/4);
        delay(10);
      }
