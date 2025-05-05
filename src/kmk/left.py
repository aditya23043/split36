import board

from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners.keypad import KeysScanner

_KEY_CFG = [
    board.GP2,  board.GP3,  board.GP4, board.GP5, board.GP19,
    board.GP6,  board.GP7,  board.GP8, board.GP9, board.GP18,
    board.GP10,  board.GP11,  board.GP12,  board.GP13, board.GP17,
    board.GP16,  board.GP15,  board.GP14
]

class MyKeyboard(KMKKeyboard):
    def __init__(self):
        super().__init__()
        self.matrix = KeysScanner(
            pins=_KEY_CFG,
            value_when_pressed=False,
            pull=True,  
        )

keyboard = MyKeyboard()

keyboard.keymap = [
    [
        KC.Q, KC.W, KC.E, KC.R, KC.T,
        KC.A, KC.S, KC.D, KC.F, KC.G,
        KC.Z, KC.X, KC.C, KC.V, KC.B,
        KC.ENTER, KC.SPACE, KC.BSLASH
    ],
]

if __name__ == '__main__':
    keyboard.go()
