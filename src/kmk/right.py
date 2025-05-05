import board

from kmk.kmk_keyboard import KMKKeyboard
from kmk.modules.split import Split, SplitSide, SplitType
from kmk.scanners.keypad import KeysScanner
# Configure the Split module
split = Split(
    split_type=SplitType.UART,
    split_side=SplitSide.RIGHT,       # This is the RIGHT side
    split_target_left=True,           # Left side is the main (USB connected)
    data_pin=board.GP0,
    data_pin2=board.GP1,
    use_pio=True,
    uart_flip=True,
)

_KEY_CFG = [
    board.GP19,  board.GP5,  board.GP4, board.GP3, board.GP2,
    board.GP18,  board.GP9,  board.GP8, board.GP7, board.GP6,
    board.GP17,  board.GP13,  board.GP12,  board.GP11, board.GP10,
    board.GP14,  board.GP15,  board.GP16
]

# Basic keyboard class with no matrix scanner or keymap
class MyKeyboard(KMKKeyboard):
    def __init__(self):
        super().__init__()
        self.matrix = KeysScanner(
            pins=_KEY_CFG,
            value_when_pressed=False,
            pull=True,
        )
        self.coord_mapping = [
         0,  1,  2,  3,  4,   22, 21, 20, 19, 18,
         5,  6,  7,  8,  9,   27, 26, 25, 24, 23,
        10, 11, 12, 13, 14,   32, 31, 30, 29, 28,
                15, 16, 17,   34, 33
        ]
        # No matrix or keymap here — handled by the left half

keyboard = MyKeyboard()
keyboard.modules.append(split)

keyboard.keymap = [[]]  # Minimal dummy keymap

if __name__ == '__main__':
    keyboard.go()
