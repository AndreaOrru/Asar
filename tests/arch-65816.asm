;@00 00 00 00     01 00  02 00 02 00     03 00  04 00     05 00  06 00  07 00  08  09 00 09 00 00  0A  0B  0C 00 00     0D 00 00  0E 00 00  0F 00 00 00
;@10 21           11 00  12 00           13 00  14 00     15 00  16 00  17 00  18  19 00 00        1A  1B  1C 00 00     1D 00 00  1E 00 00  1F 00 00 00
;@20 00 00        21 00  22 00 00 00     23 00  24 00     25 00  26 00  27 00  28  29 00 29 00 00  2A  2B  2C 00 00     2D 00 00  2E 00 00  2F 00 00 00
;@30 21           31 00  32 00           33 00  34 00     35 00  36 00  37 00  38  39 00 00        3A  3B  3C 00 00     3D 00 00  3E 00 00  3F 00 00 00
;@40              41 00  42 00 42 00     43 00  44 00 00  45 00  46 00  47 00  48  49 00 49 00 00  4A  4B  4C 00 00     4D 00 00  4E 00 00  4F 00 00 00
;@50 23           51 00  52 00           53 00  54 00 00  55 00  56 00  57 00  58  59 00 00        5A  5B  5C 00 00 00  5D 00 00  5E 00 00  5F 00 00 00
;@60              61 00  62 00 00        63 00  64 00     65 00  66 00  67 00  68  69 00 69 00 00  6A  6B  6C 00 00     6D 00 00  6E 00 00  6F 00 00 00
;@70 21           71 00  72 00           73 00  74 00     75 00  76 00  77 00  78  79 00 00        7A  7B  7C 00 00     7D 00 00  7E 00 00  7F 00 00 00
;@80 24           81 00  82 1F 00        83 00  84 00     85 00  86 00  87 00  88  89 00 89 00 00  8A  8B  8C 00 00     8D 00 00  8E 00 00  8F 00 00 00
;@90 21           91 00  92 00           93 00  94 00     95 00  96 00  97 00  98  99 00 00        9A  9B  9C 00 00     9D 00 00  9E 00 00  9F 00 00 00
;@A0 00 A0 00 00  A1 00  A2 00 A2 00 00  A3 00  A4 00     A5 00  A6 00  A7 00  A8  A9 00 A9 00 00  AA  AB  AC 00 00     AD 00 00  AE 00 00  AF 00 00 00
;@B0 21           B1 00  B2 00           B3 00  B4 00     B5 00  B6 00  B7 00  B8  B9 00 00        BA  BB  BC 00 00     BD 00 00  BE 00 00  BF 00 00 00
;@C0 00 C0 00 00  C1 00  C2 00           C3 00  C4 00     C5 00  C6 00  C7 00  C8  C9 00 C9 00 00  CA  CB  CC 00 00     CD 00 00  CE 00 00  CF 00 00 00
;@D0 21           D1 00  D2 00           D3 00  D4 00     D5 00  D6 00  D7 00  D8  D9 00 00        DA  DB  DC 00 00     DD 00 00  DE 00 00  DF 00 00 00
;@E0 00 E0 00 00  E1 00  E2 00           E3 00  E4 00     E5 00  E6 00  E7 00  E8  E9 00 E9 00 00  EA  EB  EC 00 00     ED 00 00  EE 00 00  EF 00 00 00
;@F0 22           F1 00  F2 00           F3 00  F4 00 00  F5 00  F6 00  F7 00  F8  F9 00 00        FA  FB  FC 00 00     FD 00 00  FE 00 00  FF 00 00 00 
org $008000

;00
BRK
BRK #$00
ORA ($00,x)
COP
COP #$00
ORA $00,s
TSB $00
ORA $00
ASL $00
ORA [$00]
PHP
ORA #$00
ORA #$0000
ASL A
PHD
TSB $0000
ORA $0000
ASL $0000
ORA $000000
+

;10
BPL +
ORA ($00),y
ORA ($00)
ORA ($00,s),y
TRB $00
ORA $00,x
ASL $00,x
ORA [$00],y
CLC
ORA $0000,y
INC A
TCS
TRB $0000
ORA $0000,x
ASL $0000,x
ORA $000000,x
+

;20
JSR $0000
AND ($00,x)
JSL $000000
AND $00,s
BIT $00
AND $00
ROL $00
AND [$00]
PLP
AND #$00
AND #$0000
ROL A
PLD
BIT $0000
AND $0000
ROL $0000
AND $000000
+

;30
BMI +
AND ($00),y
AND ($00)
AND ($00,s),y
BIT $00,x
AND $00,x
ROL $00,x
AND [$00],y
SEC
AND $0000,y
DEC A
TSC
BIT $0000,x
AND $0000,x
ROL $0000,x
AND $000000,x
+

;40
RTI
EOR ($00,x)
WDM
WDM #$00
EOR $00,s
MVP $00,$00
EOR $00
LSR $00
EOR [$00]
PHA
EOR #$00
EOR #$0000
LSR A
PHK
JMP $0000
EOR $0000
LSR $0000
EOR $000000
+

;50
BVC +
EOR ($00),y
EOR ($00)
EOR ($00,s),y
MVN $00,$00
EOR $00,x
LSR $00,x
EOR [$00],y
CLI
EOR $0000,y
PHY
TCD
JML $000000
EOR $0000,x
LSR $0000,x
EOR $000000,x
+

;60
RTS
ADC ($00,x)
PER $0000
ADC $00,s
STZ $00
ADC $00
ROR $00
ADC [$00]
PLA
ADC #$00
ADC #$0000
ROR A
RTL
JMP ($0000)
ADC $0000
ROR $0000
ADC $000000
+

;70
BVS +
ADC ($00),y
ADC ($00)
ADC ($00,s),y
STZ $00,x
ADC $00,x
ROR $00,x
ADC [$00],y
SEI
ADC $0000,y
PLY
TDC
JMP ($0000,x)
ADC $0000,x
ROR $0000,x
ADC $000000,x
+

;80
BRA +
STA ($00,x)
BRL +
STA $00,s
STY $00
STA $00
STX $00
STA [$00]
DEY
BIT #$00
BIT #$0000
TXA
PHB
STY $0000
STA $0000
STX $0000
STA $000000
+

;90
BCC +
STA ($00),y
STA ($00)
STA ($00,s),y
STY $00,x
STA $00,x
STX $00,y
STA [$00],y
TYA
STA $0000,y
TXS
TXY
STZ $0000
STA $0000,x
STZ $0000,x
STA $000000,x
+

;A0
LDY #$00
LDY #$0000
LDA ($00,x)
LDX #$00
LDX #$0000
LDA $00,s
LDY $00
LDA $00
LDX $00
LDA [$00]
TAY
LDA #$00
LDA #$0000
TAX
PLB
LDY $0000
LDA $0000
LDX $0000
LDA $000000
+

;B0
BCS +
LDA ($00),y
LDA ($00)
LDA ($00,s),y
LDY $00,x
LDA $00,x
LDX $00,y
LDA [$00],y
CLV
LDA $0000,y
TSX
TYX
LDY $0000,x
LDA $0000,x
LDX $0000,y
LDA $000000,x
+

;C0
CPY #$00
CPY #$0000
CMP ($00,x)
REP #$00
CMP $00,s
CPY $00
CMP $00
DEC $00
CMP [$00]
INY
CMP #$00
CMP #$0000
DEX
WAI
CPY $0000
CMP $0000
DEC $0000
CMP $000000
+

;D0
BNE +
CMP ($00),y
CMP ($00)
CMP ($00,s),y
PEI ($00)
CMP $00,x
DEC $00,x
CMP [$00],y
CLD
CMP $0000,y
PHX
STP
JML [$0000]
CMP $0000,x
DEC $0000,x
CMP $000000,x
+

;E0
CPX #$00
CPX #$0000
SBC ($00,x)
SEP #$00
SBC $00,s
CPX $00
SBC $00
INC $00
SBC [$00]
INX
SBC #$00
SBC #$0000
NOP
XBA
CPX $0000
SBC $0000
INC $0000
SBC $000000
+

;F0
BEQ +
SBC ($00),y
SBC ($00)
SBC ($00,s),y
PEA $0000
SBC $00,x
INC $00,x
SBC [$00],y
SED
SBC $0000,y
PLX
XCE
JSR ($0000,x)
SBC $0000,x
INC $0000,x
SBC $000000,x
+
