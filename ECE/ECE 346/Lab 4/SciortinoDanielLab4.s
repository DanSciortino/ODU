/*
Daniel Sciortino
Lab 4
ODU ECE 346 Micro Controllers
Multiplication of two intergers, also a factorial subroutine
*/
.global main

.data
.equ A, 0x3

.text

main:
	movia r4, A					/*Move A into r4*/
	movia r5, A					/*Move A into r5*/
	movia r6, A					/*Move A into r6*/
	call Factorial				/*Call Factorial*/

Factorial:
	cmpeq  r10, r5, r0			/*if(r11 == r0) then r10 = 1, else r10 = 0*/
	bne r10, r0, ReturnOne		/*if (r10 == r0) goto ReturnOne*/
	subi r5, r5, 1				/*r5 = r5 - 1 */
	beq r10, r0, Multiply		/*if(r10 == r0) go to multiply*/
	ret

Multiply:
	add r4, r4, r6				/*add r4 = r4 + r6 */
	subi r5, r5, 1				/*subtract r5 = r5 - 1 */
	bne r5, r0, Multiply		/*if (r5 != r0) goto multiply*/
	movia r5, A					/*Move a back into r5 to reset the counter*/
	subi r6, r6, 1				/*r6 = r6 -1*/
	bge r6, r0, Multiply		/*while (r6 >= r0 ) branch to multiply*/
	br main						/*Branch to main*/

ReturnZero:
	mov r4, r0					/*move r0 >> r4*/
	br main						/*Branch main*/

ReturnOne:
	movia r10, 0x1				/*move 1 into r10*/
	br main						/*branch to main*/

.end
