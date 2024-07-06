
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

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000036 	andeq	r0, r0, r6, lsr r0
   4:	00200002 	eoreq	r0, r0, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
  20:	2e707574 	mrccs	5, 3, r7, cr0, cr4, {3}
  24:	00000073 	andeq	r0, r0, r3, ror r0
  28:	05000000 	streq	r0, [r0, #-0]
  2c:	01000002 	tsteq	r0, r2
  30:	312f1500 	teqcc	pc, r0, lsl #10
  34:	0002022a 	andeq	r0, r2, sl, lsr #4
  38:	00310101 	eorseq	r0, r1, r1, lsl #2
  3c:	00020000 	andeq	r0, r2, r0
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
  48:	0101000d 	tsteq	r1, sp
  4c:	00000101 	andeq	r0, r0, r1, lsl #2
  50:	00000100 	andeq	r0, r0, r0, lsl #2
  54:	70610001 	rsbvc	r0, r1, r1
  58:	00632e70 	rsbeq	r2, r3, r0, ror lr
  5c:	00000000 	andeq	r0, r0, r0
  60:	10020500 	andne	r0, r2, r0, lsl #10
  64:	17000100 	strne	r0, [r0, -r0, lsl #2]
  68:	04024b4b 	streq	r4, [r2], #-2891	; 0xb4b
  6c:	39010100 	stmdbcc	r1, {r8}
  70:	02000000 	andeq	r0, r0, #0
  74:	00001d00 	andeq	r1, r0, r0, lsl #26
  78:	fb010200 	blx	40882 <stack_top+0x2f7a6>
  7c:	01000d0e 	tsteq	r0, lr, lsl #26
  80:	00010101 	andeq	r0, r1, r1, lsl #2
  84:	00010000 	andeq	r0, r1, r0
  88:	75000100 	strvc	r0, [r0, #-256]	; 0x100
  8c:	2e747261 	cdpcs	2, 7, cr7, cr4, cr1, {3}
  90:	00000063 	andeq	r0, r0, r3, rrx
  94:	05000000 	streq	r0, [r0, #-0]
  98:	01002802 	tsteq	r0, r2, lsl #16
  9c:	30831700 	addcc	r1, r3, r0, lsl #14
  a0:	04020083 	streq	r0, [r2], #-131	; 0x83
  a4:	02886301 	addeq	r6, r8, #67108864	; 0x4000000
  a8:	01010008 	tsteq	r1, r8

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000088 	andeq	r0, r0, r8, lsl #1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000000 	andeq	r0, r0, r0
  10:	00010000 	andeq	r0, r1, r0
  14:	00010010 	andeq	r0, r1, r0, lsl r0
  18:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
  1c:	2e707574 	mrccs	5, 3, r7, cr0, cr4, {3}
  20:	3a460073 	bcc	11801f4 <stack_top+0x116f118>
  24:	5554535c 	ldrbpl	r5, [r4, #-860]	; 0x35c
  28:	435c5944 	cmpmi	ip, #68, 18	; 0x110000
  2c:	5352554f 	cmppl	r2, #331350016	; 0x13c00000
  30:	4d5c5345 	ldclmi	3, cr5, [ip, #-276]	; 0xfffffeec
  34:	65747361 	ldrbvs	r7, [r4, #-865]!	; 0x361
  38:	676e6972 			; <UNDEFINED> instruction: 0x676e6972
  3c:	626d4520 	rsbvs	r4, sp, #32, 10	; 0x8000000
  40:	65646465 	strbvs	r6, [r4, #-1125]!	; 0x465
  44:	79532064 	ldmdbvc	r3, {r2, r5, r6, sp}^
  48:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  4c:	70694420 	rsbvc	r4, r9, r0, lsr #8
  50:	616d6f6c 	cmnvs	sp, ip, ror #30
  54:	5353415c 	cmppl	r3, #92, 2
  58:	4d4e4749 	stclmi	7, cr4, [lr, #-292]	; 0xfffffedc
  5c:	53544e45 	cmppl	r4, #1104	; 0x450
  60:	696e555c 	stmdbvs	lr!, {r2, r3, r4, r6, r8, sl, ip, lr}^
  64:	5f335f74 	svcpl	0x00335f74
  68:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xd45
  6c:	64656464 	strbtvs	r6, [r5], #-1124	; 0x464
  70:	4c5c435f 	mrrcmi	3, 5, r4, ip, cr15
  74:	6f737365 	svcvs	0x00737365
  78:	00325f6e 	eorseq	r5, r2, lr, ror #30
  7c:	20554e47 	subscs	r4, r5, r7, asr #28
  80:	32205341 	eorcc	r5, r0, #67108865	; 0x4000001
  84:	2e33322e 	cdpcs	2, 3, cr3, cr3, cr14, {1}
  88:	80010031 	andhi	r0, r1, r1, lsr r0
  8c:	00000068 	andeq	r0, r0, r8, rrx
  90:	00140002 	andseq	r0, r4, r2
  94:	01040000 	mrseq	r0, (UNDEF: 4)
  98:	00000063 	andeq	r0, r0, r3, rrx
  9c:	00007d01 	andeq	r7, r0, r1, lsl #26
  a0:	00000000 	andeq	r0, r0, r0
  a4:	01001000 	mrseq	r1, (UNDEF: 0)
  a8:	01002800 	tsteq	r0, r0, lsl #16
  ac:	00003a00 	andeq	r3, r0, r0, lsl #20
  b0:	83010200 	movwhi	r0, #4608	; 0x1200
  b4:	01000000 	mrseq	r0, (UNDEF: 0)
  b8:	00100105 	andseq	r0, r0, r5, lsl #2
  bc:	00280001 	eoreq	r0, r8, r1
  c0:	00000001 	andeq	r0, r0, r1
  c4:	03010000 	movweq	r0, #4096	; 0x1000
  c8:	00000052 	andeq	r0, r0, r2, asr r0
  cc:	0000004b 	andeq	r0, r0, fp, asr #32
  d0:	00004b04 	andeq	r4, r0, r4, lsl #22
  d4:	05006300 	streq	r6, [r0, #-768]	; 0x300
  d8:	005a0704 	subseq	r0, sl, r4, lsl #14
  dc:	01050000 	mrseq	r0, (UNDEF: 5)
  e0:	00006f08 	andeq	r6, r0, r8, lsl #30
  e4:	74730600 	ldrbtvc	r0, [r3], #-1536	; 0x600
  e8:	03010072 	movweq	r0, #4210	; 0x1072
  ec:	0000003b 	andeq	r0, r0, fp, lsr r0
  f0:	78030501 	stmdavc	r3, {r0, r8, sl}
  f4:	00000100 	andeq	r0, r0, r0, lsl #2
  f8:	00000058 	andeq	r0, r0, r8, asr r0
  fc:	006e0002 	rsbeq	r0, lr, r2
 100:	01040000 	mrseq	r0, (UNDEF: 4)
 104:	00000063 	andeq	r0, r0, r3, rrx
 108:	00008d01 	andeq	r8, r0, r1, lsl #26
 10c:	00000000 	andeq	r0, r0, r0
 110:	01002800 	tsteq	r0, r0, lsl #16
 114:	01007800 	tsteq	r0, r0, lsl #16
 118:	00006f00 	andeq	r6, r0, r0, lsl #30
 11c:	94010200 	strls	r0, [r1], #-512	; 0x200
 120:	01000000 	mrseq	r0, (UNDEF: 0)
 124:	00280105 	eoreq	r0, r8, r5, lsl #2
 128:	00780001 	rsbseq	r0, r8, r1
 12c:	002c0001 	eoreq	r0, ip, r1
 130:	4e010000 	cdpmi	0, 0, cr0, cr1, cr0, {0}
 134:	03000000 	movweq	r0, #0
 138:	00000088 	andeq	r0, r0, r8, lsl #1
 13c:	004e0501 	subeq	r0, lr, r1, lsl #10
 140:	91020000 	mrsls	r0, (UNDEF: 2)
 144:	04040074 	streq	r0, [r4], #-116	; 0x74
 148:	00000054 	andeq	r0, r0, r4, asr r0
 14c:	6f080105 	svcvs	0x00080105
 150:	00000000 	andeq	r0, r0, r0

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	10001101 	andne	r1, r0, r1, lsl #2
   4:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
   8:	1b080301 	blne	200c14 <stack_top+0x1efb38>
   c:	13082508 	movwne	r2, #34056	; 0x8508
  10:	00000005 	andeq	r0, r0, r5
  14:	25011101 	strcs	r1, [r1, #-257]	; 0x101
  18:	030b130e 	movweq	r1, #45838	; 0xb30e
  1c:	110e1b0e 	tstne	lr, lr, lsl #22
  20:	10011201 	andne	r1, r1, r1, lsl #4
  24:	02000006 	andeq	r0, r0, #6
  28:	0c3f002e 	ldceq	0, cr0, [pc], #-184	; ffffff78 <stack_top+0xfffeee9c>
  2c:	0b3a0e03 	bleq	e83840 <stack_top+0xe72764>
  30:	0c270b3b 	stceq	11, cr0, [r7], #-236	; 0xffffff14
  34:	01120111 	tsteq	r2, r1, lsl r1
  38:	42960640 	addsmi	r0, r6, #64, 12	; 0x4000000
  3c:	0300000c 	movweq	r0, #12
  40:	13490101 	movtne	r0, #37121	; 0x9101
  44:	00001301 	andeq	r1, r0, r1, lsl #6
  48:	49002104 	stmdbmi	r0, {r2, r8, sp}
  4c:	000b2f13 	andeq	r2, fp, r3, lsl pc
  50:	00240500 	eoreq	r0, r4, r0, lsl #10
  54:	0b3e0b0b 	bleq	f82c88 <stack_top+0xf71bac>
  58:	00000e03 	andeq	r0, r0, r3, lsl #28
  5c:	03003406 	movweq	r3, #1030	; 0x406
  60:	3b0b3a08 	blcc	2ce888 <stack_top+0x2bd7ac>
  64:	3f13490b 	svccc	0x0013490b
  68:	000a020c 	andeq	r0, sl, ip, lsl #4
  6c:	11010000 	mrsne	r0, (UNDEF: 1)
  70:	130e2501 	movwne	r2, #58625	; 0xe501
  74:	1b0e030b 	blne	380ca8 <stack_top+0x36fbcc>
  78:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
  7c:	00061001 	andeq	r1, r6, r1
  80:	012e0200 	teqeq	lr, r0, lsl #4
  84:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
  88:	0b3b0b3a 	bleq	ec2d78 <stack_top+0xeb1c9c>
  8c:	01110c27 	tsteq	r1, r7, lsr #24
  90:	06400112 			; <UNDEFINED> instruction: 0x06400112
  94:	010c4297 			; <UNDEFINED> instruction: 0x010c4297
  98:	03000013 	movweq	r0, #19
  9c:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
  a0:	0b3b0b3a 	bleq	ec2d90 <stack_top+0xeb1cb4>
  a4:	0a021349 	beq	84dd0 <stack_top+0x73cf4>
  a8:	0f040000 	svceq	0x00040000
  ac:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
  b0:	05000013 	streq	r0, [r0, #-19]
  b4:	0b0b0024 	bleq	2c014c <stack_top+0x2af070>
  b8:	0e030b3e 	vmoveq.16	d3[0], r0
  bc:	Address 0x000000bc is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	00010000 	andeq	r0, r1, r0
  14:	00000010 	andeq	r0, r0, r0, lsl r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	008c0002 	addeq	r0, ip, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00010010 	andeq	r0, r1, r0, lsl r0
  34:	00000018 	andeq	r0, r0, r8, lsl r0
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	00f80002 	rscseq	r0, r8, r2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	00010028 	andeq	r0, r1, r8, lsr #32
  54:	00000050 	andeq	r0, r0, r0, asr r0
	...

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
