import board

from kmk.kmk_keyboard import KMKKeyboard
from kmk.keys import KC
from kmk.scanners.keypad import KeysScanner

from kmk.modules.holdtap import HoldTap, HoldTapRepeat
from kmk.modules.layers import Layers
from kmk.modules.mouse_keys import MouseKeys
from kmk.modules.macros import Macros
from kmk.modules.tapdance import TapDance
from kmk.modules.sticky_keys import StickyKeys

from kmk.modules.split import Split, SplitSide, SplitType

split = Split(
    split_type=SplitType.UART,
    split_side=SplitSide.LEFT,
    split_target_left=True,
    data_pin=board.GP0,
    data_pin2=board.GP1,
    use_pio=True,
    uart_flip=True,
    split_flip=False,
)

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
layers = Layers()
holdtap = HoldTap()
holdtap.tap_time = 200
macros = Macros()
tapdance = TapDance()
tapdance.tap_time = 200
mousekeys = MouseKeys(
    max_speed = 15,
    acc_interval = 15,
    move_step = 1
)
sticky_keys = StickyKeys(release_after=10000)
keyboard.modules.append(split)
keyboard.modules.append(layers)
keyboard.modules.append(holdtap)
keyboard.modules.append(macros)
keyboard.modules.append(tapdance)
keyboard.modules.append(mousekeys)
keyboard.modules.append(sticky_keys)

keyboard.keymap = [
    [
        # LEFT HALF
        KC.Q, KC.W, KC.E, KC.R, KC.T,
        KC.A, KC.S, KC.D, KC.F, KC.G,
        KC.Z, KC.X, KC.C, KC.V, KC.B,
                        KC.HT(KC.ESC, KC.MO(2)), KC.HT(KC.TAB, KC.LSHIFT), KC.BSPC,
                        # KC.HT(KC.ESC, KC.LCTRL), KC.HT(KC.TAB, KC.LSHIFT), KC.HT(KC.BSPC, KC.LGUI, repeat=HoldTapRepeat.TAP),

        # RIGHT HALF (mirrored layout)
                        KC.Y, KC.U, KC.I, KC.O, KC.P,
                        KC.H, KC.J, KC.K, KC.L, KC.SCLN,
                        KC.N, KC.M, KC.COMM, KC.DOT, KC.SLSH,
        KC.SPACE, KC.HT(KC.ENTER, KC.MO(1)), KC.HT(KC.ESCAPE, KC.MO(3)),
    ],
    [
        KC.NO, KC.NO, KC.C, KC.NO, KC.NO,
        KC.LCTRL, KC.LSHIFT, KC.LALT, KC.LGUI, KC.CAPS,
        KC.NO, KC.NO, KC.NO, KC.NO, KC.NO,
                      KC.NO, KC.NO, KC.NO,

        KC.DOT, KC.N7, KC.N8, KC.N9, KC.N0,
        KC.PLUS, KC.N4, KC.N5, KC.N6, KC.ASTERISK,
        KC.MINUS, KC.N1, KC.N2, KC.N3, KC.SLSH,
        KC.NO, KC.NO, KC.NO,
    ],
    [
        KC.NO, KC.NO, KC.UP, KC.NO, KC.NO,
        KC.NO, KC.LEFT, KC.DOWN, KC.RIGHT, KC.NO,
        KC.NO, KC.NO, KC.NO, KC.NO, KC.NO,
        KC.NO, KC.NO, KC.NO,

        KC.NO, KC.MB_LMB, KC.MS_UP, KC.MB_RMB, KC.NO,
        KC.MW_UP, KC.MS_LT, KC.MS_DN, KC.MS_RT, KC.NO,
        KC.MW_DOWN, KC.NO, KC.NO, KC.NO, KC.NO,
                      KC.NO, KC.NO, KC.NO
    ],
    [
        KC.NO, KC.LABK, KC.RABK, KC.LCBR, KC.RCBR,
        KC.PERCENT, KC.CIRCUMFLEX, KC.AMPERSAND, KC.ASTERISK, KC.UNDERSCORE,
        KC.TILDE, KC.EXCLAIM, KC.AT, KC.HASH, KC.DOLLAR,
                      KC.NO, KC.LEFT_PAREN, KC.RIGHT_PAREN,

        KC.PLUS, KC.LBRC, KC.RBRC, KC.SCLN, KC.COLON,
        KC.MINUS, KC.LABK, KC.RABK, KC.QUOTE, KC.DQT,
        KC.EQUAL, KC.BSLS, KC.PIPE, KC.NO, KC.NO,
        KC.NO, KC.NO, KC.NO,
    ]
]

if __name__ == '__main__':
    keyboard.go()
