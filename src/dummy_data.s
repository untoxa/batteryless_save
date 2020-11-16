fill_count = (32 * 32) / 6 + 1

.area _CODE_12

.rept fill_count
	.db 'S', 'R', 'A', 'M', '0', ' '
.endm

.rept 0x2000 - (fill_count * 6)
	.db 0xff
.endm

.rept fill_count
	.db 'S', 'R', 'A', 'M', '1', ' '
.endm

.area _CODE_13

.rept fill_count
	.db 'S', 'R', 'A', 'M', '2', ' '
.endm

.rept 0x2000 - (fill_count * 6)
	.db 0xff
.endm

.rept fill_count
	.db 'S', 'R', 'A', 'M', '3', ' '
.endm

.area _CODE

_font_data::
	.db    0b00000000
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
; Character: !
        .db    0b00000000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00000000 
        .db    0b00010000 
        .db    0b00000000 
; Character: "
        .db    0b00000000 
        .db    0b00100100 
        .db    0b00100100 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
; Character: #
        .db    0b00000000 
        .db    0b00100100 
        .db    0b01111110 
        .db    0b00100100 
        .db    0b00100100 
        .db    0b01111110 
        .db    0b00100100 
        .db    0b00000000 
; Character: $
        .db    0b00000000 
        .db    0b00001000 
        .db    0b00111110 
        .db    0b00101000 
        .db    0b00111110 
        .db    0b00001010 
        .db    0b00111110 
        .db    0b00001000 
; Character: %
        .db    0b00000000 
        .db    0b01100010 
        .db    0b01100100 
        .db    0b00001000 
        .db    0b00010000 
        .db    0b00100110 
        .db    0b01000110 
        .db    0b00000000 
; Character: &
        .db    0b00000000 
        .db    0b00010000 
        .db    0b00101000 
        .db    0b00010000 
        .db    0b00101010 
        .db    0b01000100 
        .db    0b00111010 
        .db    0b00000000 
; Character: '
        .db    0b00000000 
        .db    0b00001000 
        .db    0b00010000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
; Character: (
        .db    0b00000000 
        .db    0b00000100 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00000100 
        .db    0b00000000 
; Character: )
        .db    0b00000000 
        .db    0b00100000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00100000 
        .db    0b00000000 
; Character: *
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00010100 
        .db    0b00001000 
        .db    0b00111110 
        .db    0b00001000 
        .db    0b00010100 
        .db    0b00000000 
; Character: +
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00111110 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00000000 
; Character: ,
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00010000 
; Character: -
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00111110 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
; Character: .
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00011000 
        .db    0b00011000 
        .db    0b00000000 
; Character: /
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000010 
        .db    0b00000100 
        .db    0b00001000 
        .db    0b00010000 
        .db    0b00100000 
        .db    0b00000000 
; Character: 0
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000110 
        .db    0b01001010 
        .db    0b01010010 
        .db    0b01100010 
        .db    0b00111100 
        .db    0b00000000 
; Character: 1
        .db    0b00000000 
        .db    0b00011000 
        .db    0b00101000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00111110 
        .db    0b00000000 
; Character: 2
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000010 
        .db    0b00000010 
        .db    0b00111100 
        .db    0b01000000 
        .db    0b01111110 
        .db    0b00000000 
; Character: 3
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000010 
        .db    0b00001100 
        .db    0b00000010 
        .db    0b01000010 
        .db    0b00111100 
        .db    0b00000000 
; Character: 4
        .db    0b00000000 
        .db    0b00001000 
        .db    0b00011000 
        .db    0b00101000 
        .db    0b01001000 
        .db    0b01111110 
        .db    0b00001000 
        .db    0b00000000 
; Character: 5
        .db    0b00000000 
        .db    0b01111110 
        .db    0b01000000 
        .db    0b01111100 
        .db    0b00000010 
        .db    0b01000010 
        .db    0b00111100 
        .db    0b00000000 
; Character: 6
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000000 
        .db    0b01111100 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b00111100 
        .db    0b00000000 
; Character: 7
        .db    0b00000000 
        .db    0b01111110 
        .db    0b00000010 
        .db    0b00000100 
        .db    0b00001000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00000000 
; Character: 8
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000010 
        .db    0b00111100 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b00111100 
        .db    0b00000000 
; Character: 9
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b00111110 
        .db    0b00000010 
        .db    0b00111100 
        .db    0b00000000 
; Character: :
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00010000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00010000 
        .db    0b00000000 
; Character: ;
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00010000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00100000 
; Character: <
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000100 
        .db    0b00001000 
        .db    0b00010000 
        .db    0b00001000 
        .db    0b00000100 
        .db    0b00000000 
; Character: =
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00111110 
        .db    0b00000000 
        .db    0b00111110 
        .db    0b00000000 
        .db    0b00000000 
; Character: >
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00010000 
        .db    0b00001000 
        .db    0b00000100 
        .db    0b00001000 
        .db    0b00010000 
        .db    0b00000000 
; Character: ?
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000010 
        .db    0b00000100 
        .db    0b00001000 
        .db    0b00000000 
        .db    0b00001000 
        .db    0b00000000 
; Character: @
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01001010 
        .db    0b01010110 
        .db    0b01011110 
        .db    0b01000000 
        .db    0b00111100 
        .db    0b00000000 
; Character: A
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01111110 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b00000000 
; Character: B
        .db    0b00000000 
        .db    0b01111100 
        .db    0b01000010 
        .db    0b01111100 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01111100 
        .db    0b00000000 
; Character: C
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000010 
        .db    0b01000000 
        .db    0b01000000 
        .db    0b01000010 
        .db    0b00111100 
        .db    0b00000000 
; Character: D
        .db    0b00000000 
        .db    0b01111000 
        .db    0b01000100 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01000100 
        .db    0b01111000 
        .db    0b00000000 
; Character: E
        .db    0b00000000 
        .db    0b01111110 
        .db    0b01000000 
        .db    0b01111100 
        .db    0b01000000 
        .db    0b01000000 
        .db    0b01111110 
        .db    0b00000000 
; Character: F
        .db    0b00000000 
        .db    0b01111110 
        .db    0b01000000 
        .db    0b01111100 
        .db    0b01000000 
        .db    0b01000000 
        .db    0b01000000 
        .db    0b00000000 
; Character: G
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000010 
        .db    0b01000000 
        .db    0b01001110 
        .db    0b01000010 
        .db    0b00111100 
        .db    0b00000000 
; Character: H
        .db    0b00000000 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01111110 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b00000000 
; Character: I
        .db    0b00000000 
        .db    0b00111110 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00111110 
        .db    0b00000000 
; Character: J
        .db    0b00000000 
        .db    0b00000010 
        .db    0b00000010 
        .db    0b00000010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b00111100 
        .db    0b00000000 
; Character: K
        .db    0b00000000 
        .db    0b01000100 
        .db    0b01001000 
        .db    0b01110000 
        .db    0b01001000 
        .db    0b01000100 
        .db    0b01000010 
        .db    0b00000000 
; Character: L
        .db    0b00000000 
        .db    0b01000000 
        .db    0b01000000 
        .db    0b01000000 
        .db    0b01000000 
        .db    0b01000000 
        .db    0b01111110 
        .db    0b00000000 
; Character: M
        .db    0b00000000 
        .db    0b01000010 
        .db    0b01100110 
        .db    0b01011010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b00000000 
; Character: N
        .db    0b00000000 
        .db    0b01000010 
        .db    0b01100010 
        .db    0b01010010 
        .db    0b01001010 
        .db    0b01000110 
        .db    0b01000010 
        .db    0b00000000 
; Character: O
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b00111100 
        .db    0b00000000 
; Character: P
        .db    0b00000000 
        .db    0b01111100 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01111100 
        .db    0b01000000 
        .db    0b01000000 
        .db    0b00000000 
; Character: Q
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01010010 
        .db    0b01001010 
        .db    0b00111100 
        .db    0b00000000 
; Character: R
        .db    0b00000000 
        .db    0b01111100 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01111100 
        .db    0b01000100 
        .db    0b01000010 
        .db    0b00000000 
; Character: S
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000000 
        .db    0b00111100 
        .db    0b00000010 
        .db    0b01000010 
        .db    0b00111100 
        .db    0b00000000 
; Character: T
        .db    0b00000000 
        .db    0b11111110 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00000000 
; Character: U
        .db    0b00000000 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b00111100 
        .db    0b00000000 
; Character: V
        .db    0b00000000 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b00100100 
        .db    0b00011000 
        .db    0b00000000 
; Character: W
        .db    0b00000000 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01000010 
        .db    0b01011010 
        .db    0b00100100 
        .db    0b00000000 
; Character: X
        .db    0b00000000 
        .db    0b01000010 
        .db    0b00100100 
        .db    0b00011000 
        .db    0b00011000 
        .db    0b00100100 
        .db    0b01000010 
        .db    0b00000000 
; Character: Y
        .db    0b00000000 
        .db    0b10000010 
        .db    0b01000100 
        .db    0b00101000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00000000 
; Character: Z
        .db    0b00000000 
        .db    0b01111110 
        .db    0b00000100 
        .db    0b00001000 
        .db    0b00010000 
        .db    0b00100000 
        .db    0b01111110 
        .db    0b00000000 
; Character: [
        .db    0b00000000 
        .db    0b00001110 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001110 
        .db    0b00000000 
; Character: \
        .db    0b00000000 
        .db    0b00000000 
        .db    0b01000000 
        .db    0b00100000 
        .db    0b00010000 
        .db    0b00001000 
        .db    0b00000100 
        .db    0b00000000 
; Character: ]
        .db    0b00000000 
        .db    0b01110000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b01110000 
        .db    0b00000000 
; Character: ^
        .db    0b00000000 
        .db    0b00010000 
        .db    0b00111000 
        .db    0b01010100 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00000000 
; Character: _
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b11111111 
; Character: Pound
        .db    0b00000000 
        .db    0b00011100 
        .db    0b00100010 
        .db    0b01111000 
        .db    0b00100000 
        .db    0b00100000 
        .db    0b01111110 
        .db    0b00000000 
; Character: a
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00111000 
        .db    0b00000100 
        .db    0b00111100 
        .db    0b01000100 
        .db    0b00111100 
        .db    0b00000000 
; Character: b
        .db    0b00000000 
        .db    0b00100000 
        .db    0b00100000 
        .db    0b00111100 
        .db    0b00100010 
        .db    0b00100010 
        .db    0b00111100 
        .db    0b00000000 
; Character: c
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00011100 
        .db    0b00100000 
        .db    0b00100000 
        .db    0b00100000 
        .db    0b00011100 
        .db    0b00000000 
; Character: d
        .db    0b00000000 
        .db    0b00000100 
        .db    0b00000100 
        .db    0b00111100 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b00111100 
        .db    0b00000000 
; Character: e
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00111000 
        .db    0b01000100 
        .db    0b01111000 
        .db    0b01000000 
        .db    0b00111100 
        .db    0b00000000 
; Character: f
        .db    0b00000000 
        .db    0b00001100 
        .db    0b00010000 
        .db    0b00011000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00000000 
; Character: g
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b00111100 
        .db    0b00000100 
        .db    0b00111000 
; Character: h
        .db    0b00000000 
        .db    0b01000000 
        .db    0b01000000 
        .db    0b01111000 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b00000000 
; Character: i
        .db    0b00000000 
        .db    0b00010000 
        .db    0b00000000 
        .db    0b00110000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00111000 
        .db    0b00000000 
; Character: j
        .db    0b00000000 
        .db    0b00000100 
        .db    0b00000000 
        .db    0b00000100 
        .db    0b00000100 
        .db    0b00000100 
        .db    0b00100100 
        .db    0b00011000 
; Character: k
        .db    0b00000000 
        .db    0b00100000 
        .db    0b00101000 
        .db    0b00110000 
        .db    0b00110000 
        .db    0b00101000 
        .db    0b00100100 
        .db    0b00000000 
; Character: l
        .db    0b00000000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00001100 
        .db    0b00000000 
; Character: m
        .db    0b00000000 
        .db    0b00000000 
        .db    0b01101000 
        .db    0b01010100 
        .db    0b01010100 
        .db    0b01010100 
        .db    0b01010100 
        .db    0b00000000 
; Character: n
        .db    0b00000000 
        .db    0b00000000 
        .db    0b01111000 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b00000000 
; Character: o
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00111000 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b00111000 
        .db    0b00000000 
; Character: p
        .db    0b00000000 
        .db    0b00000000 
        .db    0b01111000 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b01111000 
        .db    0b01000000 
        .db    0b01000000 
; Character: q
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00111100 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b00111100 
        .db    0b00000100 
        .db    0b00000110 
; Character: r
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00011100 
        .db    0b00100000 
        .db    0b00100000 
        .db    0b00100000 
        .db    0b00100000 
        .db    0b00000000 
; Character: s
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00111000 
        .db    0b01000000 
        .db    0b00111000 
        .db    0b00000100 
        .db    0b01111000 
        .db    0b00000000 
; Character: t
        .db    0b00000000 
        .db    0b00010000 
        .db    0b00111000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b00001100 
        .db    0b00000000 
; Character: u
        .db    0b00000000 
        .db    0b00000000 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b00111000 
        .db    0b00000000 
; Character: v
        .db    0b00000000 
        .db    0b00000000 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b00101000 
        .db    0b00101000 
        .db    0b00010000 
        .db    0b00000000 
; Character: w
        .db    0b00000000 
        .db    0b00000000 
        .db    0b01000100 
        .db    0b01010100 
        .db    0b01010100 
        .db    0b01010100 
        .db    0b00101000 
        .db    0b00000000 
; Character: x
        .db    0b00000000 
        .db    0b00000000 
        .db    0b01000100 
        .db    0b00101000 
        .db    0b00010000 
        .db    0b00101000 
        .db    0b01000100 
        .db    0b00000000 
; Character: y
        .db    0b00000000 
        .db    0b00000000 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b01000100 
        .db    0b00111100 
        .db    0b00000100 
        .db    0b00111000 
; Character: z
        .db    0b00000000 
        .db    0b00000000 
        .db    0b01111100 
        .db    0b00001000 
        .db    0b00010000 
        .db    0b00100000 
        .db    0b01111100 
        .db    0b00000000 
; Character: {
        .db    0b00000000 
        .db    0b00001110 
        .db    0b00001000 
        .db    0b00110000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001110 
        .db    0b00000000 
; Character: |
        .db    0b00000000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00001000 
        .db    0b00000000 
; Character: }
        .db    0b00000000 
        .db    0b01110000 
        .db    0b00010000 
        .db    0b00001100 
        .db    0b00010000 
        .db    0b00010000 
        .db    0b01110000 
        .db    0b00000000 
; Character: ~
        .db    0b00000000 
        .db    0b00010100 
        .db    0b00101000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
        .db    0b00000000 
; Character: Copyright
        .db    0b00111100 
        .db    0b01000010 
        .db    0b10011001 
        .db    0b10100001 
        .db    0b10100001 
        .db    0b10011001 
        .db    0b01000010 
        .db    0b00111100 
_end_font_data:

.globl _font_len
_font_len = (_end_font_data - _font_data) >> 3 
