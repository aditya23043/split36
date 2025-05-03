#include <Keyboard.h>

int pins[] = {
  2, 3, 4, 5, 19,
  6, 7, 8, 9, 18,
  10, 11, 12, 13, 17,
          16, 15, 14
};

const int num_pins = sizeof(pins) / sizeof(pins[0]);

int mapping[] = {
  'q', 'w', 'e', 'r', 't',
  'a', 's', 'd', 'f', 'g',
  'z', 'x', 'c', 'v', 'b',
            KEY_RETURN, KEY_BACKSPACE, ' '
};

bool key_down[num_pins];
unsigned long last_press_time[num_pins];
const unsigned long repeat_delay = 1;
const unsigned long initial_delay = 250;

void setup() {
  for (int i = 0; i < num_pins; i++) {
    pinMode(pins[i], INPUT_PULLUP);
    key_down[i] = false;
    last_press_time[i] = 0;
  }
}


void loop() {
  for (int i = 0; i < num_pins; i++) {
    if (digitalRead(pins[i]) == LOW) {
      if (!key_down[i]) {
        Keyboard.write(mapping[i]);
        key_down[i] = true;
        last_press_time[i] = millis();
      } else {
        unsigned long current_time = millis();
        if (current_time - last_press_time[i] > initial_delay) {
          Keyboard.write(mapping[i]);
          last_press_time[i] = current_time;
        }
      }
    } else {
      key_down[i] = false;
    }
  }
  delay(10);
}

// arduino-cli compile --fqbn rp2040:rp2040:rpipicow sketch_mar31a.ino
// arduino-cli upload -p /dev/ttyACM0 --fqbn rp2040:rp2040:rpipicow sketch_mar31a.ino
