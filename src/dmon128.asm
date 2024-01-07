!to "build/dmon128.prg", cbm

!addr EL032E=$032E  ; Monitor CLI Routine vector
!addr EL032F=$032F
!addr ELB0B2=$B0B2  ; default Monitor routine

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
