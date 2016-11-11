/*******************************
ECE 346 Micro Controllers
Lab 3
*******************************/
.global main

.data
	.equ LED, 0x10000010
	.equ DIP, 0x10000040
	.equ BUTT, 0x10000050

.text
main:
	movia r4, LED				/*LED >> r4*/
	movia r5, DIP				/*DIP >> r5*/
	movia r6, BUTT				/*Butt >> r6*/
	movia r9, 0b00000001		/*move 000000001 >> r9*/
	movia r13, 254				/*move 2^7-1 into r13*/
	call Start					/*Call Start*/

Start:
	movia r12, 1000000			/*move 1000000 >> r12*/
	call StartWait				/*call startwait*/
	call PushWait				/*Calls the push wait subroutine*/
	movia r10, 0b11111111		/*moves all on >> r10*/
	movia r12, 1000000			/*This is for the delay it loads 1000000 >> r12*/
	stwio r10, 0(r4)			/*moves r10 >> r4, All leds light up*/
	call Delay					/*Calls the init delay function*/
	movia r10, 0b00000000		/*moves all off into r10*/
	stwio r10, 0(r4)			/*moves r10 into r4 leds turn off*/
	movia r12, 1000000			/*This is for the delay it loads 1000000 >> r12*/
	call Delay					/*Calls the inital delay*/
	movia r10, 0b11111111		/*moves all on >> r10*/
	movia r12, 1000000			/*This is for the delay it loads 1000000 >> r12*/
	stwio r10, 0(r4)			/*moves r10 >> r4, All leds light back up*/
	call Delay					/*Calls the InitDelay function*/
	movia r10, 0b00000000		/*move all off >> r10*/
	stwio r10, 0(r4)			/*Moves r10 >> r4*/
	call Guess					/*Call Guess*/

StartWait:
	ldwio r16, 0(r5)			/*reads from the dipswitches into r16*/
	subi r12, r12, 5			/*r12 = r12 - 5*/
	bne r12, r0, StartWait		/* if (r12 != r0) goto startwait*/
	ret							/*Return*/

PushWait:
	ldwio r7, 0(r6)				/*moves the value from the push buttons into r7*/
	beq r7, r0, PushWait		/*if (r7 == r0) goto PushWait*/
	ret							/*return*/

Guess:
	ldwio r17, 0(r5)			/*loads from the dip switches into r17 */
	call PushWait				/*Call Push Wait*/
	beq r16, r17, GameWon		/*if (r16 == r17) >> Game won*/
	bne r16, r17, GuessWrong	/*if (r16 != r17) >> Guess wrong*/

GuessWrong:
	movia r8, 0b00000001		/*move 000000001 >> r8*/
	or r9, r9, r8				/*r9 or r8 >> r9*/
	stwio r9, 0(r4)				/*move r9 >> r4*/
	slli r9, r9, 1				/*shift r9 logical left immedate by 4*/
	beq r9, r13, GameOver		/* if (r9 == r13) goto gameover*/
	br Guess					/*Go back to guess*/

GameWon:
	movia r10, 0b10000001		/*move 10000001 into r10, to light up the middle two leds*/
	stwio r10, 0(r4)			/*moves r10 >> r4, middle two leds should light up*/
	br ResetWait				/*goto Reset wait*/

GameOver:
	movia r10, 0b00011000		/*Move 00011000 >> r10*/
	stwio r10, 0(r4)			/*moves the value of r10 >> Leds*/
	br ResetWait				/*Branch to ResetWait*/

ResetWait:
	movia r13, 2				/*Moves 2 into r13*/
	ldwio r14, 0(r6)			/*loads the push button press into r14*/
	bne r13, r14, ResetWait		/*if (r13 != r14) goto ResetWait*/
	call PushWait				/*Call Pushwait*/
	beq r13, r14, Start			/*if (r13 == r14) goto Start*/

Delay:
	subi r12, r12, 5			/*r12 = r12 - 5 */
	bne r12, r0, Delay			/*(r12 != r0) goto Delay*/
	ret							/*Return*/

.end
