!to "build/dmon128.prg", cbm

*=$12F0
;
LBOOT
    LDA #<(L1300)
    LDX #>(L1300)
    STA EL032E
    STX EL032F
    RTS
;
    !byte $00,$00,$00,$00,$00
L1300
    JMP ELB0B2  ; default Monitor routine
