#include <Arduino.h>
const int button = 2;
int count = 0;
int lsValores[5] = {0, 63, 127, 191, 255};

void setup()
{
    pinMode(button, INPUT);
}
void loop()
{
    if (digitalRead(button))
    {
        count++;
        analogWrite(9, lsValores[count]);
        digitalRead(!button);
        if (count == 6)
        {
            count = 0;
        }
    }
}
