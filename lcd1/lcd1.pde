#include <LiquidCrystal.h>
void setup()
{
  LiquidCrystal lcd(8,9,10,11,12,13);
  lcd.begin(16,2);
  lcd.print("Karthik ");
}

void loop()
{
}
