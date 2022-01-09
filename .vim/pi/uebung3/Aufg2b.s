.global _start

_start:
mov R8, #1		@Register 8 mit 1 initialisieren
mov R6, #58		@Register 6 mit 58 initialisieren
add R8, R8, #47		@47 zum Register 8 addieren -> Bereich der Ascii-Tabelle
b _whileLoop

_whileLoop:
add R8, R8, #1		@inkrementieren der While-Loop
cmp R8, R6		@Vergleichen der beiden Register 6 und 8
beq _exit		@ Wenn gleich -> Programm beenden
b _print		@ Ansonsten Zahl ausgeben

_print:
ldr R9, =num		@Register 9 mit leerer Ascii Stelle initialisieren
str R8, [R9]		@Speichern im Register 8

mov R0, #1		@ 1 = StdOut
ldr R1, =num		@ Stelle der Ascii-Tabelle laden
mov R2, #1		@ Laenge des Strings
mov R7, #4		@ System call write
svc 0			@ Ausgabe
b _whileLoop		@ Zurueck in die Loop

_exit:
mov R0, #0		@ Return Code 0
mov R7, #1		@ Terminieren des Programms
svc 0

@Konstantendeklaration
.data
num:		.ascii " "
