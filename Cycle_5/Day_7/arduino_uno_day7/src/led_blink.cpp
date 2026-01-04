#include <Arduino.h>

#define LED_PIN 13
#define BLINK_INTERVAL 500

unsigned long lastToggleTime = 0;
bool ledState = LOW;

// Initialize LED pin
void initLED() {
    pinMode(LED_PIN, OUTPUT);
}

// Non-blocking LED blink function
void updateLED() {
    unsigned long currentTime = millis();
    if (currentTime - lastToggleTime >= BLINK_INTERVAL) {
        lastToggleTime = currentTime;
        ledState = !ledState;
        digitalWrite(LED_PIN, ledState);
    }
}
