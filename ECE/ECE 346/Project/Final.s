/*
ODU ECE 346 MicroControllers
Final Project
Using the DE0-NANO to drive an ardunio mega for a 16x32 LED matrix

Jonathan Scroggins
Daniel Sciortino
Naomi Filio
Andres Dominguez
*/

.global main

.data
	.equ LEDGs,		0x10000010
	.equ Push_B,	0x10000050
	.equ DIP,		0x10000040
	.equ JP1,		0x10000060
	.equ JP2,		0x10000070
.text

main:
	movia	r10, JP1  					/* Loads r10 with the base address of JP1 */
	movia	r11, Push_B					/* Move the Push_B base Address into r11*/
	movia	r12, LEDGs					/* Leds are used as a stauts light and for testing purposes*/
	movia	r13, DIP					/* Move base address of the dip into r13*/
	movia	r16, JP2					/* MOve the base address of JP2 to r16*/
	movi	r7, 0b1 					/* bit 0 as output pin D0 bit  */
	stwio	r7, 4(r10)					/* Set the 1 as the direction bit*/
	stwio	r7, 4(r16)					/* Setting the direction bit for the JP2*/

/* Power on the internal and excternal leds*/
	stwio	r7, 0(r12)					/* Send 1 into r12. This powers on the built in LED*/
	stwio	r7, 0(r10)					/* Send 1 into r10. This powers on the LED Matrix*/

Push_Reset:
	ldwio	r14, 0(r11)					/* Load the value of r11 into r14*/
	ldwio	r15, 0(r13)					/* Load value from the dip switch to r15*/
	bgt		r15, r0, DIP_Pause			/* If (r15 > r0) branch to DIP_Pause*/
	beq		r14, r0, Push_Reset			/* If (r14 == r0) then branch to Push_Reset*/
	mov		r14, r0						/* Clearing the register that push button writes to*/
	movia	r8, 900000					/* Move 9,000,000 into r8*/

Push_Delay:
	subi	r8, r8, 2					/* r8 = r8 - 2*/
	bne		r8, r0, Push_Delay			/* If (r8 != r0) branch to Push_Delay*/
	beq		r17, r7, Resume				/* If (r7 == r17) branch to Resume*/
	br		Reset						/* Else branch to reset*/

Reset:
	movi	r17, 0b1					/* Move 1 into r17*/
	stwio	r0, 0(r10)					/* Store 0 into the r10. This turns off the LED Matrix*/
	stwio	r0, 0(r12)					/* store 0 into r12. This powers off the built in LED*/
	movia	r8, 9000000					/* Move 9000000 into r8*/
	br 		Push_Reset					/* Branch to Push_Reset*/

Resume:
	stwio	r7, 0(r10)					/* Move r7[Value of 1] into r10 and powers the matrix back on*/
	stwio	r7, 0(r12)					/* Move r7[Value of 1] into r12 and powers the Built on Led back on*/
	mov		r17, r0						/* Move r0 into r17 */
	br		Push_Reset					/* Branch to Push_Reset*/

DIP_Pause:
	ldwio	r15, 0(r13)					/* Load r13 into r15*/
	cmpgt	r18, r15, r0				/* if (r15 > r0) r18 = 1, else r18 =0*/
	stwio	r18, 0(r16)					/* Store r18 into 0(r16). Sending value to the Ardunino to Pause*/
	bgt		r15, r0, DIP_Pause			/* If (r15 > r0) branch to DIP_Pause*/
	br		Push_Reset					/* Branch to Push_Reset*/

.end
