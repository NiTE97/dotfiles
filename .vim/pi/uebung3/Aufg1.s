@ Aufgabe 1
.global _start

@Setup parameters
_start:
	mov	R1, #12		@ Hard-codierte Zahl 12
	mov	R5, #10		@ 10 zum Vergleichen
	cmp	R1, R5		@ Zahl soll mit 10 verglichen werden
	blt	_lower		@ Branches fuer entsprechende Ergebnisse
	bgt	_bigger

@Ausgabe falls die Zahl kleiner ist
_lower:
	mov	R0, #1		@ 1 = StdOut
	ldr	R1, =smaller	@ String der ausgegeben werden soll
	mov	R2, #20		@ Laenge des Strings
	mov 	R7, #4		@ Linux write System call
	svc	0		@ Output

	mov	R0, #0
	mov	R7, #1
	svc	0

@Ausgabe falls die Zahl groesser ist
_bigger:
	mov	R0, #1		@ 1 = StdOut
	ldr	R1, =bigger	@ String der ausgegeben werden soll
	mov	R2, #9		@ Laenge des Strings
	mov 	R7, #4		@ Linux write System call
	svc	0		@ Output

	mov	R0, #0
	mov 	R7, #1
	svc	0

@ Strings die ausgegeben werden
.data
smaller:	.ascii "Kleiner oder gleich\n"
bigger:		.ascii "Größer\n"

@aufgabe1.o:     file format elf32-littlearm
@
@Contents of section .text:
@ 0000 0c10a0e3 0a50a0e3 050051e1 000000ba  .....P....Q.....
@ 0010 070000ca 0100a0e3 34109fe5 1420a0e3  ........4.... ..
@ 0020 0470a0e3 000000ef 0000a0e3 0170a0e3  .p...........p..
@ 0030 000000ef 0100a0e3 18109fe5 0920a0e3  ............. ..
@ 0040 0470a0e3 000000ef 0000a0e3 0170a0e3  .p...........p..
@ 0050 000000ef 00000000 14000000           ............    
@Contents of section .data:
@ 0000 4b6c6569 6e657220 6f646572 20676c65  Kleiner oder gle
@ 0010 6963680a 4772c3b6 c39f6572 0a        ich.Gr....er.   
@Contents of section .ARM.attributes:
@ 0000 41110000 00616561 62690001 07000000  A....aeabi......
@ 0010 0801                                 ..              
@
@Disassembly of section .text:
@
@00000000 <_start>:
@   0:	e3a0100c 	mov	r1, #12
@   4:	e3a0500a 	mov	r5, #10
@   8:	e1510005 	cmp	r1, r5
@   c:	ba000000 	blt	14 <_lower>
@  10:	ca000007 	bgt	34 <_bigger>
@
@00000014 <_lower>:
@  14:	e3a00001 	mov	r0, #1
@  18:	e59f1034 	ldr	r1, [pc, #52]	; 54 <_bigger+0x20>
@  1c:	e3a02014 	mov	r2, #20
@  20:	e3a07004 	mov	r7, #4
@  24:	ef000000 	svc	0x00000000
@  28:	e3a00000 	mov	r0, #0
@  2c:	e3a07001 	mov	r7, #1
@  30:	ef000000 	svc	0x00000000
@
@00000034 <_bigger>:
@  34:	e3a00001 	mov	r0, #1
@  38:	e59f1018 	ldr	r1, [pc, #24]	; 58 <_bigger+0x24>
@  3c:	e3a02009 	mov	r2, #9
@  40:	e3a07004 	mov	r7, #4
@  44:	ef000000 	svc	0x00000000
@  48:	e3a00000 	mov	r0, #0
@  4c:	e3a07001 	mov	r7, #1
@  50:	ef000000 	svc	0x00000000
@  54:	00000000 	.word	0x00000000
@  58:	00000014 	.word	0x00000014
