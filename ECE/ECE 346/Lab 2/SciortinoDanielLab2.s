/**********************************************
Old Dominion University
ECE 346 - Microcontrollers
Lab 2 Practicing Assembly
Daniel Sciortino
***********************************************/

.global main

.data

.equ LED, 0x10000010

.equ DIP, 0x10000040

.equ BUTT,0x10000050

.equ MyNum, 0b00000000000000000000000000000000

.equ Temp, 0b0000


.text


main:
	movi r10, Temp				/**Move temp >> r10*/
	movi r3, MyNum				/*move myNum >> r3*/
	movia r4, LED				/*move led >> r4*/
	movia r5, DIP				/*move dip >> r5*/
	movia r6, BUTT				/*move butt >> r6*/
	movi r8, 9					/*move 5 >> r8*/
	movi r13, 7					/*move 2 >> r13*/
	mov r12, r0					/*move r0 >> r12*/
	br DipToLed					/*Branch DiptoLed*/

DipToLed:
	addi r12, r12, 1			/*r12 = r12 + 1*/
	ldwio r10, 0(r5)			/*load 0(r5) >> r10*/
	stwio r10, 0(r4)			/*store r10 >> 0(r4)*/
	beq r8, r12, PrintFinal		/*if (r8 == r12) branch to Printfinal*/
	br PushWait					/*branch push wait*/

PushWait:
	ldwio r11, 0(r6)			/*load 0(r6) >> r11*/
	beq r11, r0, PushWait		/*if (r0 == r11) branch to pushwait*/
	br Shift					/*branch shift*/

Shift:
	or r3, r3, r10				/*r3 = r3 OR r10*/
	roli r3, r3, 4				/*shift to the left by the immedate 4 bits*/
	br Waitloop					/*branch waitloop*/

Waitloop:
	movia r9, 2000000			/*move 2,000,000 >> r9*/
	subi r9, r9, 2				/*r9 = r9 - 2*/
	bne r9, r0, Waitloop		/*if (r9 != r0) branch waitloop*/
	beq r9, r0, DipToLed		/*if (r9 == r0) branch to branch to Diptoled*/

PrintFinal:
	stwio r3, 0(r4)				/*store r3 >> 0(r4)*/
	br PushWaitFinal			/*branch push wait final*/

PushWaitFinal:
	ldwio r11, 0(r6)			/*load 0(r6) >> r13*/
	beq r11, r0, PushWaitFinal	/*if (r11 == r0) branch to pushwaitfinal*/
	addi r13, r13, 1			/*r13 = r13 + 1*/
	beq r13, r8, main			/*if (r13 == r8) branch to main*/
.end
