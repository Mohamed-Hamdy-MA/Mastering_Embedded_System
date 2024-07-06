
Lab_2_ARM_Cortex_M3.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	2000100c 	andcs	r1, r0, ip
 8000004:	08000099 	stmdaeq	r0, {r0, r3, r4, r7}
 8000008:	0800012d 	stmdaeq	r0, {r0, r2, r3, r5, r8}
 800000c:	0800012d 	stmdaeq	r0, {r0, r2, r3, r5, r8}
 8000010:	0800012d 	stmdaeq	r0, {r0, r2, r3, r5, r8}
 8000014:	0800012d 	stmdaeq	r0, {r0, r2, r3, r5, r8}
 8000018:	0800012d 	stmdaeq	r0, {r0, r2, r3, r5, r8}

0800001c <main>:
 800001c:	b480      	push	{r7}
 800001e:	b083      	sub	sp, #12
 8000020:	af00      	add	r7, sp, #0
 8000022:	4b1a      	ldr	r3, [pc, #104]	@ (800008c <main+0x70>)
 8000024:	681b      	ldr	r3, [r3, #0]
 8000026:	4a19      	ldr	r2, [pc, #100]	@ (800008c <main+0x70>)
 8000028:	f043 0304 	orr.w	r3, r3, #4
 800002c:	6013      	str	r3, [r2, #0]
 800002e:	4b18      	ldr	r3, [pc, #96]	@ (8000090 <main+0x74>)
 8000030:	681b      	ldr	r3, [r3, #0]
 8000032:	4a17      	ldr	r2, [pc, #92]	@ (8000090 <main+0x74>)
 8000034:	f423 0370 	bic.w	r3, r3, #15728640	@ 0xf00000
 8000038:	6013      	str	r3, [r2, #0]
 800003a:	4b15      	ldr	r3, [pc, #84]	@ (8000090 <main+0x74>)
 800003c:	681b      	ldr	r3, [r3, #0]
 800003e:	4a14      	ldr	r2, [pc, #80]	@ (8000090 <main+0x74>)
 8000040:	f443 1300 	orr.w	r3, r3, #2097152	@ 0x200000
 8000044:	6013      	str	r3, [r2, #0]
 8000046:	4b13      	ldr	r3, [pc, #76]	@ (8000094 <main+0x78>)
 8000048:	681b      	ldr	r3, [r3, #0]
 800004a:	4a12      	ldr	r2, [pc, #72]	@ (8000094 <main+0x78>)
 800004c:	f443 5300 	orr.w	r3, r3, #8192	@ 0x2000
 8000050:	6013      	str	r3, [r2, #0]
 8000052:	2300      	movs	r3, #0
 8000054:	607b      	str	r3, [r7, #4]
 8000056:	e002      	b.n	800005e <main+0x42>
 8000058:	687b      	ldr	r3, [r7, #4]
 800005a:	3301      	adds	r3, #1
 800005c:	607b      	str	r3, [r7, #4]
 800005e:	687b      	ldr	r3, [r7, #4]
 8000060:	f241 3287 	movw	r2, #4999	@ 0x1387
 8000064:	4293      	cmp	r3, r2
 8000066:	ddf7      	ble.n	8000058 <main+0x3c>
 8000068:	4b0a      	ldr	r3, [pc, #40]	@ (8000094 <main+0x78>)
 800006a:	681b      	ldr	r3, [r3, #0]
 800006c:	4a09      	ldr	r2, [pc, #36]	@ (8000094 <main+0x78>)
 800006e:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
 8000072:	6013      	str	r3, [r2, #0]
 8000074:	2300      	movs	r3, #0
 8000076:	603b      	str	r3, [r7, #0]
 8000078:	e002      	b.n	8000080 <main+0x64>
 800007a:	683b      	ldr	r3, [r7, #0]
 800007c:	3301      	adds	r3, #1
 800007e:	603b      	str	r3, [r7, #0]
 8000080:	683b      	ldr	r3, [r7, #0]
 8000082:	f241 3287 	movw	r2, #4999	@ 0x1387
 8000086:	4293      	cmp	r3, r2
 8000088:	ddf7      	ble.n	800007a <main+0x5e>
 800008a:	e7dc      	b.n	8000046 <main+0x2a>
 800008c:	40021018 	andmi	r1, r2, r8, lsl r0
 8000090:	40010804 	andmi	r0, r1, r4, lsl #16
 8000094:	4001080c 	andmi	r0, r1, ip, lsl #16

08000098 <Reset_handler>:
 8000098:	b580      	push	{r7, lr}
 800009a:	b086      	sub	sp, #24
 800009c:	af00      	add	r7, sp, #0
 800009e:	4a1e      	ldr	r2, [pc, #120]	@ (8000118 <Reset_handler+0x80>)
 80000a0:	4b1e      	ldr	r3, [pc, #120]	@ (800011c <Reset_handler+0x84>)
 80000a2:	1ad3      	subs	r3, r2, r3
 80000a4:	607b      	str	r3, [r7, #4]
 80000a6:	4b1e      	ldr	r3, [pc, #120]	@ (8000120 <Reset_handler+0x88>)
 80000a8:	617b      	str	r3, [r7, #20]
 80000aa:	4b1c      	ldr	r3, [pc, #112]	@ (800011c <Reset_handler+0x84>)
 80000ac:	613b      	str	r3, [r7, #16]
 80000ae:	2300      	movs	r3, #0
 80000b0:	60fb      	str	r3, [r7, #12]
 80000b2:	e00c      	b.n	80000ce <Reset_handler+0x36>
 80000b4:	697b      	ldr	r3, [r7, #20]
 80000b6:	781a      	ldrb	r2, [r3, #0]
 80000b8:	693b      	ldr	r3, [r7, #16]
 80000ba:	701a      	strb	r2, [r3, #0]
 80000bc:	68fb      	ldr	r3, [r7, #12]
 80000be:	3301      	adds	r3, #1
 80000c0:	60fb      	str	r3, [r7, #12]
 80000c2:	693b      	ldr	r3, [r7, #16]
 80000c4:	3301      	adds	r3, #1
 80000c6:	613b      	str	r3, [r7, #16]
 80000c8:	697b      	ldr	r3, [r7, #20]
 80000ca:	3301      	adds	r3, #1
 80000cc:	617b      	str	r3, [r7, #20]
 80000ce:	68fb      	ldr	r3, [r7, #12]
 80000d0:	687a      	ldr	r2, [r7, #4]
 80000d2:	429a      	cmp	r2, r3
 80000d4:	d8ee      	bhi.n	80000b4 <Reset_handler+0x1c>
 80000d6:	4a13      	ldr	r2, [pc, #76]	@ (8000124 <Reset_handler+0x8c>)
 80000d8:	4b13      	ldr	r3, [pc, #76]	@ (8000128 <Reset_handler+0x90>)
 80000da:	1ad3      	subs	r3, r2, r3
 80000dc:	607b      	str	r3, [r7, #4]
 80000de:	2300      	movs	r3, #0
 80000e0:	617b      	str	r3, [r7, #20]
 80000e2:	4b11      	ldr	r3, [pc, #68]	@ (8000128 <Reset_handler+0x90>)
 80000e4:	613b      	str	r3, [r7, #16]
 80000e6:	2300      	movs	r3, #0
 80000e8:	60bb      	str	r3, [r7, #8]
 80000ea:	e00b      	b.n	8000104 <Reset_handler+0x6c>
 80000ec:	693b      	ldr	r3, [r7, #16]
 80000ee:	2200      	movs	r2, #0
 80000f0:	701a      	strb	r2, [r3, #0]
 80000f2:	68bb      	ldr	r3, [r7, #8]
 80000f4:	3301      	adds	r3, #1
 80000f6:	60bb      	str	r3, [r7, #8]
 80000f8:	693b      	ldr	r3, [r7, #16]
 80000fa:	3301      	adds	r3, #1
 80000fc:	613b      	str	r3, [r7, #16]
 80000fe:	697b      	ldr	r3, [r7, #20]
 8000100:	3301      	adds	r3, #1
 8000102:	617b      	str	r3, [r7, #20]
 8000104:	68bb      	ldr	r3, [r7, #8]
 8000106:	687a      	ldr	r2, [r7, #4]
 8000108:	429a      	cmp	r2, r3
 800010a:	d8ef      	bhi.n	80000ec <Reset_handler+0x54>
 800010c:	f7ff ff86 	bl	800001c <main>
 8000110:	bf00      	nop
 8000112:	3718      	adds	r7, #24
 8000114:	46bd      	mov	sp, r7
 8000116:	bd80      	pop	{r7, pc}
 8000118:	20000004 	andcs	r0, r0, r4
 800011c:	20000000 	andcs	r0, r0, r0
 8000120:	08000138 	stmdaeq	r0, {r3, r4, r5, r8}
 8000124:	2000000c 	andcs	r0, r0, ip
 8000128:	20000004 	andcs	r0, r0, r4

0800012c <Default_handler>:
 800012c:	b580      	push	{r7, lr}
 800012e:	af00      	add	r7, sp, #0
 8000130:	f7ff ffb2 	bl	8000098 <Reset_handler>
 8000134:	bf00      	nop
 8000136:	bd80      	pop	{r7, pc}

Disassembly of section .data:

20000000 <DataArr>:
20000000:	00030201 	andeq	r0, r3, r1, lsl #4

Disassembly of section .bss:

20000004 <BssStruct>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
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
   0:	00002c41 	andeq	r2, r0, r1, asr #24
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000022 	andeq	r0, r0, r2, lsr #32
  10:	4d2d3705 	stcmi	7, cr3, [sp, #-20]!	@ 0xffffffec
  14:	070a0600 	streq	r0, [sl, -r0, lsl #12]
  18:	1202094d 	andne	r0, r2, #1261568	@ 0x134000
  1c:	15011404 	strne	r1, [r1, #-1028]	@ 0xfffffbfc
  20:	18031701 	stmdane	r3, {r0, r8, r9, sl, ip}
  24:	1a011901 	bne	46430 <vectors-0x7fb9bd0>
  28:	22061e01 	andcs	r1, r6, #1, 28
  2c:	Address 0x2c is out of bounds.

