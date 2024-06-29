
Learn_In_Depth.elf:     file format elf32-littlearm


Disassembly of section .startup:

00010000 <reset>:
   10000:	e59fd004 	ldr	sp, [pc, #4]	; 1000c <stop+0x4>
   10004:	eb000001 	bl	10010 <main>

00010008 <stop>:
   10008:	eafffffe 	b	10008 <stop>
   1000c:	000110dc 	ldrdeq	r1, [r1], -ip

Disassembly of section .text:

00010010 <main>:
   10010:	e92d4800 	push	{fp, lr}
   10014:	e28db004 	add	fp, sp, #4
   10018:	e59f0004 	ldr	r0, [pc, #4]	; 10024 <main+0x14>
   1001c:	eb000001 	bl	10028 <uart0_tx_string>
   10020:	e8bd8800 	pop	{fp, pc}
   10024:	00010078 	andeq	r0, r1, r8, ror r0

00010028 <uart0_tx_string>:
   10028:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   1002c:	e28db000 	add	fp, sp, #0
   10030:	e24dd00c 	sub	sp, sp, #12
   10034:	e50b0008 	str	r0, [fp, #-8]
   10038:	ea000006 	b	10058 <uart0_tx_string+0x30>
   1003c:	e59f3030 	ldr	r3, [pc, #48]	; 10074 <uart0_tx_string+0x4c>
   10040:	e51b2008 	ldr	r2, [fp, #-8]
   10044:	e5d22000 	ldrb	r2, [r2]
   10048:	e5832000 	str	r2, [r3]
   1004c:	e51b3008 	ldr	r3, [fp, #-8]
   10050:	e2833001 	add	r3, r3, #1
   10054:	e50b3008 	str	r3, [fp, #-8]
   10058:	e51b3008 	ldr	r3, [fp, #-8]
   1005c:	e5d33000 	ldrb	r3, [r3]
   10060:	e3530000 	cmp	r3, #0
   10064:	1afffff4 	bne	1003c <uart0_tx_string+0x14>
   10068:	e28bd000 	add	sp, fp, #0
   1006c:	e8bd0800 	ldmfd	sp!, {fp}
   10070:	e12fff1e 	bx	lr
   10074:	101f1000 	andsne	r1, pc, r0

Disassembly of section .data:

00010078 <str>:
   10078:	7261654c 	rsbvc	r6, r1, #76, 10	; 0x13000000
   1007c:	6e49206e 	cdpvs	0, 4, cr2, cr9, cr14, {3}
   10080:	70654420 	rsbvc	r4, r5, r0, lsr #8
   10084:	3c206874 	stccc	8, cr6, [r0], #-464	; 0xfffffe30
   10088:	61686f4d 	cmnvs	r8, sp, asr #30
   1008c:	2064656d 	rsbcs	r6, r4, sp, ror #10
   10090:	646d6148 	strbtvs	r6, [sp], #-328	; 0x148
   10094:	00003e79 	andeq	r3, r0, r9, ror lr
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002d41 	andeq	r2, r0, r1, asr #26
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000023 	andeq	r0, r0, r3, lsr #32
  10:	4d524105 	ldfmie	f4, [r2, #-20]	; 0xffffffec
  14:	45363239 	ldrmi	r3, [r6, #-569]!	; 0x239
  18:	00532d4a 	subseq	r2, r3, sl, asr #26
  1c:	01080506 	tsteq	r8, r6, lsl #10
  20:	04120109 	ldreq	r0, [r2], #-265	; 0x109
  24:	01150114 	tsteq	r5, r4, lsl r1
  28:	01180317 	tsteq	r8, r7, lsl r3
  2c:	Address 0x0000002c is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <stack_top+0x10bfc48>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	34202955 	strtcc	r2, [r0], #-2389	; 0x955
   c:	322e372e 	eorcc	r3, lr, #12058624	; 0xb80000
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000068 	andeq	r0, r0, r8, rrx
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000063 	andeq	r0, r0, r3, rrx
  10:	00007d01 	andeq	r7, r0, r1, lsl #26
  14:	00000000 	andeq	r0, r0, r0
  18:	01001000 	mrseq	r1, (UNDEF: 0)
  1c:	01002800 	tsteq	r0, r0, lsl #16
  20:	00000000 	andeq	r0, r0, r0
  24:	83010200 	movwhi	r0, #4608	; 0x1200
  28:	01000000 	mrseq	r0, (UNDEF: 0)
  2c:	00100105 	andseq	r0, r0, r5, lsl #2
  30:	00280001 	eoreq	r0, r8, r1
  34:	00000001 	andeq	r0, r0, r1
  38:	03010000 	movweq	r0, #4096	; 0x1000
  3c:	00000052 	andeq	r0, r0, r2, asr r0
  40:	0000004b 	andeq	r0, r0, fp, asr #32
  44:	00004b04 	andeq	r4, r0, r4, lsl #22
  48:	05006300 	streq	r6, [r0, #-768]	; 0x300
  4c:	005a0704 	subseq	r0, sl, r4, lsl #14
  50:	01050000 	mrseq	r0, (UNDEF: 5)
  54:	00006f08 	andeq	r6, r0, r8, lsl #30
  58:	74730600 	ldrbtvc	r0, [r3], #-1536	; 0x600
  5c:	03010072 	movweq	r0, #4210	; 0x1072
  60:	0000003b 	andeq	r0, r0, fp, lsr r0
  64:	78030501 	stmdavc	r3, {r0, r8, sl}
  68:	00000100 	andeq	r0, r0, r0, lsl #2
  6c:	00000058 	andeq	r0, r0, r8, asr r0
  70:	005a0002 	subseq	r0, sl, r2
  74:	01040000 	mrseq	r0, (UNDEF: 4)
  78:	00000063 	andeq	r0, r0, r3, rrx
  7c:	00008d01 	andeq	r8, r0, r1, lsl #26
  80:	00000000 	andeq	r0, r0, r0
  84:	01002800 	tsteq	r0, r0, lsl #16
  88:	01007800 	tsteq	r0, r0, lsl #16
  8c:	00003500 	andeq	r3, r0, r0, lsl #10
  90:	94010200 	strls	r0, [r1], #-512	; 0x200
  94:	01000000 	mrseq	r0, (UNDEF: 0)
  98:	00280105 	eoreq	r0, r8, r5, lsl #2
  9c:	00780001 	rsbseq	r0, r8, r1
  a0:	002c0001 	eoreq	r0, ip, r1
  a4:	4e010000 	cdpmi	0, 0, cr0, cr1, cr0, {0}
  a8:	03000000 	movweq	r0, #0
  ac:	00000088 	andeq	r0, r0, r8, lsl #1
  b0:	004e0501 	subeq	r0, lr, r1, lsl #10
  b4:	91020000 	mrsls	r0, (UNDEF: 2)
  b8:	04040074 	streq	r0, [r4], #-116	; 0x74
  bc:	00000054 	andeq	r0, r0, r4, asr r0
  c0:	6f080105 	svcvs	0x00080105
  c4:	00000000 	andeq	r0, r0, r0

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0c3f002e 	ldceq	0, cr0, [pc], #-184	; ffffff64 <stack_top+0xfffeee88>
  18:	0b3a0e03 	bleq	e8382c <stack_top+0xe72750>
  1c:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
  20:	01120111 	tsteq	r2, r1, lsl r1
  24:	42960640 	addsmi	r0, r6, #64, 12	; 0x4000000
  28:	0300000c 	movweq	r0, #12
  2c:	13490101 	movtne	r0, #37121	; 0x9101
  30:	00001301 	andeq	r1, r0, r1, lsl #6
  34:	49002104 	stmdbmi	r0, {r2, r8, sp}
  38:	000b2f13 	andeq	r2, fp, r3, lsl pc
  3c:	00240500 	eoreq	r0, r4, r0, lsl #10
  40:	0b3e0b0b 	bleq	f82c74 <stack_top+0xf71b98>
  44:	00000e03 	andeq	r0, r0, r3, lsl #28
  48:	03003406 	movweq	r3, #1030	; 0x406
  4c:	3b0b3a08 	blcc	2ce874 <stack_top+0x2bd798>
  50:	3f13490b 	svccc	0x0013490b
  54:	000a020c 	andeq	r0, sl, ip, lsl #4
  58:	11010000 	mrsne	r0, (UNDEF: 1)
  5c:	130e2501 	movwne	r2, #58625	; 0xe501
  60:	1b0e030b 	blne	380c94 <stack_top+0x36fbb8>
  64:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
  68:	00061001 	andeq	r1, r6, r1
  6c:	012e0200 	teqeq	lr, r0, lsl #4
  70:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
  74:	0b3b0b3a 	bleq	ec2d64 <stack_top+0xeb1c88>
  78:	01110c27 	tsteq	r1, r7, lsr #24
  7c:	06400112 			; <UNDEFINED> instruction: 0x06400112
  80:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
  84:	03000013 	movweq	r0, #19
  88:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
  8c:	0b3b0b3a 	bleq	ec2d7c <stack_top+0xeb1ca0>
  90:	0a021349 	beq	84dbc <stack_top+0x73ce0>
  94:	0f040000 	svceq	0x00040000
  98:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
  9c:	05000013 	streq	r0, [r0, #-19]
  a0:	0b0b0024 	bleq	2c0138 <stack_top+0x2af05c>
  a4:	0e030b3e 	vmoveq.16	d3[0], r0
  a8:	Address 0x000000a8 is out of bounds.


Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000004 	andeq	r0, r0, r4
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000004 	andeq	r0, r0, r4
  10:	00000008 	andeq	r0, r0, r8
  14:	087d0002 	ldmdaeq	sp!, {r1}^
  18:	00000008 	andeq	r0, r0, r8
  1c:	00000018 	andeq	r0, r0, r8, lsl r0
  20:	047b0002 	ldrbteq	r0, [fp], #-2
	...
  30:	00000004 	andeq	r0, r0, r4
  34:	007d0002 	rsbseq	r0, sp, r2
  38:	00000004 	andeq	r0, r0, r4
  3c:	00000008 	andeq	r0, r0, r8
  40:	047d0002 	ldrbteq	r0, [sp], #-2
  44:	00000008 	andeq	r0, r0, r8
  48:	00000050 	andeq	r0, r0, r0, asr r0
  4c:	047b0002 	ldrbteq	r0, [fp], #-2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	00010010 	andeq	r0, r1, r0, lsl r0
  14:	00000018 	andeq	r0, r0, r8, lsl r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	006c0002 	rsbeq	r0, ip, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00010028 	andeq	r0, r1, r8, lsr #32
  34:	00000050 	andeq	r0, r0, r0, asr r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000031 	andeq	r0, r0, r1, lsr r0
   4:	001c0002 	andseq	r0, ip, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	2e707061 	cdpcs	0, 7, cr7, cr0, cr1, {3}
  20:	00000063 	andeq	r0, r0, r3, rrx
  24:	05000000 	streq	r0, [r0, #-0]
  28:	01001002 	tsteq	r0, r2
  2c:	4b4b1700 	blmi	12c5c34 <stack_top+0x12b4b58>
  30:	01000402 	tsteq	r0, r2, lsl #8
  34:	00003901 	andeq	r3, r0, r1, lsl #18
  38:	1d000200 	sfmne	f0, 4, [r0, #-0]
  3c:	02000000 	andeq	r0, r0, #0
  40:	0d0efb01 	vstreq	d15, [lr, #-4]
  44:	01010100 	mrseq	r0, (UNDEF: 17)
  48:	00000001 	andeq	r0, r0, r1
  4c:	01000001 	tsteq	r0, r1
  50:	72617500 	rsbvc	r7, r1, #0, 10
  54:	00632e74 	rsbeq	r2, r3, r4, ror lr
  58:	00000000 	andeq	r0, r0, r0
  5c:	28020500 	stmdacs	r2, {r8, sl}
  60:	17000100 	strne	r0, [r0, -r0, lsl #2]
  64:	00833083 	addeq	r3, r3, r3, lsl #1
  68:	63010402 	movwvs	r0, #5122	; 0x1402
  6c:	00080288 	andeq	r0, r8, r8, lsl #5
  70:	Address 0x00000070 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	535c3a46 	cmppl	ip, #286720	; 0x46000
   4:	59445554 	stmdbpl	r4, {r2, r4, r6, r8, sl, ip, lr}^
   8:	554f435c 	strbpl	r4, [pc, #-860]	; fffffcb4 <stack_top+0xfffeebd8>
   c:	53455352 	movtpl	r5, #21330	; 0x5352
  10:	73614d5c 	cmnvc	r1, #92, 26	; 0x1700
  14:	69726574 	ldmdbvs	r2!, {r2, r4, r5, r6, r8, sl, sp, lr}^
  18:	4520676e 	strmi	r6, [r0, #-1902]!	; 0x76e
  1c:	6465626d 	strbtvs	r6, [r5], #-621	; 0x26d
  20:	20646564 	rsbcs	r6, r4, r4, ror #10
  24:	74737953 	ldrbtvc	r7, [r3], #-2387	; 0x953
  28:	44206d65 	strtmi	r6, [r0], #-3429	; 0xd65
  2c:	6f6c7069 	svcvs	0x006c7069
  30:	415c616d 	cmpmi	ip, sp, ror #2
  34:	47495353 	smlsldmi	r5, r9, r3, r3
  38:	4e454d4e 	cdpmi	13, 4, cr4, cr5, cr14, {2}
  3c:	555c5354 	ldrbpl	r5, [ip, #-852]	; 0x354
  40:	5f74696e 	svcpl	0x0074696e
  44:	6d455f33 	stclvs	15, cr5, [r5, #-204]	; 0xffffff34
  48:	64646562 	strbtvs	r6, [r4], #-1378	; 0x562
  4c:	435f6465 	cmpmi	pc, #1694498816	; 0x65000000
  50:	73654c5c 	cmnvc	r5, #92, 24	; 0x5c00
  54:	5f6e6f73 	svcpl	0x006e6f73
  58:	69730032 	ldmdbvs	r3!, {r1, r4, r5}^
  5c:	7974657a 	ldmdbvc	r4!, {r1, r3, r4, r5, r6, r8, sl, sp, lr}^
  60:	47006570 	smlsdxmi	r0, r0, r5, r6
  64:	4320554e 	teqmi	r0, #327155712	; 0x13800000
  68:	372e3420 	strcc	r3, [lr, -r0, lsr #8]!
  6c:	7500322e 	strvc	r3, [r0, #-558]	; 0x22e
  70:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  74:	2064656e 	rsbcs	r6, r4, lr, ror #10
  78:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
  7c:	70706100 	rsbsvc	r6, r0, r0, lsl #2
  80:	6d00632e 	stcvs	3, cr6, [r0, #-184]	; 0xffffff48
  84:	006e6961 	rsbeq	r6, lr, r1, ror #18
  88:	72747370 	rsbsvc	r7, r4, #112, 6	; 0xc0000001
  8c:	72617500 	rsbvc	r7, r1, #0, 10
  90:	00632e74 	rsbeq	r2, r3, r4, ror lr
  94:	74726175 	ldrbtvc	r6, [r2], #-373	; 0x175
  98:	78745f30 	ldmdavc	r4!, {r4, r5, r8, r9, sl, fp, ip, lr}^
  9c:	7274735f 	rsbsvc	r7, r4, #2080374785	; 0x7c000001
  a0:	00676e69 	rsbeq	r6, r7, r9, ror #28

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	00010010 	andeq	r0, r1, r0, lsl r0
  1c:	00000018 	andeq	r0, r0, r8, lsl r0
  20:	8b080e42 	blhi	203930 <stack_top+0x1f2854>
  24:	42018e02 	andmi	r8, r1, #2, 28
  28:	00040b0c 	andeq	r0, r4, ip, lsl #22
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000014 	andeq	r0, r0, r4, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	00010028 	andeq	r0, r1, r8, lsr #32
  48:	00000050 	andeq	r0, r0, r0, asr r0
  4c:	8b040e42 	blhi	10395c <stack_top+0xf2880>
  50:	0b0d4201 	bleq	35085c <stack_top+0x33f780>
