
TivaC_Toggle_Green.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <vectors_ArrOfPtrToFunc>:
   0:	2000040c 	andcs	r0, r0, ip, lsl #8
   4:	000000a9 	andeq	r0, r0, r9, lsr #1
   8:	00000145 	andeq	r0, r0, r5, asr #2
   c:	00000145 	andeq	r0, r0, r5, asr #2
  10:	00000145 	andeq	r0, r0, r5, asr #2
  14:	00000145 	andeq	r0, r0, r5, asr #2
  18:	00000145 	andeq	r0, r0, r5, asr #2

0000001c <main>:
  1c:	b480      	push	{r7}
  1e:	b085      	sub	sp, #20
  20:	af00      	add	r7, sp, #0
  22:	4b1d      	ldr	r3, [pc, #116]	@ (98 <main+0x7c>)
  24:	2220      	movs	r2, #32
  26:	601a      	str	r2, [r3, #0]
  28:	2300      	movs	r3, #0
  2a:	60fb      	str	r3, [r7, #12]
  2c:	e002      	b.n	34 <main+0x18>
  2e:	68fb      	ldr	r3, [r7, #12]
  30:	3301      	adds	r3, #1
  32:	60fb      	str	r3, [r7, #12]
  34:	68fb      	ldr	r3, [r7, #12]
  36:	2bc7      	cmp	r3, #199	@ 0xc7
  38:	ddf9      	ble.n	2e <main+0x12>
  3a:	4b18      	ldr	r3, [pc, #96]	@ (9c <main+0x80>)
  3c:	681b      	ldr	r3, [r3, #0]
  3e:	4a17      	ldr	r2, [pc, #92]	@ (9c <main+0x80>)
  40:	f043 0308 	orr.w	r3, r3, #8
  44:	6013      	str	r3, [r2, #0]
  46:	4b16      	ldr	r3, [pc, #88]	@ (a0 <main+0x84>)
  48:	681b      	ldr	r3, [r3, #0]
  4a:	4a15      	ldr	r2, [pc, #84]	@ (a0 <main+0x84>)
  4c:	f043 0308 	orr.w	r3, r3, #8
  50:	6013      	str	r3, [r2, #0]
  52:	4b14      	ldr	r3, [pc, #80]	@ (a4 <main+0x88>)
  54:	681b      	ldr	r3, [r3, #0]
  56:	4a13      	ldr	r2, [pc, #76]	@ (a4 <main+0x88>)
  58:	f043 0308 	orr.w	r3, r3, #8
  5c:	6013      	str	r3, [r2, #0]
  5e:	2300      	movs	r3, #0
  60:	60bb      	str	r3, [r7, #8]
  62:	e002      	b.n	6a <main+0x4e>
  64:	68bb      	ldr	r3, [r7, #8]
  66:	3301      	adds	r3, #1
  68:	60bb      	str	r3, [r7, #8]
  6a:	68bb      	ldr	r3, [r7, #8]
  6c:	f242 3227 	movw	r2, #8999	@ 0x2327
  70:	4293      	cmp	r3, r2
  72:	ddf7      	ble.n	64 <main+0x48>
  74:	4b0b      	ldr	r3, [pc, #44]	@ (a4 <main+0x88>)
  76:	681b      	ldr	r3, [r3, #0]
  78:	4a0a      	ldr	r2, [pc, #40]	@ (a4 <main+0x88>)
  7a:	f023 0308 	bic.w	r3, r3, #8
  7e:	6013      	str	r3, [r2, #0]
  80:	2300      	movs	r3, #0
  82:	607b      	str	r3, [r7, #4]
  84:	e002      	b.n	8c <main+0x70>
  86:	687b      	ldr	r3, [r7, #4]
  88:	3301      	adds	r3, #1
  8a:	607b      	str	r3, [r7, #4]
  8c:	687b      	ldr	r3, [r7, #4]
  8e:	f242 3227 	movw	r2, #8999	@ 0x2327
  92:	4293      	cmp	r3, r2
  94:	ddf7      	ble.n	86 <main+0x6a>
  96:	e7dc      	b.n	52 <main+0x36>
  98:	400fe108 	andmi	lr, pc, r8, lsl #2
  9c:	40025400 	andmi	r5, r2, r0, lsl #8
  a0:	4002551c 	andmi	r5, r2, ip, lsl r5
  a4:	400253fc 	strdmi	r5, [r2], -ip

000000a8 <Reset_handler>:
  a8:	b580      	push	{r7, lr}
  aa:	b086      	sub	sp, #24
  ac:	af00      	add	r7, sp, #0
  ae:	4b1f      	ldr	r3, [pc, #124]	@ (12c <Reset_handler+0x84>)
  b0:	681b      	ldr	r3, [r3, #0]
  b2:	60bb      	str	r3, [r7, #8]
  b4:	2300      	movs	r3, #0
  b6:	60fb      	str	r3, [r7, #12]
  b8:	4a1d      	ldr	r2, [pc, #116]	@ (130 <Reset_handler+0x88>)
  ba:	4b1e      	ldr	r3, [pc, #120]	@ (134 <Reset_handler+0x8c>)
  bc:	1ad3      	subs	r3, r2, r3
  be:	607b      	str	r3, [r7, #4]
  c0:	4b1d      	ldr	r3, [pc, #116]	@ (138 <Reset_handler+0x90>)
  c2:	617b      	str	r3, [r7, #20]
  c4:	4b1b      	ldr	r3, [pc, #108]	@ (134 <Reset_handler+0x8c>)
  c6:	613b      	str	r3, [r7, #16]
  c8:	2300      	movs	r3, #0
  ca:	60fb      	str	r3, [r7, #12]
  cc:	e00c      	b.n	e8 <Reset_handler+0x40>
  ce:	697b      	ldr	r3, [r7, #20]
  d0:	781a      	ldrb	r2, [r3, #0]
  d2:	693b      	ldr	r3, [r7, #16]
  d4:	701a      	strb	r2, [r3, #0]
  d6:	68fb      	ldr	r3, [r7, #12]
  d8:	3301      	adds	r3, #1
  da:	60fb      	str	r3, [r7, #12]
  dc:	693b      	ldr	r3, [r7, #16]
  de:	3301      	adds	r3, #1
  e0:	613b      	str	r3, [r7, #16]
  e2:	697b      	ldr	r3, [r7, #20]
  e4:	3301      	adds	r3, #1
  e6:	617b      	str	r3, [r7, #20]
  e8:	68fa      	ldr	r2, [r7, #12]
  ea:	687b      	ldr	r3, [r7, #4]
  ec:	429a      	cmp	r2, r3
  ee:	d3ee      	bcc.n	ce <Reset_handler+0x26>
  f0:	4a12      	ldr	r2, [pc, #72]	@ (13c <Reset_handler+0x94>)
  f2:	4b13      	ldr	r3, [pc, #76]	@ (140 <Reset_handler+0x98>)
  f4:	1ad3      	subs	r3, r2, r3
  f6:	607b      	str	r3, [r7, #4]
  f8:	2300      	movs	r3, #0
  fa:	617b      	str	r3, [r7, #20]
  fc:	4b10      	ldr	r3, [pc, #64]	@ (140 <Reset_handler+0x98>)
  fe:	613b      	str	r3, [r7, #16]
 100:	2300      	movs	r3, #0
 102:	60fb      	str	r3, [r7, #12]
 104:	e008      	b.n	118 <Reset_handler+0x70>
 106:	693b      	ldr	r3, [r7, #16]
 108:	2200      	movs	r2, #0
 10a:	701a      	strb	r2, [r3, #0]
 10c:	68fb      	ldr	r3, [r7, #12]
 10e:	3301      	adds	r3, #1
 110:	60fb      	str	r3, [r7, #12]
 112:	693b      	ldr	r3, [r7, #16]
 114:	3301      	adds	r3, #1
 116:	613b      	str	r3, [r7, #16]
 118:	68fa      	ldr	r2, [r7, #12]
 11a:	687b      	ldr	r3, [r7, #4]
 11c:	429a      	cmp	r2, r3
 11e:	d3f2      	bcc.n	106 <Reset_handler+0x5e>
 120:	f7ff ff7c 	bl	1c <main>
 124:	bf00      	nop
 126:	3718      	adds	r7, #24
 128:	46bd      	mov	sp, r7
 12a:	bd80      	pop	{r7, pc}
 12c:	00000000 	andeq	r0, r0, r0
 130:	20000004 	andcs	r0, r0, r4
 134:	20000000 	andcs	r0, r0, r0
 138:	00000150 	andeq	r0, r0, r0, asr r1
 13c:	2000040c 	andcs	r0, r0, ip, lsl #8
 140:	20000004 	andcs	r0, r0, r4

00000144 <Default_handler>:
 144:	b580      	push	{r7, lr}
 146:	af00      	add	r7, sp, #0
 148:	f7ff ffae 	bl	a8 <Reset_handler>
 14c:	bf00      	nop
 14e:	bd80      	pop	{r7, pc}

Disassembly of section .data:

20000000 <DataArr>:
20000000:	00030201 	andeq	r0, r3, r1, lsl #4

Disassembly of section .bss:

20000004 <BssStruct>:
	...

2000000c <stack_top>:
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000178 	andeq	r0, r0, r8, ror r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000061 	andeq	r0, r0, r1, rrx
  10:	00012c0c 	andeq	r2, r1, ip, lsl #24
  14:	0000c400 	andeq	ip, r0, r0, lsl #8
  18:	00001c00 	andeq	r1, r0, r0, lsl #24
  1c:	0000a800 	andeq	sl, r0, r0, lsl #16
  20:	00000000 	andeq	r0, r0, r0
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	00000023 	andeq	r0, r0, r3, lsr #32
  2c:	21080102 	tstcs	r8, r2, lsl #2
  30:	02000000 	andeq	r0, r0, #0
  34:	01330502 	teqeq	r3, r2, lsl #10
  38:	02020000 	andeq	r0, r2, #0
  3c:	00003707 	andeq	r3, r0, r7, lsl #14
  40:	05040200 	streq	r0, [r4, #-512]	@ 0xfffffe00
  44:	00000123 	andeq	r0, r0, r3, lsr #2
  48:	00005603 	andeq	r5, r0, r3, lsl #12
  4c:	194f0200 	stmdbne	pc, {r9}^	@ <UNPREDICTABLE>
  50:	00000054 	andeq	r0, r0, r4, asr r0
  54:	0f070402 	svceq	0x00070402
  58:	02000000 	andeq	r0, r0, #0
  5c:	011e0508 	tsteq	lr, r8, lsl #10
  60:	08020000 	stmdaeq	r2, {}	@ <UNPREDICTABLE>
  64:	00000a07 	andeq	r0, r0, r7, lsl #20
  68:	05040400 	streq	r0, [r4, #-1024]	@ 0xfffffc00
  6c:	00746e69 	rsbseq	r6, r4, r9, ror #28
  70:	14070402 	strne	r0, [r7], #-1026	@ 0xfffffbfe
  74:	03000000 	movweq	r0, #0
  78:	00000058 	andeq	r0, r0, r8, asr r0
  7c:	48143003 	ldmdami	r4, {r0, r1, ip, sp}
  80:	05000000 	streq	r0, [r0, #-0]
  84:	00000077 	andeq	r0, r0, r7, ror r0
  88:	0000a406 	andeq	sl, r0, r6, lsl #8
  8c:	00009800 	andeq	r9, r0, r0, lsl #16
  90:	00700700 	rsbseq	r0, r0, r0, lsl #14
  94:	00020000 	andeq	r0, r2, r0
  98:	00008805 	andeq	r8, r0, r5, lsl #16
  9c:	08010200 	stmdaeq	r1, {r9}
  a0:	0000002a 	andeq	r0, r0, sl, lsr #32
  a4:	00009d05 	andeq	r9, r0, r5, lsl #26
  a8:	002f0800 	eoreq	r0, pc, r0, lsl #16
  ac:	09010000 	stmdbeq	r1, {}	@ <UNPREDICTABLE>
  b0:	0000980f 	andeq	r9, r0, pc, lsl #16
  b4:	03050100 	movweq	r0, #20736	@ 0x5100
  b8:	20000000 	andcs	r0, r0, r0
  bc:	08004109 	stmdaeq	r0, {r0, r3, r8, lr}
  c0:	e5110a01 	ldr	r0, [r1, #-2561]	@ 0xfffff5ff
  c4:	0a000000 	beq	cc <Reset_handler+0x24>
  c8:	01006863 	tsteq	r0, r3, ror #16
  cc:	009d070b 	addseq	r0, sp, fp, lsl #14
  d0:	23020000 	movwcs	r0, #8192	@ 0x2000
  d4:	61760a00 	cmnvs	r6, r0, lsl #20
  d8:	0c010072 	stceq	0, cr0, [r1], {114}	@ 0x72
  dc:	0000770b 	andeq	r7, r0, fp, lsl #14
  e0:	04230200 	strteq	r0, [r3], #-512	@ 0xfffffe00
  e4:	00bc0500 	adcseq	r0, ip, r0, lsl #10
  e8:	00080000 	andeq	r0, r8, r0
  ec:	01000000 	mrseq	r0, (UNDEF: 0)
  f0:	00e5030d 	rsceq	r0, r5, sp, lsl #6
  f4:	05010000 	streq	r0, [r1, #-0]
  f8:	00000403 	andeq	r0, r0, r3, lsl #8
  fc:	bf010b20 	svclt	0x00010b20
 100:	01000000 	mrseq	r0, (UNDEF: 0)
 104:	69010511 	stmdbvs	r1, {r0, r4, r8, sl}
 108:	1c000000 	stcne	0, cr0, [r0], {-0}
 10c:	a8000000 	stmdage	r0, {}	@ <UNPREDICTABLE>
 110:	00000000 	andeq	r0, r0, r0
 114:	01000000 	mrseq	r0, (UNDEF: 0)
 118:	00004a0c 	andeq	r4, r0, ip, lsl #20
 11c:	14130100 	ldrne	r0, [r3], #-256	@ 0xffffff00
 120:	00000083 	andeq	r0, r0, r3, lsl #1
 124:	0d689102 	stfeqp	f1, [r8, #-8]!
 128:	00000028 	andeq	r0, r0, r8, lsr #32
 12c:	0000003a 	andeq	r0, r0, sl, lsr r0
 130:	00000144 	andeq	r0, r0, r4, asr #2
 134:	00004a0c 	andeq	r4, r0, ip, lsl #20
 138:	0b160100 	bleq	580540 <_END_text+0x5803f0>
 13c:	00000069 	andeq	r0, r0, r9, rrx
 140:	00749102 	rsbseq	r9, r4, r2, lsl #2
 144:	00005e0d 	andeq	r5, r0, sp, lsl #28
 148:	00007400 	andeq	r7, r0, r0, lsl #8
 14c:	00016100 	andeq	r6, r1, r0, lsl #2
 150:	004a0c00 	subeq	r0, sl, r0, lsl #24
 154:	1e010000 	cdpne	0, 0, cr0, cr1, cr0, {0}
 158:	0000690c 	andeq	r6, r0, ip, lsl #18
 15c:	70910200 	addsvc	r0, r1, r0, lsl #4
 160:	00800e00 	addeq	r0, r0, r0, lsl #28
 164:	00960000 	addseq	r0, r6, r0
 168:	4a0c0000 	bmi	300170 <_END_text+0x300020>
 16c:	01000000 	mrseq	r0, (UNDEF: 0)
 170:	00690c20 	rsbeq	r0, r9, r0, lsr #24
 174:	91020000 	mrsls	r0, (UNDEF: 2)
 178:	0000006c 	andeq	r0, r0, ip, rrx
 17c:	000001c6 	andeq	r0, r0, r6, asr #3
 180:	00c80002 	sbceq	r0, r8, r2
 184:	01040000 	mrseq	r0, (UNDEF: 4)
 188:	00000061 	andeq	r0, r0, r1, rrx
 18c:	00013d0c 	andeq	r3, r1, ip, lsl #26
 190:	0000c400 	andeq	ip, r0, r0, lsl #8
 194:	0000a800 	andeq	sl, r0, r0, lsl #16
 198:	00015000 	andeq	r5, r1, r0
 19c:	00027800 	andeq	r7, r2, r0, lsl #16
 1a0:	06010200 	streq	r0, [r1], -r0, lsl #4
 1a4:	00000023 	andeq	r0, r0, r3, lsr #32
 1a8:	00014703 	andeq	r4, r1, r3, lsl #14
 1ac:	182b0200 	stmdane	fp!, {r9}
 1b0:	00000038 	andeq	r0, r0, r8, lsr r0
 1b4:	21080102 	tstcs	r8, r2, lsl #2
 1b8:	02000000 	andeq	r0, r0, #0
 1bc:	01330502 	teqeq	r3, r2, lsl #10
 1c0:	02020000 	andeq	r0, r2, #0
 1c4:	00003707 	andeq	r3, r0, r7, lsl #14
 1c8:	05040200 	streq	r0, [r4, #-512]	@ 0xfffffe00
 1cc:	00000123 	andeq	r0, r0, r3, lsr #2
 1d0:	00005603 	andeq	r5, r0, r3, lsl #12
 1d4:	194f0200 	stmdbne	pc, {r9}^	@ <UNPREDICTABLE>
 1d8:	00000060 	andeq	r0, r0, r0, rrx
 1dc:	0f070402 	svceq	0x00070402
 1e0:	02000000 	andeq	r0, r0, #0
 1e4:	011e0508 	tsteq	lr, r8, lsl #10
 1e8:	08020000 	stmdaeq	r2, {}	@ <UNPREDICTABLE>
 1ec:	00000a07 	andeq	r0, r0, r7, lsl #20
 1f0:	05040400 	streq	r0, [r4, #-1024]	@ 0xfffffc00
 1f4:	00746e69 	rsbseq	r6, r4, r9, ror #28
 1f8:	14070402 	strne	r0, [r7], #-1026	@ 0xfffffbfe
 1fc:	03000000 	movweq	r0, #0
 200:	00000149 	andeq	r0, r0, r9, asr #2
 204:	2c131803 	ldccs	8, cr1, [r3], {3}
 208:	03000000 	movweq	r0, #0
 20c:	00000058 	andeq	r0, r0, r8, asr r0
 210:	54143003 	ldrpl	r3, [r4], #-3
 214:	05000000 	streq	r0, [r0, #-0]
 218:	0000008f 	andeq	r0, r0, pc, lsl #1
 21c:	000000ab 	andeq	r0, r0, fp, lsr #1
 220:	00007c06 	andeq	r7, r0, r6, lsl #24
 224:	0700ff00 	streq	pc, [r0, -r0, lsl #30]
 228:	00000164 	andeq	r0, r0, r4, ror #2
 22c:	9b110701 	blls	441e38 <_END_text+0x441ce8>
 230:	05000000 	streq	r0, [r0, #-0]
 234:	00000c03 	andeq	r0, r0, r3, lsl #24
 238:	00d80520 	sbcseq	r0, r8, r0, lsr #10
 23c:	00cd0000 	sbceq	r0, sp, r0
 240:	7c060000 	stcvc	0, cr0, [r6], {-0}
 244:	06000000 	streq	r0, [r0], -r0
 248:	00bd0800 	adcseq	r0, sp, r0, lsl #16
 24c:	04090000 	streq	r0, [r9], #-0
 250:	000000dd 	ldrdeq	r0, [r0], -sp
 254:	0000d208 	andeq	sp, r0, r8, lsl #4
 258:	0b010a00 	bleq	42a60 <_END_text+0x42910>
 25c:	000001b7 			@ <UNDEFINED> instruction: 0x000001b7
 260:	cd0e0f01 	stcgt	15, cr0, [lr, #-4]
 264:	01000000 	mrseq	r0, (UNDEF: 0)
 268:	00000305 	andeq	r0, r0, r5, lsl #6
 26c:	7d0c0000 	stcvc	0, cr0, [ip, #-0]
 270:	01000001 	tsteq	r0, r1
 274:	008f1119 	addeq	r1, pc, r9, lsl r1	@ <UNPREDICTABLE>
 278:	01010000 	mrseq	r0, (UNDEF: 1)
 27c:	0001920c 	andeq	r9, r1, ip, lsl #4
 280:	111a0100 	tstne	sl, r0, lsl #2
 284:	0000008f 	andeq	r0, r0, pc, lsl #1
 288:	e30c0101 	movw	r0, #49409	@ 0xc101
 28c:	01000001 	tsteq	r0, r1
 290:	008f111b 	addeq	r1, pc, fp, lsl r1	@ <UNPREDICTABLE>
 294:	01010000 	mrseq	r0, (UNDEF: 1)
 298:	0001870c 	andeq	r8, r1, ip, lsl #14
 29c:	111c0100 	tstne	ip, r0, lsl #2
 2a0:	0000008f 	andeq	r0, r0, pc, lsl #1
 2a4:	ae0c0101 	adfgee	f0, f4, f1
 2a8:	01000001 	tsteq	r0, r1
 2ac:	008f111d 	addeq	r1, pc, sp, lsl r1	@ <UNPREDICTABLE>
 2b0:	01010000 	mrseq	r0, (UNDEF: 1)
 2b4:	00bf010d 	adcseq	r0, pc, sp, lsl #2
 2b8:	04010000 	streq	r0, [r1], #-0
 2bc:	0075010c 	rsbseq	r0, r5, ip, lsl #2
 2c0:	0e010000 	cdpeq	0, 0, cr0, cr1, cr0, {0}
 2c4:	00019e01 	andeq	r9, r1, r1, lsl #28
 2c8:	063b0100 	ldrteq	r0, [fp], -r0, lsl #2
 2cc:	00014401 	andeq	r4, r1, r1, lsl #8
 2d0:	00015000 	andeq	r5, r1, r0
 2d4:	00003800 	andeq	r3, r0, r0, lsl #16
 2d8:	010f0100 	mrseq	r0, (UNDEF: 31)
 2dc:	000001ce 	andeq	r0, r0, lr, asr #3
 2e0:	01061f01 	tsteq	r6, r1, lsl #30
 2e4:	000000a8 	andeq	r0, r0, r8, lsr #1
 2e8:	00000144 	andeq	r0, r0, r4, asr #2
 2ec:	00000064 	andeq	r0, r0, r4, rrx
 2f0:	0001c301 	andeq	ip, r1, r1, lsl #6
 2f4:	016e0700 	cmneq	lr, r0, lsl #14
 2f8:	20010000 	andcs	r0, r1, r0
 2fc:	00008f0b 	andeq	r8, r0, fp, lsl #30
 300:	68910200 	ldmvs	r1, {r9}
 304:	00015107 	andeq	r5, r1, r7, lsl #2
 308:	0b210100 	bleq	840710 <_END_text+0x8405c0>
 30c:	0000008f 	andeq	r0, r0, pc, lsl #1
 310:	07649102 	strbeq	r9, [r4, -r2, lsl #2]!
 314:	0000015e 	andeq	r0, r0, lr, asr r1
 318:	c30b2201 	movwgt	r2, #45569	@ 0xb201
 31c:	02000001 	andeq	r0, r0, #1
 320:	dc077491 	cfstrsle	mvf7, [r7], {145}	@ 0x91
 324:	01000001 	tsteq	r0, r1
 328:	01c31322 	biceq	r1, r3, r2, lsr #6
 32c:	91020000 	mrsls	r0, (UNDEF: 2)
 330:	00691070 	rsbeq	r1, r9, r0, ror r0
 334:	8f0b2301 	svchi	0x000b2301
 338:	02000000 	andeq	r0, r0, #0
 33c:	09006c91 	stmdbeq	r0, {r0, r4, r7, sl, fp, sp, lr}
 340:	00008304 	andeq	r8, r0, r4, lsl #6
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	@ 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	@ 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <_END_text+0x2bff5c>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <_END_text+0x380ad8>
  24:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	0013490b 	andseq	r4, r3, fp, lsl #18
  2c:	00240400 	eoreq	r0, r4, r0, lsl #8
  30:	0b3e0b0b 	bleq	f82c64 <_END_text+0xf82b14>
  34:	00000803 	andeq	r0, r0, r3, lsl #16
  38:	49003505 	stmdbmi	r0, {r0, r2, r8, sl, ip, sp}
  3c:	06000013 			@ <UNDEFINED> instruction: 0x06000013
  40:	13490101 	movtne	r0, #37121	@ 0x9101
  44:	00001301 	andeq	r1, r0, r1, lsl #6
  48:	49002107 	stmdbmi	r0, {r0, r1, r2, r8, sp}
  4c:	000b2f13 	andeq	r2, fp, r3, lsl pc
  50:	00340800 	eorseq	r0, r4, r0, lsl #16
  54:	0b3a0e03 	bleq	e83868 <_END_text+0xe83718>
  58:	0b390b3b 	bleq	e42d4c <_END_text+0xe42bfc>
  5c:	0c3f1349 	ldceq	3, cr1, [pc], #-292	@ ffffff40 <_END_bss+0xdffffb34>
  60:	00000a02 	andeq	r0, r0, r2, lsl #20
  64:	03011309 	movweq	r1, #4873	@ 0x1309
  68:	3a0b0b08 	bcc	2c2c90 <_END_text+0x2c2b40>
  6c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  70:	0013010b 	andseq	r0, r3, fp, lsl #2
  74:	000d0a00 	andeq	r0, sp, r0, lsl #20
  78:	0b3a0803 	bleq	e8208c <_END_text+0xe81f3c>
  7c:	0b390b3b 	bleq	e42d70 <_END_text+0xe42c20>
  80:	0a381349 	beq	e04dac <_END_text+0xe04c5c>
  84:	2e0b0000 	cdpcs	0, 0, cr0, cr11, cr0, {0}
  88:	030c3f01 	movweq	r3, #52993	@ 0xcf01
  8c:	3b0b3a0e 	blcc	2ce8cc <_END_text+0x2ce77c>
  90:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	340c0000 	strcc	r0, [ip], #-0
  a4:	3a0e0300 	bcc	380cac <_END_text+0x380b5c>
  a8:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  ac:	0213490b 	andseq	r4, r3, #180224	@ 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	@ 0xffffffd8
  b4:	0111010b 	tsteq	r1, fp, lsl #2
  b8:	13010112 	movwne	r0, #4370	@ 0x1112
  bc:	0b0e0000 	bleq	3800c4 <_END_text+0x37ff74>
  c0:	12011101 	andne	r1, r1, #1073741824	@ 0x40000000
  c4:	00000001 	andeq	r0, r0, r1
  c8:	25011101 	strcs	r1, [r1, #-257]	@ 0xfffffeff
  cc:	030b130e 	movweq	r1, #45838	@ 0xb30e
  d0:	110e1b0e 	tstne	lr, lr, lsl #22
  d4:	10011201 	andne	r1, r1, r1, lsl #4
  d8:	02000006 	andeq	r0, r0, #6
  dc:	0b0b0024 	bleq	2c0174 <_END_text+0x2c0024>
  e0:	0e030b3e 	vmoveq.16	d3[0], r0
  e4:	16030000 	strne	r0, [r3], -r0
  e8:	3a0e0300 	bcc	380cf0 <_END_text+0x380ba0>
  ec:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  f0:	0013490b 	andseq	r4, r3, fp, lsl #18
  f4:	00240400 	eoreq	r0, r4, r0, lsl #8
  f8:	0b3e0b0b 	bleq	f82d2c <_END_text+0xf82bdc>
  fc:	00000803 	andeq	r0, r0, r3, lsl #16
 100:	49010105 	stmdbmi	r1, {r0, r2, r8}
 104:	00130113 	andseq	r0, r3, r3, lsl r1
 108:	00210600 	eoreq	r0, r1, r0, lsl #12
 10c:	0b2f1349 	bleq	bc4e38 <_END_text+0xbc4ce8>
 110:	34070000 	strcc	r0, [r7], #-0
 114:	3a0e0300 	bcc	380d1c <_END_text+0x380bcc>
 118:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 11c:	0213490b 	andseq	r4, r3, #180224	@ 0x2c000
 120:	0800000a 	stmdaeq	r0, {r1, r3}
 124:	13490026 	movtne	r0, #36902	@ 0x9026
 128:	0f090000 	svceq	0x00090000
 12c:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 130:	0a000013 	beq	184 <_END_text+0x34>
 134:	0c270015 	stceq	0, cr0, [r7], #-84	@ 0xffffffac
 138:	340b0000 	strcc	r0, [fp], #-0
 13c:	3a0e0300 	bcc	380d44 <_END_text+0x380bf4>
 140:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 144:	3f13490b 	svccc	0x0013490b
 148:	000a020c 	andeq	r0, sl, ip, lsl #4
 14c:	00340c00 	eorseq	r0, r4, r0, lsl #24
 150:	0b3a0e03 	bleq	e83964 <_END_text+0xe83814>
 154:	0b390b3b 	bleq	e42e48 <_END_text+0xe42cf8>
 158:	0c3f1349 	ldceq	3, cr1, [pc], #-292	@ 3c <main+0x20>
 15c:	00000c3c 	andeq	r0, r0, ip, lsr ip
 160:	3f002e0d 	svccc	0x00002e0d
 164:	3a0e030c 	bcc	380d9c <_END_text+0x380c4c>
 168:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 16c:	490c270b 	stmdbmi	ip, {r0, r1, r3, r8, r9, sl, sp}
 170:	000c3c13 	andeq	r3, ip, r3, lsl ip
 174:	002e0e00 	eoreq	r0, lr, r0, lsl #28
 178:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 17c:	0b3b0b3a 	bleq	ec2e6c <_END_text+0xec2d1c>
 180:	0c270b39 			@ <UNDEFINED> instruction: 0x0c270b39
 184:	01120111 	tsteq	r2, r1, lsl r1
 188:	42960640 	addsmi	r0, r6, #64, 12	@ 0x4000000
 18c:	0f00000c 	svceq	0x0000000c
 190:	0c3f012e 	ldfeqs	f0, [pc], #-184	@ e0 <Reset_handler+0x38>
 194:	0b3a0e03 	bleq	e839a8 <_END_text+0xe83858>
 198:	0b390b3b 	bleq	e42e8c <_END_text+0xe42d3c>
 19c:	01110c27 	tsteq	r1, r7, lsr #24
 1a0:	06400112 			@ <UNDEFINED> instruction: 0x06400112
 1a4:	010c4296 			@ <UNDEFINED> instruction: 0x010c4296
 1a8:	10000013 	andne	r0, r0, r3, lsl r0
 1ac:	08030034 	stmdaeq	r3, {r2, r4, r5}
 1b0:	0b3b0b3a 	bleq	ec2ea0 <_END_text+0xec2d50>
 1b4:	13490b39 	movtne	r0, #39737	@ 0x9b39
 1b8:	00000a02 	andeq	r0, r0, r2, lsl #20
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	187d0002 	ldmdane	sp!, {r1}^
  24:	00000006 	andeq	r0, r0, r6
  28:	0000008c 	andeq	r0, r0, ip, lsl #1
  2c:	18770002 	ldmdane	r7!, {r1}^
	...
  38:	0000009c 	muleq	r0, ip, r0
  3c:	0000009e 	muleq	r0, lr, r0
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	0000009e 	muleq	r0, lr, r0
  48:	000000a0 	andeq	r0, r0, r0, lsr #1
  4c:	087d0002 	ldmdaeq	sp!, {r1}^
  50:	000000a0 	andeq	r0, r0, r0, lsr #1
  54:	000000a8 	andeq	r0, r0, r8, lsr #1
  58:	08770002 	ldmdaeq	r7!, {r1}^
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	087d0002 	ldmdaeq	sp!, {r1}^
  7c:	00000004 	andeq	r0, r0, r4
  80:	00000006 	andeq	r0, r0, r6
  84:	207d0002 	rsbscs	r0, sp, r2
  88:	00000006 	andeq	r0, r0, r6
  8c:	00000080 	andeq	r0, r0, r0, lsl #1
  90:	20770002 	rsbscs	r0, r7, r2
  94:	00000080 	andeq	r0, r0, r0, lsl #1
  98:	00000082 	andeq	r0, r0, r2, lsl #1
  9c:	08770002 	ldmdaeq	r7!, {r1}^
  a0:	00000082 	andeq	r0, r0, r2, lsl #1
  a4:	0000009c 	muleq	r0, ip, r0
  a8:	087d0002 	ldmdaeq	sp!, {r1}^
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	0000001c 	andeq	r0, r0, ip, lsl r0
  14:	0000008c 	andeq	r0, r0, ip, lsl #1
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	017c0002 	cmneq	ip, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	000000a8 	andeq	r0, r0, r8, lsr #1
  34:	000000a8 	andeq	r0, r0, r8, lsr #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000274 	andeq	r0, r0, r4, ror r2
   4:	02000003 	andeq	r0, r0, #3
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	43010000 	movwmi	r0, #4096	@ 0x1000
  1c:	54535c3a 	ldrbpl	r5, [r3], #-3130	@ 0xfffff3c6
  20:	4d54535c 	ldclmi	3, cr5, [r4, #-368]	@ 0xfffffe90
  24:	75433233 	strbvc	r3, [r3, #-563]	@ 0xfffffdcd
  28:	44496562 	strbmi	r6, [r9], #-1378	@ 0xfffffa9e
  2c:	2e315f45 	cdpcs	15, 3, cr5, cr1, cr5, {2}
  30:	312e3531 			@ <UNDEFINED> instruction: 0x312e3531
  34:	4d54535c 	ldclmi	3, cr5, [r4, #-368]	@ 0xfffffe90
  38:	75433233 	strbvc	r3, [r3, #-563]	@ 0xfffffdcd
  3c:	44496562 	strbmi	r6, [r9], #-1378	@ 0xfffffa9e
  40:	6c705c45 	ldclvs	12, cr5, [r0], #-276	@ 0xfffffeec
  44:	6e696775 	mcrvs	7, 3, r6, cr9, cr5, {3}
  48:	6f635c73 	svcvs	0x00635c73
  4c:	74732e6d 	ldrbtvc	r2, [r3], #-3693	@ 0xfffff193
  50:	6d74732e 	ldclvs	3, cr7, [r4, #-184]!	@ 0xffffff48
  54:	75633233 	strbvc	r3, [r3, #-563]!	@ 0xfffffdcd
  58:	692e6562 	stmdbvs	lr!, {r1, r5, r6, r8, sl, sp, lr}
  5c:	6d2e6564 	cfstr32vs	mvfx6, [lr, #-400]!	@ 0xfffffe70
  60:	652e7563 	strvs	r7, [lr, #-1379]!	@ 0xfffffa9d
  64:	72657478 	rsbvc	r7, r5, #120, 8	@ 0x78000000
  68:	746c616e 	strbtvc	r6, [ip], #-366	@ 0xfffffe92
  6c:	736c6f6f 	cmnvc	ip, #444	@ 0x1bc
  70:	756e672e 	strbvc	r6, [lr, #-1838]!	@ 0xfffff8d2
  74:	6f6f742d 	svcvs	0x006f742d
  78:	662d736c 	strtvs	r7, [sp], -ip, ror #6
  7c:	732d726f 			@ <UNDEFINED> instruction: 0x732d726f
  80:	32336d74 	eorscc	r6, r3, #116, 26	@ 0x1d00
  84:	2e32312e 	rsfcssp	f3, f2, #0.5
  88:	65722e33 	ldrbvs	r2, [r2, #-3635]!	@ 0xfffff1cd
  8c:	772e316c 	strvc	r3, [lr, -ip, ror #2]!
  90:	32336e69 	eorscc	r6, r3, #1680	@ 0x690
  94:	302e315f 	eorcc	r3, lr, pc, asr r1
  98:	3030312e 	eorscc	r3, r0, lr, lsr #2
  9c:	3230322e 	eorscc	r3, r0, #-536870910	@ 0xe0000002
  a0:	31333034 	teqcc	r3, r4, lsr r0
  a4:	35323131 	ldrcc	r3, [r2, #-305]!	@ 0xfffffecf
  a8:	6f745c36 	svcvs	0x00745c36
  ac:	5c736c6f 	ldclpl	12, cr6, [r3], #-444	@ 0xfffffe44
  b0:	2f6e6962 	svccs	0x006e6962
  b4:	6c2f2e2e 	stcvs	14, cr2, [pc], #-184	@ 4 <vectors_ArrOfPtrToFunc+0x4>
  b8:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
  bc:	612f6363 			@ <UNDEFINED> instruction: 0x612f6363
  c0:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
  c4:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	@ 0xfffffe44
  c8:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
  cc:	2e32312f 	rsfcssp	f3, f2, #10.0
  d0:	2f312e33 	svccs	0x00312e33
  d4:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
  d8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
  dc:	2f2e2e2f 	svccs	0x002e2e2f
  e0:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	@ 0xfffffe7c
  e4:	656e6f6e 	strbvs	r6, [lr, #-3950]!	@ 0xfffff092
  e8:	6261652d 	rsbvs	r6, r1, #188743680	@ 0xb400000
  ec:	6e692f69 	cdpvs	15, 6, cr2, cr9, cr9, {3}
  f0:	64756c63 	ldrbtvs	r6, [r5], #-3171	@ 0xfffff39d
  f4:	616d2f65 	cmnvs	sp, r5, ror #30
  f8:	6e696863 	cdpvs	8, 6, cr6, cr9, cr3, {3}
  fc:	3a430065 	bcc	10c0298 <_END_text+0x10c0148>
 100:	5c54535c 	mrrcpl	3, 5, r5, r4, cr12
 104:	334d5453 	movtcc	r5, #54355	@ 0xd453
 108:	62754332 	rsbsvs	r4, r5, #-939524096	@ 0xc8000000
 10c:	45444965 	strbmi	r4, [r4, #-2405]	@ 0xfffff69b
 110:	312e315f 			@ <UNDEFINED> instruction: 0x312e315f
 114:	5c312e35 	ldcpl	14, cr2, [r1], #-212	@ 0xffffff2c
 118:	334d5453 	movtcc	r5, #54355	@ 0xd453
 11c:	62754332 	rsbsvs	r4, r5, #-939524096	@ 0xc8000000
 120:	45444965 	strbmi	r4, [r4, #-2405]	@ 0xfffff69b
 124:	756c705c 	strbvc	r7, [ip, #-92]!	@ 0xffffffa4
 128:	736e6967 	cmnvc	lr, #1687552	@ 0x19c000
 12c:	6d6f635c 	stclvs	3, cr6, [pc, #-368]!	@ ffffffc4 <_END_bss+0xdffffbb8>
 130:	2e74732e 	cdpcs	3, 7, cr7, cr4, cr14, {1}
 134:	336d7473 	cmncc	sp, #1929379840	@ 0x73000000
 138:	62756332 	rsbsvs	r6, r5, #-939524096	@ 0xc8000000
 13c:	64692e65 	strbtvs	r2, [r9], #-3685	@ 0xfffff19b
 140:	636d2e65 	cmnvs	sp, #1616	@ 0x650
 144:	78652e75 	stmdavc	r5!, {r0, r2, r4, r5, r6, r9, sl, fp, sp}^
 148:	6e726574 	mrcvs	5, 3, r6, cr2, cr4, {3}
 14c:	6f746c61 	svcvs	0x00746c61
 150:	2e736c6f 	cdpcs	12, 7, cr6, cr3, cr15, {3}
 154:	2d756e67 	ldclcs	14, cr6, [r5, #-412]!	@ 0xfffffe64
 158:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	@ ffffff90 <_END_bss+0xdffffb84>
 15c:	6f662d73 	svcvs	0x00662d73
 160:	74732d72 	ldrbtvc	r2, [r3], #-3442	@ 0xfffff28e
 164:	2e32336d 	cdpcs	3, 3, cr3, cr2, cr13, {3}
 168:	332e3231 			@ <UNDEFINED> instruction: 0x332e3231
 16c:	6c65722e 	sfmvs	f7, 2, [r5], #-184	@ 0xffffff48
 170:	69772e31 	ldmdbvs	r7!, {r0, r4, r5, r9, sl, fp, sp}^
 174:	5f32336e 	svcpl	0x0032336e
 178:	2e302e31 	mrccs	14, 1, r2, cr0, cr1, {1}
 17c:	2e303031 	mrccs	0, 1, r3, cr0, cr1, {1}
 180:	34323032 	ldrtcc	r3, [r2], #-50	@ 0xffffffce
 184:	31313330 	teqcc	r1, r0, lsr r3
 188:	36353231 			@ <UNDEFINED> instruction: 0x36353231
 18c:	6f6f745c 	svcvs	0x006f745c
 190:	625c736c 	subsvs	r7, ip, #108, 6	@ 0xb0000001
 194:	2e2f6e69 	cdpcs	14, 2, cr6, cr15, cr9, {3}
 198:	696c2f2e 	stmdbvs	ip!, {r1, r2, r3, r5, r8, r9, sl, fp, sp}^
 19c:	63672f62 	cmnvs	r7, #392	@ 0x188
 1a0:	72612f63 	rsbvc	r2, r1, #396	@ 0x18c
 1a4:	6f6e2d6d 	svcvs	0x006e2d6d
 1a8:	652d656e 	strvs	r6, [sp, #-1390]!	@ 0xfffffa92
 1ac:	2f696261 	svccs	0x00696261
 1b0:	332e3231 			@ <UNDEFINED> instruction: 0x332e3231
 1b4:	2e2f312e 	sufcsep	f3, f7, #0.5
 1b8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 1bc:	2f2e2e2f 	svccs	0x002e2e2f
 1c0:	612f2e2e 			@ <UNDEFINED> instruction: 0x612f2e2e
 1c4:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 1c8:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	@ 0xfffffe44
 1cc:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 1d0:	636e692f 	cmnvs	lr, #770048	@ 0xbc000
 1d4:	6564756c 	strbvs	r7, [r4, #-1388]!	@ 0xfffffa94
 1d8:	7379732f 	cmnvc	r9, #-1140850688	@ 0xbc000000
 1dc:	616d0000 	cmnvs	sp, r0
 1e0:	632e6e69 			@ <UNDEFINED> instruction: 0x632e6e69
 1e4:	00000000 	andeq	r0, r0, r0
 1e8:	6665645f 			@ <UNDEFINED> instruction: 0x6665645f
 1ec:	746c7561 	strbtvc	r7, [ip], #-1377	@ 0xfffffa9f
 1f0:	7079745f 	rsbsvc	r7, r9, pc, asr r4
 1f4:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 1f8:	00000100 	andeq	r0, r0, r0, lsl #2
 1fc:	6474735f 	ldrbtvs	r7, [r4], #-863	@ 0xfffffca1
 200:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 204:	00020068 	andeq	r0, r2, r8, rrx
 208:	01050000 	mrseq	r0, (UNDEF: 5)
 20c:	1c020500 	cfstr32ne	mvfx0, [r2], {-0}
 210:	03000000 	movweq	r0, #0
 214:	02050111 	andeq	r0, r5, #1073741828	@ 0x40000004
 218:	2011053f 	andscs	r0, r1, pc, lsr r5
 21c:	052f0b05 	streq	r0, [pc, #-2821]!	@ fffff71f <_END_bss+0xdffff313>
 220:	3a052e02 	bcc	14ba30 <_END_text+0x14b8e0>
 224:	03040200 	movweq	r0, #16896	@ 0x4200
 228:	00280520 	eoreq	r0, r8, r0, lsr #10
 22c:	3c010402 	cfstrscc	mvf0, [r1], {2}
 230:	053e0205 	ldreq	r0, [lr, #-517]!	@ 0xfffffdfb
 234:	02053c13 	andeq	r3, r5, #4864	@ 0x1300
 238:	3c13053d 	cfldr32cc	mvfx0, [r3], {61}	@ 0x3d
 23c:	05400305 	strbeq	r0, [r0, #-773]	@ 0xfffffcfb
 240:	0c053c15 	stceq	12, cr3, [r5], {21}
 244:	2e03053d 	mcrcs	5, 0, r0, cr3, cr13, {1}
 248:	02003805 	andeq	r3, r0, #327680	@ 0x50000
 24c:	05200304 	streq	r0, [r0, #-772]!	@ 0xfffffcfc
 250:	04020026 	streq	r0, [r2], #-38	@ 0xffffffda
 254:	03053c01 	movweq	r3, #23553	@ 0x5c01
 258:	3c150559 	cfldr32cc	mvfx0, [r5], {89}	@ 0x59
 25c:	053d0c05 	ldreq	r0, [sp, #-3077]!	@ 0xfffff3fb
 260:	38052e03 	stmdacc	r5, {r0, r1, r9, sl, fp, sp}
 264:	03040200 	movweq	r0, #16896	@ 0x4200
 268:	00260520 	eoreq	r0, r6, r0, lsr #10
 26c:	3c010402 	cfstrscc	mvf0, [r1], {2}
 270:	02551505 	subseq	r1, r5, #20971520	@ 0x1400000
 274:	01010009 	tsteq	r1, r9
 278:	0000029a 	muleq	r0, sl, r2
 27c:	02030003 	andeq	r0, r3, #3
 280:	01020000 	mrseq	r0, (UNDEF: 2)
 284:	000d0efb 	strdeq	r0, [sp], -fp
 288:	01010101 	tsteq	r1, r1, lsl #2
 28c:	01000000 	mrseq	r0, (UNDEF: 0)
 290:	43010000 	movwmi	r0, #4096	@ 0x1000
 294:	54535c3a 	ldrbpl	r5, [r3], #-3130	@ 0xfffff3c6
 298:	4d54535c 	ldclmi	3, cr5, [r4, #-368]	@ 0xfffffe90
 29c:	75433233 	strbvc	r3, [r3, #-563]	@ 0xfffffdcd
 2a0:	44496562 	strbmi	r6, [r9], #-1378	@ 0xfffffa9e
 2a4:	2e315f45 	cdpcs	15, 3, cr5, cr1, cr5, {2}
 2a8:	312e3531 			@ <UNDEFINED> instruction: 0x312e3531
 2ac:	4d54535c 	ldclmi	3, cr5, [r4, #-368]	@ 0xfffffe90
 2b0:	75433233 	strbvc	r3, [r3, #-563]	@ 0xfffffdcd
 2b4:	44496562 	strbmi	r6, [r9], #-1378	@ 0xfffffa9e
 2b8:	6c705c45 	ldclvs	12, cr5, [r0], #-276	@ 0xfffffeec
 2bc:	6e696775 	mcrvs	7, 3, r6, cr9, cr5, {3}
 2c0:	6f635c73 	svcvs	0x00635c73
 2c4:	74732e6d 	ldrbtvc	r2, [r3], #-3693	@ 0xfffff193
 2c8:	6d74732e 	ldclvs	3, cr7, [r4, #-184]!	@ 0xffffff48
 2cc:	75633233 	strbvc	r3, [r3, #-563]!	@ 0xfffffdcd
 2d0:	692e6562 	stmdbvs	lr!, {r1, r5, r6, r8, sl, sp, lr}
 2d4:	6d2e6564 	cfstr32vs	mvfx6, [lr, #-400]!	@ 0xfffffe70
 2d8:	652e7563 	strvs	r7, [lr, #-1379]!	@ 0xfffffa9d
 2dc:	72657478 	rsbvc	r7, r5, #120, 8	@ 0x78000000
 2e0:	746c616e 	strbtvc	r6, [ip], #-366	@ 0xfffffe92
 2e4:	736c6f6f 	cmnvc	ip, #444	@ 0x1bc
 2e8:	756e672e 	strbvc	r6, [lr, #-1838]!	@ 0xfffff8d2
 2ec:	6f6f742d 	svcvs	0x006f742d
 2f0:	662d736c 	strtvs	r7, [sp], -ip, ror #6
 2f4:	732d726f 			@ <UNDEFINED> instruction: 0x732d726f
 2f8:	32336d74 	eorscc	r6, r3, #116, 26	@ 0x1d00
 2fc:	2e32312e 	rsfcssp	f3, f2, #0.5
 300:	65722e33 	ldrbvs	r2, [r2, #-3635]!	@ 0xfffff1cd
 304:	772e316c 	strvc	r3, [lr, -ip, ror #2]!
 308:	32336e69 	eorscc	r6, r3, #1680	@ 0x690
 30c:	302e315f 	eorcc	r3, lr, pc, asr r1
 310:	3030312e 	eorscc	r3, r0, lr, lsr #2
 314:	3230322e 	eorscc	r3, r0, #-536870910	@ 0xe0000002
 318:	31333034 	teqcc	r3, r4, lsr r0
 31c:	35323131 	ldrcc	r3, [r2, #-305]!	@ 0xfffffecf
 320:	6f745c36 	svcvs	0x00745c36
 324:	5c736c6f 	ldclpl	12, cr6, [r3], #-444	@ 0xfffffe44
 328:	2f6e6962 	svccs	0x006e6962
 32c:	6c2f2e2e 	stcvs	14, cr2, [pc], #-184	@ 27c <_END_text+0x12c>
 330:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
 334:	612f6363 			@ <UNDEFINED> instruction: 0x612f6363
 338:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 33c:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	@ 0xfffffe44
 340:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 344:	2e32312f 	rsfcssp	f3, f2, #10.0
 348:	2f312e33 	svccs	0x00312e33
 34c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 350:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 354:	2f2e2e2f 	svccs	0x002e2e2f
 358:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	@ 0xfffffe7c
 35c:	656e6f6e 	strbvs	r6, [lr, #-3950]!	@ 0xfffff092
 360:	6261652d 	rsbvs	r6, r1, #188743680	@ 0xb400000
 364:	6e692f69 	cdpvs	15, 6, cr2, cr9, cr9, {3}
 368:	64756c63 	ldrbtvs	r6, [r5], #-3171	@ 0xfffff39d
 36c:	616d2f65 	cmnvs	sp, r5, ror #30
 370:	6e696863 	cdpvs	8, 6, cr6, cr9, cr3, {3}
 374:	3a430065 	bcc	10c0510 <_END_text+0x10c03c0>
 378:	5c54535c 	mrrcpl	3, 5, r5, r4, cr12
 37c:	334d5453 	movtcc	r5, #54355	@ 0xd453
 380:	62754332 	rsbsvs	r4, r5, #-939524096	@ 0xc8000000
 384:	45444965 	strbmi	r4, [r4, #-2405]	@ 0xfffff69b
 388:	312e315f 			@ <UNDEFINED> instruction: 0x312e315f
 38c:	5c312e35 	ldcpl	14, cr2, [r1], #-212	@ 0xffffff2c
 390:	334d5453 	movtcc	r5, #54355	@ 0xd453
 394:	62754332 	rsbsvs	r4, r5, #-939524096	@ 0xc8000000
 398:	45444965 	strbmi	r4, [r4, #-2405]	@ 0xfffff69b
 39c:	756c705c 	strbvc	r7, [ip, #-92]!	@ 0xffffffa4
 3a0:	736e6967 	cmnvc	lr, #1687552	@ 0x19c000
 3a4:	6d6f635c 	stclvs	3, cr6, [pc, #-368]!	@ 23c <_END_text+0xec>
 3a8:	2e74732e 	cdpcs	3, 7, cr7, cr4, cr14, {1}
 3ac:	336d7473 	cmncc	sp, #1929379840	@ 0x73000000
 3b0:	62756332 	rsbsvs	r6, r5, #-939524096	@ 0xc8000000
 3b4:	64692e65 	strbtvs	r2, [r9], #-3685	@ 0xfffff19b
 3b8:	636d2e65 	cmnvs	sp, #1616	@ 0x650
 3bc:	78652e75 	stmdavc	r5!, {r0, r2, r4, r5, r6, r9, sl, fp, sp}^
 3c0:	6e726574 	mrcvs	5, 3, r6, cr2, cr4, {3}
 3c4:	6f746c61 	svcvs	0x00746c61
 3c8:	2e736c6f 	cdpcs	12, 7, cr6, cr3, cr15, {3}
 3cc:	2d756e67 	ldclcs	14, cr6, [r5, #-412]!	@ 0xfffffe64
 3d0:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	@ 208 <_END_text+0xb8>
 3d4:	6f662d73 	svcvs	0x00662d73
 3d8:	74732d72 	ldrbtvc	r2, [r3], #-3442	@ 0xfffff28e
 3dc:	2e32336d 	cdpcs	3, 3, cr3, cr2, cr13, {3}
 3e0:	332e3231 			@ <UNDEFINED> instruction: 0x332e3231
 3e4:	6c65722e 	sfmvs	f7, 2, [r5], #-184	@ 0xffffff48
 3e8:	69772e31 	ldmdbvs	r7!, {r0, r4, r5, r9, sl, fp, sp}^
 3ec:	5f32336e 	svcpl	0x0032336e
 3f0:	2e302e31 	mrccs	14, 1, r2, cr0, cr1, {1}
 3f4:	2e303031 	mrccs	0, 1, r3, cr0, cr1, {1}
 3f8:	34323032 	ldrtcc	r3, [r2], #-50	@ 0xffffffce
 3fc:	31313330 	teqcc	r1, r0, lsr r3
 400:	36353231 			@ <UNDEFINED> instruction: 0x36353231
 404:	6f6f745c 	svcvs	0x006f745c
 408:	625c736c 	subsvs	r7, ip, #108, 6	@ 0xb0000001
 40c:	2e2f6e69 	cdpcs	14, 2, cr6, cr15, cr9, {3}
 410:	696c2f2e 	stmdbvs	ip!, {r1, r2, r3, r5, r8, r9, sl, fp, sp}^
 414:	63672f62 	cmnvs	r7, #392	@ 0x188
 418:	72612f63 	rsbvc	r2, r1, #396	@ 0x18c
 41c:	6f6e2d6d 	svcvs	0x006e2d6d
 420:	652d656e 	strvs	r6, [sp, #-1390]!	@ 0xfffffa92
 424:	2f696261 	svccs	0x00696261
 428:	332e3231 			@ <UNDEFINED> instruction: 0x332e3231
 42c:	2e2f312e 	sufcsep	f3, f7, #0.5
 430:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 434:	2f2e2e2f 	svccs	0x002e2e2f
 438:	612f2e2e 			@ <UNDEFINED> instruction: 0x612f2e2e
 43c:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 440:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	@ 0xfffffe44
 444:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 448:	636e692f 	cmnvs	lr, #770048	@ 0xbc000
 44c:	6564756c 	strbvs	r7, [r4, #-1388]!	@ 0xfffffa94
 450:	7379732f 	cmnvc	r9, #-1140850688	@ 0xbc000000
 454:	74730000 	ldrbtvc	r0, [r3], #-0
 458:	75747261 	ldrbvc	r7, [r4, #-609]!	@ 0xfffffd9f
 45c:	00632e70 	rsbeq	r2, r3, r0, ror lr
 460:	5f000000 	svcpl	0x00000000
 464:	61666564 	cmnvs	r6, r4, ror #10
 468:	5f746c75 	svcpl	0x00746c75
 46c:	65707974 	ldrbvs	r7, [r0, #-2420]!	@ 0xfffff68c
 470:	00682e73 	rsbeq	r2, r8, r3, ror lr
 474:	5f000001 	svcpl	0x00000001
 478:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 47c:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 480:	00000200 	andeq	r0, r0, r0, lsl #4
 484:	00190500 	andseq	r0, r9, r0, lsl #10
 488:	00a80205 	adceq	r0, r8, r5, lsl #4
 48c:	1e030000 	cdpne	0, 0, cr0, cr3, cr0, {0}
 490:	3d3a0501 	cfldr32cc	mvfx0, [sl, #-4]!
 494:	232e0b05 			@ <UNDEFINED> instruction: 0x232e0b05
 498:	05312405 	ldreq	r2, [r1, #-1029]!	@ 0xfffffbfb
 49c:	07053c0e 	streq	r3, [r5, -lr, lsl #24]
 4a0:	2f080521 	svccs	0x00080521
 4a4:	052f0905 	streq	r0, [pc, #-2309]!	@ fffffba7 <_END_bss+0xdffff79b>
 4a8:	0b052e02 	bleq	14bcb8 <_END_text+0x14bb68>
 4ac:	03040200 	movweq	r0, #16896	@ 0x4200
 4b0:	000a0522 	andeq	r0, sl, r2, lsr #10
 4b4:	2e030402 	cdpcs	4, 0, cr0, cr3, cr2, {0}
 4b8:	02002105 	andeq	r2, r0, #1073741825	@ 0x40000001
 4bc:	052c0304 	streq	r0, [ip, #-772]!	@ 0xfffffcfc
 4c0:	0402002b 	streq	r0, [r2], #-43	@ 0xffffffd5
 4c4:	34053c03 	strcc	r3, [r5], #-3075	@ 0xfffff3fd
 4c8:	03040200 	movweq	r0, #16896	@ 0x4200
 4cc:	0010053c 	andseq	r0, r0, ip, lsr r5
 4d0:	3c010402 	cfstrscc	mvf0, [r1], {2}
 4d4:	05502305 	ldrbeq	r2, [r0, #-773]	@ 0xfffffcfb
 4d8:	07053c0e 	streq	r3, [r5, -lr, lsl #24]
 4dc:	2f080521 	svccs	0x00080521
 4e0:	052f0905 	streq	r0, [pc, #-2309]!	@ fffffbe3 <_END_bss+0xdffff7d7>
 4e4:	0a052e02 	beq	14bcf4 <_END_text+0x14bba4>
 4e8:	03040200 	movweq	r0, #16896	@ 0x4200
 4ec:	00210522 	eoreq	r0, r1, r2, lsr #10
 4f0:	3a030402 	bcc	c1500 <_END_text+0xc13b0>
 4f4:	02002b05 	andeq	r2, r0, #5120	@ 0x1400
 4f8:	053c0304 	ldreq	r0, [ip, #-772]!	@ 0xfffffcfc
 4fc:	04020010 	streq	r0, [r2], #-16
 500:	02053c01 	andeq	r3, r5, #256	@ 0x100
 504:	2f010550 	svccs	0x00010550
 508:	05f41b05 	ldrbeq	r1, [r4, #2821]!	@ 0xb05
 50c:	01052f02 	tsteq	r5, r2, lsl #30
 510:	0002022f 	andeq	r0, r2, pc, lsr #4
 514:	Address 0x514 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	53737342 	cmnpl	r3, #134217729	@ 0x8000001
   4:	63757274 	cmnvs	r5, #116, 4	@ 0x40000007
   8:	6f6c0074 	svcvs	0x006c0074
   c:	6c20676e 	stcvs	7, cr6, [r0], #-440	@ 0xfffffe48
  10:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  14:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  18:	64656e67 	strbtvs	r6, [r5], #-3687	@ 0xfffff199
  1c:	746e6920 	strbtvc	r6, [lr], #-2336	@ 0xfffff6e0
  20:	736e7500 	cmnvc	lr, #0, 10
  24:	656e6769 	strbvs	r6, [lr, #-1897]!	@ 0xfffff897
  28:	68632064 	stmdavs	r3!, {r2, r5, r6, sp}^
  2c:	44007261 	strmi	r7, [r0], #-609	@ 0xfffffd9f
  30:	41617461 	cmnmi	r1, r1, ror #8
  34:	73007272 	movwvc	r7, #626	@ 0x272
  38:	74726f68 	ldrbtvc	r6, [r2], #-3944	@ 0xfffff098
  3c:	736e7520 	cmnvc	lr, #32, 10	@ 0x8000000
  40:	656e6769 	strbvs	r6, [lr, #-1897]!	@ 0xfffff897
  44:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
  48:	65640074 	strbvs	r0, [r4, #-116]!	@ 0xffffff8c
  4c:	5f79616c 	svcpl	0x0079616c
  50:	6e756f63 	cdpvs	15, 7, cr6, cr5, cr3, {3}
  54:	5f5f0074 	svcpl	0x005f0074
  58:	746e6975 	strbtvc	r6, [lr], #-2421	@ 0xfffff68b
  5c:	745f3233 	ldrbvc	r3, [pc], #-563	@ 64 <main+0x48>
  60:	554e4700 	strbpl	r4, [lr, #-1792]	@ 0xfffff900
  64:	37314320 	ldrcc	r4, [r1, -r0, lsr #6]!
  68:	2e323120 	rsfcssp	f3, f2, f0
  6c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  70:	33323032 	teqcc	r2, #50	@ 0x32
  74:	36323630 			@ <UNDEFINED> instruction: 0x36323630
  78:	636d2d20 	cmnvs	sp, #32, 26	@ 0x800
  7c:	633d7570 	teqvs	sp, #112, 10	@ 0x1c000000
  80:	6574726f 	ldrbvs	r7, [r4, #-623]!	@ 0xfffffd91
  84:	346d2d78 	strbtcc	r2, [sp], #-3448	@ 0xfffff288
  88:	666d2d20 	strbtvs	r2, [sp], -r0, lsr #26
  8c:	74616f6c 	strbtvc	r6, [r1], #-3948	@ 0xfffff094
  90:	6962612d 	stmdbvs	r2!, {r0, r2, r3, r5, r8, sp, lr}^
  94:	666f733d 			@ <UNDEFINED> instruction: 0x666f733d
  98:	6d2d2074 	stcvs	0, cr2, [sp, #-464]!	@ 0xfffffe30
  9c:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	@ 0xfffffe30
  a0:	6d2d2062 	stcvs	0, cr2, [sp, #-392]!	@ 0xfffffe78
  a4:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
  a8:	6d72613d 	ldfvse	f6, [r2, #-244]!	@ 0xffffff0c
  ac:	2d653776 	stclcs	7, cr3, [r5, #-472]!	@ 0xfffffe28
  b0:	672d206d 	strvs	r2, [sp, -sp, rrx]!
  b4:	64672d20 	strbtvs	r2, [r7], #-3360	@ 0xfffff2e0
  b8:	66726177 			@ <UNDEFINED> instruction: 0x66726177
  bc:	6d00322d 	sfmvs	f3, 4, [r0, #-180]	@ 0xffffff4c
  c0:	006e6961 	rsbeq	r6, lr, r1, ror #18
  c4:	532f3a46 			@ <UNDEFINED> instruction: 0x532f3a46
  c8:	59445554 	stmdbpl	r4, {r2, r4, r6, r8, sl, ip, lr}^
  cc:	554f432f 	strbpl	r4, [pc, #-815]	@ fffffda5 <_END_bss+0xdffff999>
  d0:	53455352 	movtpl	r5, #21330	@ 0x5352
  d4:	73614d2f 	cmnvc	r1, #3008	@ 0xbc0
  d8:	69726574 	ldmdbvs	r2!, {r2, r4, r5, r6, r8, sl, sp, lr}^
  dc:	4520676e 	strmi	r6, [r0, #-1902]!	@ 0xfffff892
  e0:	6465626d 	strbtvs	r6, [r5], #-621	@ 0xfffffd93
  e4:	20646564 	rsbcs	r6, r4, r4, ror #10
  e8:	74737953 	ldrbtvc	r7, [r3], #-2387	@ 0xfffff6ad
  ec:	44206d65 	strtmi	r6, [r0], #-3429	@ 0xfffff29b
  f0:	6f6c7069 	svcvs	0x006c7069
  f4:	412f616d 			@ <UNDEFINED> instruction: 0x412f616d
  f8:	47495353 	smlsldmi	r5, r9, r3, r3
  fc:	4e454d4e 	cdpmi	13, 4, cr4, cr5, cr14, {2}
 100:	552f5354 	strpl	r5, [pc, #-852]!	@ fffffdb4 <_END_bss+0xdffff9a8>
 104:	5f74696e 	svcpl	0x0074696e
 108:	6d455f33 	stclvs	15, cr5, [r5, #-204]	@ 0xffffff34
 10c:	64646562 	strbtvs	r6, [r4], #-1378	@ 0xfffffa9e
 110:	435f6465 	cmpmi	pc, #1694498816	@ 0x65000000
 114:	73654c2f 	cmnvc	r5, #12032	@ 0x2f00
 118:	5f6e6f73 	svcpl	0x006e6f73
 11c:	6f6c0034 	svcvs	0x006c0034
 120:	6c20676e 	stcvs	7, cr6, [r0], #-440	@ 0xfffffe48
 124:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 128:	00746e69 	rsbseq	r6, r4, r9, ror #28
 12c:	6e69616d 	powvsez	f6, f1, #5.0
 130:	7300632e 	movwvc	r6, #814	@ 0x32e
 134:	74726f68 	ldrbtvc	r6, [r2], #-3944	@ 0xfffff098
 138:	746e6920 	strbtvc	r6, [lr], #-2336	@ 0xfffff6e0
 13c:	61747300 	cmnvs	r4, r0, lsl #6
 140:	70757472 	rsbsvc	r7, r5, r2, ror r4
 144:	5f00632e 	svcpl	0x0000632e
 148:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
 14c:	745f3874 	ldrbvc	r3, [pc], #-2164	@ 154 <_END_text+0x4>
 150:	63657300 	cmnvs	r5, #0, 6
 154:	6e6f6974 			@ <UNDEFINED> instruction: 0x6e6f6974
 158:	7a69735f 	bvc	1a5cedc <_END_text+0x1a5cd8c>
 15c:	5f700065 	svcpl	0x00700065
 160:	00637273 	rsbeq	r7, r3, r3, ror r2
 164:	63617473 	cmnvs	r1, #1929379840	@ 0x73000000
 168:	6f745f6b 	svcvs	0x00745f6b
 16c:	74730070 	ldrbtvc	r0, [r3], #-112	@ 0xffffff90
 170:	745f6b61 	ldrbvc	r6, [pc], #-2913	@ 178 <_END_text+0x28>
 174:	645f706f 	ldrbvs	r7, [pc], #-111	@ 17c <_END_text+0x2c>
 178:	67756265 	ldrbvs	r6, [r5, -r5, ror #4]!
 17c:	4e455f00 	cdpmi	15, 4, cr5, cr5, cr0, {0}
 180:	65745f44 	ldrbvs	r5, [r4, #-3908]!	@ 0xfffff0bc
 184:	5f007478 	svcpl	0x00007478
 188:	52415453 	subpl	r5, r1, #1392508928	@ 0x53000000
 18c:	73625f54 	cmnvc	r2, #84, 30	@ 0x150
 190:	535f0073 	cmppl	pc, #115	@ 0x73
 194:	54524154 	ldrbpl	r4, [r2], #-340	@ 0xfffffeac
 198:	7461645f 	strbtvc	r6, [r1], #-1119	@ 0xfffffba1
 19c:	65440061 	strbvs	r0, [r4, #-97]	@ 0xffffff9f
 1a0:	6c756166 	ldfvse	f6, [r5], #-408	@ 0xfffffe68
 1a4:	61685f74 	smcvs	34292	@ 0x85f4
 1a8:	656c646e 	strbvs	r6, [ip, #-1134]!	@ 0xfffffb92
 1ac:	455f0072 	ldrbmi	r0, [pc, #-114]	@ 142 <Reset_handler+0x9a>
 1b0:	625f444e 	subsvs	r4, pc, #1308622848	@ 0x4e000000
 1b4:	76007373 			@ <UNDEFINED> instruction: 0x76007373
 1b8:	6f746365 	svcvs	0x00746365
 1bc:	415f7372 	cmpmi	pc, r2, ror r3	@ <UNPREDICTABLE>
 1c0:	664f7272 			@ <UNDEFINED> instruction: 0x664f7272
 1c4:	54727450 	ldrbtpl	r7, [r2], #-1104	@ 0xfffffbb0
 1c8:	6e75466f 	cdpvs	6, 7, cr4, cr5, cr15, {3}
 1cc:	65520063 	ldrbvs	r0, [r2, #-99]	@ 0xffffff9d
 1d0:	5f746573 	svcpl	0x00746573
 1d4:	646e6168 	strbtvs	r6, [lr], #-360	@ 0xfffffe98
 1d8:	0072656c 	rsbseq	r6, r2, ip, ror #10
 1dc:	69645f70 	stmdbvs	r4!, {r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 1e0:	5f007473 	svcpl	0x00007473
 1e4:	5f444e45 	svcpl	0x00444e45
 1e8:	61746164 	cmnvs	r4, r4, ror #2
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <_END_text+0x10d0bd4>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	@ 0xd453
  18:	32312032 	eorscc	r2, r1, #50	@ 0x32
  1c:	722e332e 	eorvc	r3, lr, #-1207959552	@ 0xb8000000
  20:	2e316c65 	cdpcs	12, 3, cr6, cr1, cr5, {3}
  24:	34323032 	ldrtcc	r3, [r2], #-50	@ 0xffffffce
  28:	36303330 			@ <UNDEFINED> instruction: 0x36303330
  2c:	3337312d 	teqcc	r7, #1073741835	@ 0x4000000b
  30:	31202930 			@ <UNDEFINED> instruction: 0x31202930
  34:	2e332e32 	mrccs	14, 1, r2, cr3, cr2, {1}
  38:	30322031 	eorscc	r2, r2, r1, lsr r0
  3c:	36303332 			@ <UNDEFINED> instruction: 0x36303332
  40:	Address 0x40 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002d41 	andeq	r2, r0, r1, asr #26
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000023 	andeq	r0, r0, r3, lsr #32
  10:	2d453705 	stclcs	7, cr3, [r5, #-20]	@ 0xffffffec
  14:	0d06004d 	stceq	0, cr0, [r6, #-308]	@ 0xfffffecc
  18:	02094d07 	andeq	r4, r9, #448	@ 0x1c0
  1c:	01140412 	tsteq	r4, r2, lsl r4
  20:	03170115 	tsteq	r7, #1073741829	@ 0x40000005
  24:	01190118 	tsteq	r9, r8, lsl r1
  28:	061e011a 			@ <UNDEFINED> instruction: 0x061e011a
  2c:	Address 0x2c is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	0000001c 	andeq	r0, r0, ip, lsl r0
  1c:	0000008c 	andeq	r0, r0, ip, lsl #1
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	180e4101 	stmdane	lr, {r0, r8, lr}
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000020 	andeq	r0, r0, r0, lsr #32
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	000000a8 	andeq	r0, r0, r8, lsr #1
  48:	0000009c 	muleq	r0, ip, r0
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	@ 0xffffffc8
  58:	080e7d07 	stmdaeq	lr, {r0, r1, r2, r8, sl, fp, ip, sp, lr}
  5c:	000d0d41 	andeq	r0, sp, r1, asr #26
  60:	00000018 	andeq	r0, r0, r8, lsl r0
  64:	0000002c 	andeq	r0, r0, ip, lsr #32
  68:	00000144 	andeq	r0, r0, r4, asr #2
  6c:	0000000c 	andeq	r0, r0, ip
  70:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  74:	41018e02 	tstmi	r1, r2, lsl #28
  78:	0000070d 	andeq	r0, r0, sp, lsl #14
