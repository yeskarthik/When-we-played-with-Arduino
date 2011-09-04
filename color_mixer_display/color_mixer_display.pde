#include <LiquidCrystal.h>
LiquidCrystal lcd(8,9,10,11,12,13);
void setup()
{
  pinMode(11,OUTPUT);
    pinMode(12,OUTPUT);
      pinMode(13,OUTPUT);
  lcd.begin(16,2);
  lcd.print("Karthik Arun Madhu ");
  for(int i=0;i<50;i++)
  {
    lcd.scrollDisplayLeft();
    delay(300);
  }
  pinMode(15,INPUT);

  Serial.begin(9600);
}
int key=0;
int r=0,g=0,b=0,i=0;

void remote()
{

  key = 0;
  while(pulseIn(15,LOW)<2200);

  for(int i=0;i<7;i++)
  {
    if(pulseIn(15,LOW)>1000)
      key+=1<<i;  
  }

  Serial.println(key+1);
  delay(100);

}

void display_rgb()
{
  lcd.noAutoscroll();
  lcd.clear();
  lcd.print("  R-");
  lcd.print(r);
  lcd.print(" G-");
  lcd.print(g);
  lcd.print(" B-");
  lcd.print(b);
}

void lcd_display()
{

  switch(key+1)
  {
  case 117 : 
    if(i==0)r++;
    else if(i==1)g++;
    else b++;
    action();
    display_rgb();

    break;
  case 118 : 
    if(i==0)r--;
    else if(i==1)g--;
    else b--;
    action();
    display_rgb();

    break;
  case 53 : 
    if(i!=0)i--;
    else i=2;

    break;
  case 52 : 
    if(i!=2)i++;
    else i=0;


    break;
  case 22 : 
    switch_off();
    break;

  }

}



void action()
{
  analogWrite(3,b);
  analogWrite(5,r);
  analogWrite(6,g);

}

void switch_off()
{
  lcd.clear();

  analogWrite(3,0);
  analogWrite(5,0);
  analogWrite(6,0);
  while(1){
    if(pulseIn(15,LOW)<2200){
      remote();
      if(key==21){
        
        
        action();
        display_rgb();
        break;
      }
    }
  }

}


void loop()
{

  remote();
  lcd_display();
  delay(300);
}

