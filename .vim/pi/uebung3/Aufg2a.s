@ Aufgabe 2 a
.global _start

@ Setup Parameters
_start:
	mov	R5, #0		@ Faengt bei 0 an zu zaehlen
	mov	R6, #15		@ Soll bis 15 zaehlen
	b	_whileLoop	@ Die WhileLoop wird ausgefuehrt

_whileLoop:
	cmp 	R5, R6		@ Die beiden Register werden verglichen
	add	R5, R5, #1	@ Und R5 um 1 inkrementiert
	beq	_exit		@ Falls R5 = 15 ist, wird das Programm beendet
	b	_print		@ Ansonsten wird nochmal ausgegeben
_print:
	mov	R0, #1		@ 1 = StdOut
	ldr	R1, =hello	@ R1 wird mit "Hello World!\n" gefuellt
	mov	R2, #13		@ Laenge des Strings
	mov	R7, #4		@ System call write
	svc	0		@ Ausfuehren
	b	_whileLoop	@ Wieder zurueck in die WhileLoop
_exit:
	mov	R0, #0		@ Return Code 0
	mov	R7, #1		@ Service Command Code 1 terminiert das Programm
	svc	0		@ Programm wird beendet

.data
hello:		.ascii	"Hello World!\n"
