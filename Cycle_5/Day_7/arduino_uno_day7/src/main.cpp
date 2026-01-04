#include <Arduino.h>

// Forward declarations for functions in other modules
void initLED();
void updateLED();
void initLED2();
void updateLED2();
void initToggle();
void updateToggle();

void setup()
{
    // Initialize serial communication at 9600 baud
    Serial.begin(9600);
    Serial.println("Arduino Uno initialized!");

    // Initialize LED module
    initLED();
    initLED2();
    initToggle();
}

void loop()
{
    // Update LED blink state
    updateLED();
    updateLED2();
    updateToggle();
}
