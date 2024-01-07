!to "build/bootsector.prg", plain
;
*=$0b00

!byte $43, $42, $4d ; Boot signature CBM
!word $0000     ; address of additional sectors to load
!byte 0         ; Bank#
!byte 0         ; number of sectors to load
LBootmessage
!byte $0e   ; switch to lower/uppercase display
!pet  "C128 Disk-Monitor", 0
LFilename
!pet  "dmon 128", 0 ; file to load at boot

LBootStart
;    jsr $77b3 ; Fast Basic command
    lda #$00
    ldx #$13
    sta $032e
    stx $032f
    jsr $ff7d ; primm, print following text

!pet  "Diskmon initialisiert"
!byte $0d, $00
;
    rts
;
!align 255, 0, 0

;<# 8:  1  0>
;> 00  43 42 4D 00 00 00 00 0E C3 31 32 38 20 C4 49 53  ;cbm.....C128 Dis
;> 10  4B 2D CD 4F 4E 49 54 4F 52 00 44 4D 4F 4E 20 31  ;k-Monitor.dmon 1
;> 20  32 38 00 20 B3 77 A9 00 A2 13 8D 2E 03 8E 2F 03  ;28. .W......../.
;> 30  20 7D FF 93 C4 49 53 4B 4D 4F 4E 20 49 4E 49 54  ; ...Diskmon init
;> 40  49 41 4C 49 53 49 45 52 54 0D 00 60 00 00 00 00  ;ialisiert.......
;> 50  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ;................


;<# 8:  1  0>
;> 00  43 42 4D 00 00 00 00 0E C3 31 32 38 20 C4 49 53  ;cbm.....C128 Dis
;> 10  4B 2D CD 4F 4E 49 54 4F 52 00 44 4D 4F 4E 20 31  ;k-Monitor.dmon 1
;> 20  32 38 00 A9 00 A2 13 8D 2E 03 8E 2F 03 20 7D FF  ;28........./. ..
;> 30  C4 49 53 4B 4D 4F 4E 20 49 4E 49 54 49 41 4C 49  ;Diskmon initiali
;> 40  53 49 45 52 54 0D 00 60 00 00 00 00 00 00 00 00  ;siert...........
;> 50  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ;................

