#include <Arduino.h>

#define LED_PIN 13
#define BUTTON_PIN 2
#define DEBOUNCE_MS 50

bool led_state = LOW;
bool lastButtonReading = HIGH;
unsigned long lastDebounceTime = 0;

void initToggle() {
    pinMode(LED_PIN, OUTPUT);
    pinMode(BUTTON_PIN, INPUT_PULLUP);
}

void updateToggle() {
    bool currentReading = digitalRead(BUTTON_PIN);

    if (currentReading != lastButtonReading) {
        lastDebounceTime = millis();
    }

    if (millis() - lastDebounceTime > DEBOUNCE_MS) {
        if (currentReading == LOW && lastButtonReading == HIGH) {
            led_state = !led_state;
            digitalWrite(LED_PIN, led_state);
        }
    }
}
