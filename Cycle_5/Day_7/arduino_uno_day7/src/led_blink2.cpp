#include <Arduino.h>

#define LED1_PIN 13
#define LED2_PIN 12

#define LED1_INTERVAL 300
#define LED2_INTERVAL 700

unsigned long lastToggleTime1 = 0;
unsigned long lastToggleTime2 = 0;

bool ledState1 = LOW;
bool ledState2 = LOW;

void initLED2() {
    pinMode(LED1_PIN, OUTPUT);
    pinMode(LED2_PIN, OUTPUT);
}

void updateLED2() {
    unsigned long currentTime = millis();

    if (currentTime - lastToggleTime1 >= LED1_INTERVAL) {
        lastToggleTime1 = currentTime;
        ledState1 = !ledState1;
        digitalWrite(LED1_PIN, ledState1);
    }

    if (currentTime - lastToggleTime2 >= LED2_INTERVAL) {
        lastToggleTime2 = currentTime;
        ledState2 = !ledState2;
        digitalWrite(LED2_PIN, ledState2);
    }
}
