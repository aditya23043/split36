#include <Arduino.h>
#include <USBMouseKeyboard.h>

USBMouseKeyboard key_mouse;
void setup() {
  pinMode(25, OUTPUT);
  digitalWrite(25, HIGH);
  pinMode(2, INPUT_PULLUP);
}

bool temp = false;

void loop() {
  if (digitalRead(2) == LOW) {
    if (!temp) {
      key_mouse.key_code('A');
      temp = true;
    }
  } else {
    temp = false;
  }

  delay(10);
}
