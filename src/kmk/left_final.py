
import board

from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners.keypad import KeysScanner

from kmk.modules.split import Split, SplitSide, SplitType

# Split configuration (left half is main)
split = Split(
    split_type=SplitType.UART,
    split_side=SplitSide.LEFT,         # This is the LEFT (main) side
    split_target_left=True,           # This is the target (main)
    data_pin=board.GP0,
    data_pin2=board.GP1,
    use_pio=True,
    uart_flip=True,
    split_flip=False,
)

# Define your key matrix pins (only for the left half!)
_KEY_CFG = [
    board.GP2,  board.GP3,  board.GP4, board.GP5, board.GP19,
    board.GP6,  board.GP7,  board.GP8, board.GP9, board.GP18,
    board.GP10, board.GP11, board.GP12, board.GP13, board.GP17,
    board.GP16, board.GP15, board.GP14
]

class MyKeyboard(KMKKeyboard):
    def __init__(self):
        super().__init__()
        self.matrix = KeysScanner(
            pins=_KEY_CFG,
            value_when_pressed=False,
            pull=True,
        )
        self.coord_mapping = [
         0,  1,  2,  3,  4,
         5,  6,  7,  8,  9,
        10, 11, 12, 13, 14,
                15, 16, 17,
        18, 19, 20, 21, 22,
        23, 24, 25, 26, 27,
        28, 29, 30, 31, 32,
        33, 34, 35
        ]

keyboard = MyKeyboard()
keyboard.modules.append(split)

# Combined keymap: left + right half (even though only left side defines it)
keyboard.keymap = [
    [
        # LEFT HALF
                        KC.Q, KC.W, KC.E, KC.R, KC.T,
                        KC.A, KC.S, KC.D, KC.F, KC.G,
                        KC.Z, KC.X, KC.C, KC.V, KC.B,
        KC.ENTER, KC.SPACE, KC.BSPC,

        # RIGHT HALF (mirrored layout)
        KC.Y, KC.U, KC.I, KC.O, KC.P,
        KC.H, KC.J, KC.K, KC.L, KC.SCLN,
        KC.N, KC.M, KC.COMM, KC.DOT, KC.SLSH,
                             KC.LEFT, KC.DOWN, KC.RIGHT,
    ]
]

if __name__ == '__main__':
    keyboard.go()
