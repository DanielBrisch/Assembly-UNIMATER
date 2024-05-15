#include <Arduino.h>
const int relay = 12;
const int button = 4

    int relayState = LOW;
int buttonState = LOW;
int lasButtonState = LOW;

void setup()
{
    pinMode(relay, OUTPUT);
    pinMode(button, INPUT);
}

void loop()
{
    buttonState = digitalRead(button);

    if (buttonState == HIGH && lasButtonState == LOW)
    {
        relayState = !relayState;
        digitalWrite(relay, relayState);
    }
    lasButtonState = buttonState;
}
