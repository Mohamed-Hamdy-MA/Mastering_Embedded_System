
PressureController.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors_ArrOfPtrToFunc>:
 8000000:	2000041c 	andcs	r0, r0, ip, lsl r4
 8000004:	08000239 	stmdaeq	r0, {r0, r3, r4, r5, r9}
 8000008:	080002cd 	stmdaeq	r0, {r0, r2, r3, r6, r7, r9}
 800000c:	080002cd 	stmdaeq	r0, {r0, r2, r3, r6, r7, r9}
 8000010:	080002cd 	stmdaeq	r0, {r0, r2, r3, r6, r7, r9}
 8000014:	080002cd 	stmdaeq	r0, {r0, r2, r3, r6, r7, r9}
 8000018:	080002cd 	stmdaeq	r0, {r0, r2, r3, r6, r7, r9}

0800001c <SetAlarmSignal>:
 800001c:	b480      	push	{r7}
 800001e:	af00      	add	r7, sp, #0
 8000020:	4b03      	ldr	r3, [pc, #12]	@ (8000030 <SetAlarmSignal+0x14>)
 8000022:	4a04      	ldr	r2, [pc, #16]	@ (8000034 <SetAlarmSignal+0x18>)
 8000024:	601a      	str	r2, [r3, #0]
 8000026:	bf00      	nop
 8000028:	46bd      	mov	sp, r7
 800002a:	bc80      	pop	{r7}
 800002c:	4770      	bx	lr
 800002e:	bf00      	nop
 8000030:	2000000c 	andcs	r0, r0, ip
 8000034:	08000051 	stmdaeq	r0, {r0, r4, r6}

08000038 <StateAlarmOFF>:
 8000038:	b580      	push	{r7, lr}
 800003a:	af00      	add	r7, sp, #0
 800003c:	4b03      	ldr	r3, [pc, #12]	@ (800004c <StateAlarmOFF+0x14>)
 800003e:	2200      	movs	r2, #0
 8000040:	701a      	strb	r2, [r3, #0]
 8000042:	2001      	movs	r0, #1
 8000044:	f000 f840 	bl	80000c8 <Set_Alarm_actuator>
 8000048:	bf00      	nop
 800004a:	bd80      	pop	{r7, pc}
 800004c:	20000008 	andcs	r0, r0, r8

08000050 <StateAlarmON>:
 8000050:	b580      	push	{r7, lr}
 8000052:	af00      	add	r7, sp, #0
 8000054:	4b09      	ldr	r3, [pc, #36]	@ (800007c <StateAlarmON+0x2c>)
 8000056:	2201      	movs	r2, #1
 8000058:	701a      	strb	r2, [r3, #0]
 800005a:	2000      	movs	r0, #0
 800005c:	f000 f834 	bl	80000c8 <Set_Alarm_actuator>
 8000060:	4b07      	ldr	r3, [pc, #28]	@ (8000080 <StateAlarmON+0x30>)
 8000062:	681b      	ldr	r3, [r3, #0]
 8000064:	461a      	mov	r2, r3
 8000066:	4b07      	ldr	r3, [pc, #28]	@ (8000084 <StateAlarmON+0x34>)
 8000068:	fb02 f303 	mul.w	r3, r2, r3
 800006c:	4618      	mov	r0, r3
 800006e:	f000 f80f 	bl	8000090 <Delay>
 8000072:	4b05      	ldr	r3, [pc, #20]	@ (8000088 <StateAlarmON+0x38>)
 8000074:	4a05      	ldr	r2, [pc, #20]	@ (800008c <StateAlarmON+0x3c>)
 8000076:	601a      	str	r2, [r3, #0]
 8000078:	bf00      	nop
 800007a:	bd80      	pop	{r7, pc}
 800007c:	20000008 	andcs	r0, r0, r8
 8000080:	20000000 	andcs	r0, r0, r0
 8000084:	000186a0 	andeq	r8, r1, r0, lsr #13
 8000088:	2000000c 	andcs	r0, r0, ip
 800008c:	08000039 	stmdaeq	r0, {r0, r3, r4, r5}

08000090 <Delay>:
 8000090:	b480      	push	{r7}
 8000092:	b083      	sub	sp, #12
 8000094:	af00      	add	r7, sp, #0
 8000096:	6078      	str	r0, [r7, #4]
 8000098:	e002      	b.n	80000a0 <Delay+0x10>
 800009a:	687b      	ldr	r3, [r7, #4]
 800009c:	3b01      	subs	r3, #1
 800009e:	607b      	str	r3, [r7, #4]
 80000a0:	687b      	ldr	r3, [r7, #4]
 80000a2:	2b00      	cmp	r3, #0
 80000a4:	d1f9      	bne.n	800009a <Delay+0xa>
 80000a6:	bf00      	nop
 80000a8:	bf00      	nop
 80000aa:	370c      	adds	r7, #12
 80000ac:	46bd      	mov	sp, r7
 80000ae:	bc80      	pop	{r7}
 80000b0:	4770      	bx	lr

080000b2 <getPressureVal>:
 80000b2:	b480      	push	{r7}
 80000b4:	af00      	add	r7, sp, #0
 80000b6:	4b03      	ldr	r3, [pc, #12]	@ (80000c4 <getPressureVal+0x12>)
 80000b8:	681b      	ldr	r3, [r3, #0]
 80000ba:	b2db      	uxtb	r3, r3
 80000bc:	4618      	mov	r0, r3
 80000be:	46bd      	mov	sp, r7
 80000c0:	bc80      	pop	{r7}
 80000c2:	4770      	bx	lr
 80000c4:	40010808 	andmi	r0, r1, r8, lsl #16

080000c8 <Set_Alarm_actuator>:
 80000c8:	b480      	push	{r7}
 80000ca:	b083      	sub	sp, #12
 80000cc:	af00      	add	r7, sp, #0
 80000ce:	6078      	str	r0, [r7, #4]
 80000d0:	687b      	ldr	r3, [r7, #4]
 80000d2:	2b01      	cmp	r3, #1
 80000d4:	d106      	bne.n	80000e4 <Set_Alarm_actuator+0x1c>
 80000d6:	4b0a      	ldr	r3, [pc, #40]	@ (8000100 <Set_Alarm_actuator+0x38>)
 80000d8:	681b      	ldr	r3, [r3, #0]
 80000da:	4a09      	ldr	r2, [pc, #36]	@ (8000100 <Set_Alarm_actuator+0x38>)
 80000dc:	f443 5300 	orr.w	r3, r3, #8192	@ 0x2000
 80000e0:	6013      	str	r3, [r2, #0]
 80000e2:	e008      	b.n	80000f6 <Set_Alarm_actuator+0x2e>
 80000e4:	687b      	ldr	r3, [r7, #4]
 80000e6:	2b00      	cmp	r3, #0
 80000e8:	d105      	bne.n	80000f6 <Set_Alarm_actuator+0x2e>
 80000ea:	4b05      	ldr	r3, [pc, #20]	@ (8000100 <Set_Alarm_actuator+0x38>)
 80000ec:	681b      	ldr	r3, [r3, #0]
 80000ee:	4a04      	ldr	r2, [pc, #16]	@ (8000100 <Set_Alarm_actuator+0x38>)
 80000f0:	f423 5300 	bic.w	r3, r3, #8192	@ 0x2000
 80000f4:	6013      	str	r3, [r2, #0]
 80000f6:	bf00      	nop
 80000f8:	370c      	adds	r7, #12
 80000fa:	46bd      	mov	sp, r7
 80000fc:	bc80      	pop	{r7}
 80000fe:	4770      	bx	lr
 8000100:	4001080c 	andmi	r0, r1, ip, lsl #16

08000104 <GPIO_INITIALIZATION>:
 8000104:	b480      	push	{r7}
 8000106:	af00      	add	r7, sp, #0
 8000108:	4b0f      	ldr	r3, [pc, #60]	@ (8000148 <GPIO_INITIALIZATION+0x44>)
 800010a:	681b      	ldr	r3, [r3, #0]
 800010c:	4a0e      	ldr	r2, [pc, #56]	@ (8000148 <GPIO_INITIALIZATION+0x44>)
 800010e:	f043 0304 	orr.w	r3, r3, #4
 8000112:	6013      	str	r3, [r2, #0]
 8000114:	4b0d      	ldr	r3, [pc, #52]	@ (800014c <GPIO_INITIALIZATION+0x48>)
 8000116:	681b      	ldr	r3, [r3, #0]
 8000118:	4a0c      	ldr	r2, [pc, #48]	@ (800014c <GPIO_INITIALIZATION+0x48>)
 800011a:	f423 0370 	bic.w	r3, r3, #15728640	@ 0xf00000
 800011e:	6013      	str	r3, [r2, #0]
 8000120:	4b0a      	ldr	r3, [pc, #40]	@ (800014c <GPIO_INITIALIZATION+0x48>)
 8000122:	4a0a      	ldr	r2, [pc, #40]	@ (800014c <GPIO_INITIALIZATION+0x48>)
 8000124:	681b      	ldr	r3, [r3, #0]
 8000126:	6013      	str	r3, [r2, #0]
 8000128:	4b09      	ldr	r3, [pc, #36]	@ (8000150 <GPIO_INITIALIZATION+0x4c>)
 800012a:	681b      	ldr	r3, [r3, #0]
 800012c:	4a08      	ldr	r2, [pc, #32]	@ (8000150 <GPIO_INITIALIZATION+0x4c>)
 800012e:	f423 0370 	bic.w	r3, r3, #15728640	@ 0xf00000
 8000132:	6013      	str	r3, [r2, #0]
 8000134:	4b06      	ldr	r3, [pc, #24]	@ (8000150 <GPIO_INITIALIZATION+0x4c>)
 8000136:	681b      	ldr	r3, [r3, #0]
 8000138:	4a05      	ldr	r2, [pc, #20]	@ (8000150 <GPIO_INITIALIZATION+0x4c>)
 800013a:	f043 3322 	orr.w	r3, r3, #572662306	@ 0x22222222
 800013e:	6013      	str	r3, [r2, #0]
 8000140:	bf00      	nop
 8000142:	46bd      	mov	sp, r7
 8000144:	bc80      	pop	{r7}
 8000146:	4770      	bx	lr
 8000148:	40021018 	andmi	r1, r2, r8, lsl r0
 800014c:	40010800 	andmi	r0, r1, r0, lsl #16
 8000150:	40010804 	andmi	r0, r1, r4, lsl #16

08000154 <StateNormalPressure>:
 8000154:	b580      	push	{r7, lr}
 8000156:	af00      	add	r7, sp, #0
 8000158:	4b0b      	ldr	r3, [pc, #44]	@ (8000188 <StateNormalPressure+0x34>)
 800015a:	2200      	movs	r2, #0
 800015c:	701a      	strb	r2, [r3, #0]
 800015e:	f7ff ffa8 	bl	80000b2 <getPressureVal>
 8000162:	4603      	mov	r3, r0
 8000164:	461a      	mov	r2, r3
 8000166:	4b09      	ldr	r3, [pc, #36]	@ (800018c <StateNormalPressure+0x38>)
 8000168:	601a      	str	r2, [r3, #0]
 800016a:	4b08      	ldr	r3, [pc, #32]	@ (800018c <StateNormalPressure+0x38>)
 800016c:	681a      	ldr	r2, [r3, #0]
 800016e:	4b08      	ldr	r3, [pc, #32]	@ (8000190 <StateNormalPressure+0x3c>)
 8000170:	681b      	ldr	r3, [r3, #0]
 8000172:	429a      	cmp	r2, r3
 8000174:	d303      	bcc.n	800017e <StateNormalPressure+0x2a>
 8000176:	4b07      	ldr	r3, [pc, #28]	@ (8000194 <StateNormalPressure+0x40>)
 8000178:	4a07      	ldr	r2, [pc, #28]	@ (8000198 <StateNormalPressure+0x44>)
 800017a:	601a      	str	r2, [r3, #0]
 800017c:	e002      	b.n	8000184 <StateNormalPressure+0x30>
 800017e:	4b05      	ldr	r3, [pc, #20]	@ (8000194 <StateNormalPressure+0x40>)
 8000180:	4a06      	ldr	r2, [pc, #24]	@ (800019c <StateNormalPressure+0x48>)
 8000182:	601a      	str	r2, [r3, #0]
 8000184:	bf00      	nop
 8000186:	bd80      	pop	{r7, pc}
 8000188:	20000010 	andcs	r0, r0, r0, lsl r0
 800018c:	20000018 	andcs	r0, r0, r8, lsl r0
 8000190:	20000004 	andcs	r0, r0, r4
 8000194:	20000014 	andcs	r0, r0, r4, lsl r0
 8000198:	080001a1 	stmdaeq	r0, {r0, r5, r7, r8}
 800019c:	08000155 	stmdaeq	r0, {r0, r2, r4, r6, r8}

080001a0 <StateHighPressure>:
 80001a0:	b580      	push	{r7, lr}
 80001a2:	af00      	add	r7, sp, #0
 80001a4:	4b0c      	ldr	r3, [pc, #48]	@ (80001d8 <StateHighPressure+0x38>)
 80001a6:	2201      	movs	r2, #1
 80001a8:	701a      	strb	r2, [r3, #0]
 80001aa:	f7ff ff37 	bl	800001c <SetAlarmSignal>
 80001ae:	f7ff ff80 	bl	80000b2 <getPressureVal>
 80001b2:	4603      	mov	r3, r0
 80001b4:	461a      	mov	r2, r3
 80001b6:	4b09      	ldr	r3, [pc, #36]	@ (80001dc <StateHighPressure+0x3c>)
 80001b8:	601a      	str	r2, [r3, #0]
 80001ba:	4b08      	ldr	r3, [pc, #32]	@ (80001dc <StateHighPressure+0x3c>)
 80001bc:	681a      	ldr	r2, [r3, #0]
 80001be:	4b08      	ldr	r3, [pc, #32]	@ (80001e0 <StateHighPressure+0x40>)
 80001c0:	681b      	ldr	r3, [r3, #0]
 80001c2:	429a      	cmp	r2, r3
 80001c4:	d303      	bcc.n	80001ce <StateHighPressure+0x2e>
 80001c6:	4b07      	ldr	r3, [pc, #28]	@ (80001e4 <StateHighPressure+0x44>)
 80001c8:	4a07      	ldr	r2, [pc, #28]	@ (80001e8 <StateHighPressure+0x48>)
 80001ca:	601a      	str	r2, [r3, #0]
 80001cc:	e002      	b.n	80001d4 <StateHighPressure+0x34>
 80001ce:	4b05      	ldr	r3, [pc, #20]	@ (80001e4 <StateHighPressure+0x44>)
 80001d0:	4a06      	ldr	r2, [pc, #24]	@ (80001ec <StateHighPressure+0x4c>)
 80001d2:	601a      	str	r2, [r3, #0]
 80001d4:	bf00      	nop
 80001d6:	bd80      	pop	{r7, pc}
 80001d8:	20000010 	andcs	r0, r0, r0, lsl r0
 80001dc:	20000018 	andcs	r0, r0, r8, lsl r0
 80001e0:	20000004 	andcs	r0, r0, r4
 80001e4:	20000014 	andcs	r0, r0, r4, lsl r0
 80001e8:	080001a1 	stmdaeq	r0, {r0, r5, r7, r8}
 80001ec:	08000155 	stmdaeq	r0, {r0, r2, r4, r6, r8}

080001f0 <setup>:
 80001f0:	b580      	push	{r7, lr}
 80001f2:	af00      	add	r7, sp, #0
 80001f4:	f7ff ff86 	bl	8000104 <GPIO_INITIALIZATION>
 80001f8:	4b03      	ldr	r3, [pc, #12]	@ (8000208 <setup+0x18>)
 80001fa:	4a04      	ldr	r2, [pc, #16]	@ (800020c <setup+0x1c>)
 80001fc:	601a      	str	r2, [r3, #0]
 80001fe:	4b04      	ldr	r3, [pc, #16]	@ (8000210 <setup+0x20>)
 8000200:	4a04      	ldr	r2, [pc, #16]	@ (8000214 <setup+0x24>)
 8000202:	601a      	str	r2, [r3, #0]
 8000204:	bf00      	nop
 8000206:	bd80      	pop	{r7, pc}
 8000208:	20000014 	andcs	r0, r0, r4, lsl r0
 800020c:	08000155 	stmdaeq	r0, {r0, r2, r4, r6, r8}
 8000210:	2000000c 	andcs	r0, r0, ip
 8000214:	08000039 	stmdaeq	r0, {r0, r3, r4, r5}

08000218 <main>:
 8000218:	b580      	push	{r7, lr}
 800021a:	af00      	add	r7, sp, #0
 800021c:	f7ff ffe8 	bl	80001f0 <setup>
 8000220:	4b03      	ldr	r3, [pc, #12]	@ (8000230 <main+0x18>)
 8000222:	681b      	ldr	r3, [r3, #0]
 8000224:	4798      	blx	r3
 8000226:	4b03      	ldr	r3, [pc, #12]	@ (8000234 <main+0x1c>)
 8000228:	681b      	ldr	r3, [r3, #0]
 800022a:	4798      	blx	r3
 800022c:	e7f8      	b.n	8000220 <main+0x8>
 800022e:	bf00      	nop
 8000230:	20000014 	andcs	r0, r0, r4, lsl r0
 8000234:	2000000c 	andcs	r0, r0, ip

08000238 <Reset_handler>:
 8000238:	b580      	push	{r7, lr}
 800023a:	b084      	sub	sp, #16
 800023c:	af00      	add	r7, sp, #0
 800023e:	2300      	movs	r3, #0
 8000240:	607b      	str	r3, [r7, #4]
 8000242:	4a1d      	ldr	r2, [pc, #116]	@ (80002b8 <Reset_handler+0x80>)
 8000244:	4b1d      	ldr	r3, [pc, #116]	@ (80002bc <Reset_handler+0x84>)
 8000246:	1ad3      	subs	r3, r2, r3
 8000248:	603b      	str	r3, [r7, #0]
 800024a:	4b1d      	ldr	r3, [pc, #116]	@ (80002c0 <Reset_handler+0x88>)
 800024c:	60fb      	str	r3, [r7, #12]
 800024e:	4b1b      	ldr	r3, [pc, #108]	@ (80002bc <Reset_handler+0x84>)
 8000250:	60bb      	str	r3, [r7, #8]
 8000252:	2300      	movs	r3, #0
 8000254:	607b      	str	r3, [r7, #4]
 8000256:	e00c      	b.n	8000272 <Reset_handler+0x3a>
 8000258:	68fb      	ldr	r3, [r7, #12]
 800025a:	781a      	ldrb	r2, [r3, #0]
 800025c:	68bb      	ldr	r3, [r7, #8]
 800025e:	701a      	strb	r2, [r3, #0]
 8000260:	687b      	ldr	r3, [r7, #4]
 8000262:	3301      	adds	r3, #1
 8000264:	607b      	str	r3, [r7, #4]
 8000266:	68bb      	ldr	r3, [r7, #8]
 8000268:	3301      	adds	r3, #1
 800026a:	60bb      	str	r3, [r7, #8]
 800026c:	68fb      	ldr	r3, [r7, #12]
 800026e:	3301      	adds	r3, #1
 8000270:	60fb      	str	r3, [r7, #12]
 8000272:	687a      	ldr	r2, [r7, #4]
 8000274:	683b      	ldr	r3, [r7, #0]
 8000276:	429a      	cmp	r2, r3
 8000278:	d3ee      	bcc.n	8000258 <Reset_handler+0x20>
 800027a:	4a12      	ldr	r2, [pc, #72]	@ (80002c4 <Reset_handler+0x8c>)
 800027c:	4b12      	ldr	r3, [pc, #72]	@ (80002c8 <Reset_handler+0x90>)
 800027e:	1ad3      	subs	r3, r2, r3
 8000280:	603b      	str	r3, [r7, #0]
 8000282:	2300      	movs	r3, #0
 8000284:	60fb      	str	r3, [r7, #12]
 8000286:	4b10      	ldr	r3, [pc, #64]	@ (80002c8 <Reset_handler+0x90>)
 8000288:	60bb      	str	r3, [r7, #8]
 800028a:	2300      	movs	r3, #0
 800028c:	607b      	str	r3, [r7, #4]
 800028e:	e008      	b.n	80002a2 <Reset_handler+0x6a>
 8000290:	68bb      	ldr	r3, [r7, #8]
 8000292:	2200      	movs	r2, #0
 8000294:	701a      	strb	r2, [r3, #0]
 8000296:	687b      	ldr	r3, [r7, #4]
 8000298:	3301      	adds	r3, #1
 800029a:	607b      	str	r3, [r7, #4]
 800029c:	68bb      	ldr	r3, [r7, #8]
 800029e:	3301      	adds	r3, #1
 80002a0:	60bb      	str	r3, [r7, #8]
 80002a2:	687a      	ldr	r2, [r7, #4]
 80002a4:	683b      	ldr	r3, [r7, #0]
 80002a6:	429a      	cmp	r2, r3
 80002a8:	d3f2      	bcc.n	8000290 <Reset_handler+0x58>
 80002aa:	f7ff ffb5 	bl	8000218 <main>
 80002ae:	bf00      	nop
 80002b0:	3710      	adds	r7, #16
 80002b2:	46bd      	mov	sp, r7
 80002b4:	bd80      	pop	{r7, pc}
 80002b6:	bf00      	nop
 80002b8:	20000008 	andcs	r0, r0, r8
 80002bc:	20000000 	andcs	r0, r0, r0
 80002c0:	080002d8 	stmdaeq	r0, {r3, r4, r6, r7, r9}
 80002c4:	2000041c 	andcs	r0, r0, ip, lsl r4
 80002c8:	20000008 	andcs	r0, r0, r8

080002cc <Default_handler>:
 80002cc:	b580      	push	{r7, lr}
 80002ce:	af00      	add	r7, sp, #0
 80002d0:	f7ff ffb2 	bl	8000238 <Reset_handler>
 80002d4:	bf00      	nop
 80002d6:	bd80      	pop	{r7, pc}

Disassembly of section .data:

20000000 <AlarmDuration>:
20000000:	0000003c 	andeq	r0, r0, ip, lsr r0

20000004 <PressureThreshold>:
20000004:	0000000f 	andeq	r0, r0, pc

Disassembly of section .bss:

20000008 <AlarmMechanismStatus>:
20000008:	00000000 	andeq	r0, r0, r0

2000000c <ptrAlarmMechanism>:
2000000c:	00000000 	andeq	r0, r0, r0

20000010 <HighPressureDetectionStatus>:
20000010:	00000000 	andeq	r0, r0, r0

20000014 <ptrHighPressureDetection>:
20000014:	00000000 	andeq	r0, r0, r0

20000018 <PressureReceived>:
20000018:	00000000 	andeq	r0, r0, r0

2000001c <stack_top>:
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000017d 	andeq	r0, r0, sp, ror r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	0000008e 	andeq	r0, r0, lr, lsl #1
  10:	00007d0c 	andeq	r7, r0, ip, lsl #26
  14:	00015100 	andeq	r5, r1, r0, lsl #2
  18:	00001c00 	andeq	r1, r0, r0, lsl #24
  1c:	00009008 	andeq	r9, r0, r8
  20:	00000008 	andeq	r0, r0, r8
  24:	06010200 	streq	r0, [r1], -r0, lsl #4
  28:	0000001d 	andeq	r0, r0, sp, lsl r0
  2c:	1b080102 	blne	20043c <vectors_ArrOfPtrToFunc-0x7dffbc4>
  30:	02000000 	andeq	r0, r0, #0
  34:	01470502 	cmpeq	r7, r2, lsl #10
  38:	02020000 	andeq	r0, r2, #0
  3c:	00011007 	andeq	r1, r1, r7
  40:	01230300 			@ <UNDEFINED> instruction: 0x01230300
  44:	4d020000 	stcmi	0, cr0, [r2, #-0]
  48:	00004d18 	andeq	r4, r0, r8, lsl sp
  4c:	05040200 	streq	r0, [r4, #-512]	@ 0xfffffe00
  50:	00000005 	andeq	r0, r0, r5
  54:	00003703 	andeq	r3, r0, r3, lsl #14
  58:	194f0200 	stmdbne	pc, {r9}^	@ <UNPREDICTABLE>
  5c:	00000060 	andeq	r0, r0, r0, rrx
  60:	47070402 	strmi	r0, [r7, -r2, lsl #8]
  64:	02000000 	andeq	r0, r0, #0
  68:	00000508 	andeq	r0, r0, r8, lsl #10
  6c:	08020000 	stmdaeq	r2, {}	@ <UNPREDICTABLE>
  70:	00004207 	andeq	r4, r0, r7, lsl #4
  74:	05040400 	streq	r0, [r4, #-1024]	@ 0xfffffc00
  78:	00746e69 	rsbseq	r6, r4, r9, ror #28
  7c:	4c070402 	cfstrsmi	mvf0, [r7], {2}
  80:	02000000 	andeq	r0, r0, #0
  84:	013b0408 	teqeq	fp, r8, lsl #8
  88:	01020000 	mrseq	r0, (UNDEF: 2)
  8c:	00002408 	andeq	r2, r0, r8, lsl #8
  90:	01250300 			@ <UNDEFINED> instruction: 0x01250300
  94:	2c030000 	stccs	0, cr0, [r3], {-0}
  98:	00004113 	andeq	r4, r0, r3, lsl r1
  9c:	00390300 	eorseq	r0, r9, r0, lsl #6
  a0:	30030000 	andcc	r0, r3, r0
  a4:	00005414 	andeq	r5, r0, r4, lsl r4
  a8:	00b00500 	adcseq	r0, r0, r0, lsl #10
  ac:	00060000 	andeq	r0, r6, r0
  b0:	0000fe07 	andeq	pc, r0, r7, lsl #28
  b4:	0f120400 	svceq	0x00120400
  b8:	000000be 	strheq	r0, [r0], -lr
  bc:	04080101 	streq	r0, [r8], #-257	@ 0xfffffeff
  c0:	000000a9 	andeq	r0, r0, r9, lsr #1
  c4:	2c010709 	stccs	7, cr0, [r1], {9}
  c8:	01000000 	mrseq	r0, (UNDEF: 0)
  cc:	00df0610 	sbcseq	r0, pc, r0, lsl r6	@ <UNPREDICTABLE>
  d0:	2e0a0000 	cdpcs	0, 0, cr0, cr10, cr0, {0}
  d4:	00000000 	andeq	r0, r0, r0
  d8:	0000130a 	andeq	r1, r0, sl, lsl #6
  dc:	0b000100 	bleq	4e4 <vectors_ArrOfPtrToFunc-0x7fffb1c>
  e0:	00000059 	andeq	r0, r0, r9, asr r0
  e4:	c4021301 	strgt	r1, [r2], #-769	@ 0xfffffcff
  e8:	01000000 	mrseq	r0, (UNDEF: 0)
  ec:	00080305 	andeq	r0, r8, r5, lsl #6
  f0:	b00c2000 	andlt	r2, ip, r0
  f4:	01000000 	mrseq	r0, (UNDEF: 0)
  f8:	03050816 	movweq	r0, #22550	@ 0x5816
  fc:	2000000c 	andcs	r0, r0, ip
 100:	00012d0b 	andeq	r2, r1, fp, lsl #26
 104:	0a190100 	beq	64050c <vectors_ArrOfPtrToFunc-0x79bfaf4>
 108:	0000009d 	muleq	r0, sp, r0
 10c:	00030501 	andeq	r0, r3, r1, lsl #10
 110:	0d200000 	stceq	0, cr0, [r0, #-0]
 114:	0001a501 	andeq	sl, r1, r1, lsl #10
 118:	0d0d0100 	stfeqs	f0, [sp, #-0]
 11c:	01280101 			@ <UNDEFINED> instruction: 0x01280101
 120:	750e0000 	strvc	r0, [lr, #-0]
 124:	00000000 	andeq	r0, r0, r0
 128:	00eb010d 	rsceq	r0, fp, sp, lsl #2
 12c:	0c010000 	stceq	0, cr0, [r1], {-0}
 130:	3d01010d 	stfccs	f0, [r1, #-52]	@ 0xffffffcc
 134:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
 138:	00000075 	andeq	r0, r0, r5, ror r0
 13c:	0e010f00 	cdpeq	15, 0, cr0, cr1, cr0, {0}
 140:	01000000 	mrseq	r0, (UNDEF: 0)
 144:	00500129 	subseq	r0, r0, r9, lsr #2
 148:	00900800 	addseq	r0, r0, r0, lsl #16
 14c:	00000800 	andeq	r0, r0, r0, lsl #16
 150:	0f010000 	svceq	0x00010000
 154:	00002901 	andeq	r2, r0, r1, lsl #18
 158:	01230100 			@ <UNDEFINED> instruction: 0x01230100
 15c:	08000038 	stmdaeq	r0, {r3, r4, r5}
 160:	08000050 	stmdaeq	r0, {r4, r6}
 164:	0000002c 	andeq	r0, r0, ip, lsr #32
 168:	6e011001 	cdpvs	0, 0, cr1, cr1, cr1, {0}
 16c:	01000000 	mrseq	r0, (UNDEF: 0)
 170:	1c01061d 	stcne	6, cr0, [r1], {29}
 174:	38080000 	stmdacc	r8, {}	@ <UNPREDICTABLE>
 178:	58080000 	stmdapl	r8, {}	@ <UNPREDICTABLE>
 17c:	01000000 	mrseq	r0, (UNDEF: 0)
 180:	00010e00 	andeq	r0, r1, r0, lsl #28
 184:	ed000200 	sfm	f0, 4, [r0, #-0]
 188:	04000000 	streq	r0, [r0], #-0
 18c:	00008e01 	andeq	r8, r0, r1, lsl #28
 190:	01b20c00 			@ <UNDEFINED> instruction: 0x01b20c00
 194:	01510000 	cmpeq	r1, r0
 198:	00900000 	addseq	r0, r0, r0
 19c:	01540800 	cmpeq	r4, r0, lsl #16
 1a0:	025f0800 	subseq	r0, pc, #0, 16
 1a4:	01020000 	mrseq	r0, (UNDEF: 2)
 1a8:	00001d06 	andeq	r1, r0, r6, lsl #26
 1ac:	08010200 	stmdaeq	r1, {r9}
 1b0:	0000001b 	andeq	r0, r0, fp, lsl r0
 1b4:	47050202 	strmi	r0, [r5, -r2, lsl #4]
 1b8:	02000001 	andeq	r0, r0, #1
 1bc:	01100702 	tsteq	r0, r2, lsl #14
 1c0:	04020000 	streq	r0, [r2], #-0
 1c4:	00000505 	andeq	r0, r0, r5, lsl #10
 1c8:	00370300 	eorseq	r0, r7, r0, lsl #6
 1cc:	4f020000 	svcmi	0x00020000
 1d0:	00005419 	andeq	r5, r0, r9, lsl r4
 1d4:	07040200 	streq	r0, [r4, -r0, lsl #4]
 1d8:	00000047 	andeq	r0, r0, r7, asr #32
 1dc:	00050802 	andeq	r0, r5, r2, lsl #16
 1e0:	02000000 	andeq	r0, r0, #0
 1e4:	00420708 	subeq	r0, r2, r8, lsl #14
 1e8:	04040000 	streq	r0, [r4], #-0
 1ec:	746e6905 	strbtvc	r6, [lr], #-2309	@ 0xfffff6fb
 1f0:	07040200 	streq	r0, [r4, -r0, lsl #4]
 1f4:	0000004c 	andeq	r0, r0, ip, asr #32
 1f8:	00003903 	andeq	r3, r0, r3, lsl #18
 1fc:	14300300 	ldrtne	r0, [r0], #-768	@ 0xfffffd00
 200:	00000048 	andeq	r0, r0, r8, asr #32
 204:	3b040802 	blcc	102214 <vectors_ArrOfPtrToFunc-0x7efddec>
 208:	02000001 	andeq	r0, r0, #1
 20c:	00240801 	eoreq	r0, r4, r1, lsl #16
 210:	01050000 	mrseq	r0, (UNDEF: 5)
 214:	000001bb 			@ <UNDEFINED> instruction: 0x000001bb
 218:	04061601 	streq	r1, [r6], #-1537	@ 0xfffff9ff
 21c:	54080001 	strpl	r0, [r8], #-1
 220:	9c080001 	stcls	0, cr0, [r8], {1}
 224:	01000000 	mrseq	r0, (UNDEF: 0)
 228:	00eb0106 	rsceq	r0, fp, r6, lsl #2
 22c:	0d010000 	stceq	0, cr0, [r1, #-0]
 230:	00c80106 	sbceq	r0, r8, r6, lsl #2
 234:	01040800 	tsteq	r4, r0, lsl #16
 238:	00e00800 	rsceq	r0, r0, r0, lsl #16
 23c:	d0010000 	andle	r0, r1, r0
 240:	07000000 	streq	r0, [r0, -r0]
 244:	0d010069 	stceq	0, cr0, [r1, #-420]	@ 0xfffffe5c
 248:	0000691d 	andeq	r6, r0, sp, lsl r9
 24c:	74910200 	ldrvc	r0, [r1], #512	@ 0x200
 250:	cf010800 	svcgt	0x00010800
 254:	01000001 	tsteq	r0, r1
 258:	00690509 	rsbeq	r0, r9, r9, lsl #10
 25c:	00b20000 	adcseq	r0, r2, r0
 260:	00c80800 	sbceq	r0, r8, r0, lsl #16
 264:	013c0800 	teqeq	ip, r0, lsl #16
 268:	09010000 	stmdbeq	r1, {}	@ <UNPREDICTABLE>
 26c:	0001a501 	andeq	sl, r1, r1, lsl #10
 270:	06040100 	streq	r0, [r4], -r0, lsl #2
 274:	00009001 	andeq	r9, r0, r1
 278:	0000b208 	andeq	fp, r0, r8, lsl #4
 27c:	00018008 	andeq	r8, r1, r8
 280:	ab0a0100 	blge	280688 <vectors_ArrOfPtrToFunc-0x7d7f978>
 284:	01000001 	tsteq	r0, r1
 288:	00691004 	rsbeq	r1, r9, r4
 28c:	91020000 	mrsls	r0, (UNDEF: 2)
 290:	56000074 			@ <UNDEFINED> instruction: 0x56000074
 294:	02000001 	andeq	r0, r0, #1
 298:	0001b000 	andeq	fp, r1, r0
 29c:	8e010400 	cfcpyshi	mvf0, mvf1
 2a0:	0c000000 	stceq	0, cr0, [r0], {-0}
 2a4:	00000202 	andeq	r0, r0, r2, lsl #4
 2a8:	00000151 	andeq	r0, r0, r1, asr r1
 2ac:	08000154 	stmdaeq	r0, {r2, r4, r6, r8}
 2b0:	080001f0 	stmdaeq	r0, {r4, r5, r6, r7, r8}
 2b4:	000004cf 	andeq	r0, r0, pc, asr #9
 2b8:	1d060102 	stfnes	f0, [r6, #-8]
 2bc:	02000000 	andeq	r0, r0, #0
 2c0:	001b0801 	andseq	r0, fp, r1, lsl #16
 2c4:	02020000 	andeq	r0, r2, #0
 2c8:	00014705 	andeq	r4, r1, r5, lsl #14
 2cc:	07020200 	streq	r0, [r2, -r0, lsl #4]
 2d0:	00000110 	andeq	r0, r0, r0, lsl r1
 2d4:	05050402 	streq	r0, [r5, #-1026]	@ 0xfffffbfe
 2d8:	03000000 	movweq	r0, #0
 2dc:	00000037 	andeq	r0, r0, r7, lsr r0
 2e0:	54194f02 	ldrpl	r4, [r9], #-3842	@ 0xfffff0fe
 2e4:	02000000 	andeq	r0, r0, #0
 2e8:	00470704 	subeq	r0, r7, r4, lsl #14
 2ec:	08020000 	stmdaeq	r2, {}	@ <UNPREDICTABLE>
 2f0:	00000005 	andeq	r0, r0, r5
 2f4:	07080200 	streq	r0, [r8, -r0, lsl #4]
 2f8:	00000042 	andeq	r0, r0, r2, asr #32
 2fc:	69050404 	stmdbvs	r5, {r2, sl}
 300:	0200746e 	andeq	r7, r0, #1845493760	@ 0x6e000000
 304:	004c0704 	subeq	r0, ip, r4, lsl #14
 308:	08020000 	stmdaeq	r2, {}	@ <UNPREDICTABLE>
 30c:	00013b04 	andeq	r3, r1, r4, lsl #22
 310:	08010200 	stmdaeq	r1, {r9}
 314:	00000024 	andeq	r0, r0, r4, lsr #32
 318:	00003903 	andeq	r3, r0, r3, lsl #18
 31c:	14300300 	ldrtne	r0, [r0], #-768	@ 0xfffffd00
 320:	00000048 	andeq	r0, r0, r8, asr #32
 324:	00009805 	andeq	r9, r0, r5, lsl #16
 328:	07000600 	streq	r0, [r0, -r0, lsl #12]
 32c:	00000236 	andeq	r0, r0, r6, lsr r2
 330:	a60f1204 	strge	r1, [pc], -r4, lsl #4
 334:	01000000 	mrseq	r0, (UNDEF: 0)
 338:	91040801 	tstls	r4, r1, lsl #16
 33c:	09000000 	stmdbeq	r0, {}	@ <UNPREDICTABLE>
 340:	002c0107 	eoreq	r0, ip, r7, lsl #2
 344:	0e010000 	cdpeq	0, 0, cr0, cr1, cr0, {0}
 348:	0000c706 	andeq	ip, r0, r6, lsl #14
 34c:	02650a00 	rsbeq	r0, r5, #0, 20
 350:	0a000000 	beq	358 <vectors_ArrOfPtrToFunc-0x7fffca8>
 354:	000001f5 	strdeq	r0, [r0], -r5
 358:	1a0b0001 	bne	2c0364 <vectors_ArrOfPtrToFunc-0x7d3fc9c>
 35c:	01000002 	tsteq	r0, r2
 360:	00ac0211 	adceq	r0, ip, r1, lsl r2
 364:	05010000 	streq	r0, [r1, #-0]
 368:	00001003 	andeq	r1, r0, r3
 36c:	00980c20 	addseq	r0, r8, r0, lsr #24
 370:	14010000 	strne	r0, [r1], #-0
 374:	14030508 	strne	r0, [r3], #-1288	@ 0xfffffaf8
 378:	0b200000 	bleq	800380 <vectors_ArrOfPtrToFunc-0x77ffc80>
 37c:	0000024f 	andeq	r0, r0, pc, asr #4
 380:	850a1701 	strhi	r1, [sl, #-1793]	@ 0xfffff8ff
 384:	01000000 	mrseq	r0, (UNDEF: 0)
 388:	00180305 	andseq	r0, r8, r5, lsl #6
 38c:	de0b2000 	cdple	0, 0, cr2, cr11, cr0, {0}
 390:	01000001 	tsteq	r0, r1
 394:	00850a18 	addeq	r0, r5, r8, lsl sl
 398:	05010000 	streq	r0, [r1, #-0]
 39c:	00000403 	andeq	r0, r0, r3, lsl #8
 3a0:	6e010d20 	cdpvs	13, 0, cr0, cr1, cr0, {1}
 3a4:	05000000 	streq	r0, [r0, #-0]
 3a8:	01010614 	tsteq	r1, r4, lsl r6
 3ac:	01cf010e 	biceq	r0, pc, lr, lsl #2
 3b0:	0b010000 	bleq	403b8 <vectors_ArrOfPtrToFunc-0x7fbfc48>
 3b4:	0000690c 	andeq	r6, r0, ip, lsl #18
 3b8:	012d0100 			@ <UNDEFINED> instruction: 0x012d0100
 3bc:	00060000 	andeq	r0, r6, r0
 3c0:	01f0010f 	mvnseq	r0, pc, lsl #2
 3c4:	25010000 	strcs	r0, [r1, #-0]
 3c8:	0001a001 	andeq	sl, r1, r1
 3cc:	0001f008 	andeq	pc, r1, r8
 3d0:	0001dc08 	andeq	sp, r1, r8, lsl #24
 3d4:	010f0100 	mrseq	r0, (UNDEF: 31)
 3d8:	00000260 	andeq	r0, r0, r0, ror #4
 3dc:	54011d01 	strpl	r1, [r1], #-3329	@ 0xfffff2ff
 3e0:	a0080001 	andge	r0, r8, r1
 3e4:	08080001 	stmdaeq	r8, {r0}
 3e8:	01000002 	tsteq	r0, r2
 3ec:	0000ff00 	andeq	pc, r0, r0, lsl #30
 3f0:	8f000200 	svchi	0x00000200
 3f4:	04000002 	streq	r0, [r0], #-2
 3f8:	00008e01 	andeq	r8, r0, r1, lsl #28
 3fc:	02740c00 	rsbseq	r0, r4, #0, 24
 400:	01510000 	cmpeq	r1, r0
 404:	01f00000 	mvnseq	r0, r0
 408:	02380800 	eorseq	r0, r8, #0, 16
 40c:	07800800 	streq	r0, [r0, r0, lsl #16]
 410:	01020000 	mrseq	r0, (UNDEF: 2)
 414:	00001d06 	andeq	r1, r0, r6, lsl #26
 418:	08010200 	stmdaeq	r1, {r9}
 41c:	0000001b 	andeq	r0, r0, fp, lsl r0
 420:	47050202 	strmi	r0, [r5, -r2, lsl #4]
 424:	02000001 	andeq	r0, r0, #1
 428:	01100702 	tsteq	r0, r2, lsl #14
 42c:	04020000 	streq	r0, [r2], #-0
 430:	00000505 	andeq	r0, r0, r5, lsl #10
 434:	07040200 	streq	r0, [r4, -r0, lsl #4]
 438:	00000047 	andeq	r0, r0, r7, asr #32
 43c:	00050802 	andeq	r0, r5, r2, lsl #16
 440:	02000000 	andeq	r0, r0, #0
 444:	00420708 	subeq	r0, r2, r8, lsl #14
 448:	04030000 	streq	r0, [r3], #-0
 44c:	746e6905 	strbtvc	r6, [lr], #-2309	@ 0xfffff6fb
 450:	07040200 	streq	r0, [r4, -r0, lsl #4]
 454:	0000004c 	andeq	r0, r0, ip, asr #32
 458:	3b040802 	blcc	102468 <vectors_ArrOfPtrToFunc-0x7efdb98>
 45c:	02000001 	andeq	r0, r0, #1
 460:	00240801 	eoreq	r0, r4, r1, lsl #16
 464:	80040000 	andhi	r0, r4, r0
 468:	05000000 	streq	r0, [r0, #-0]
 46c:	02360600 	eorseq	r0, r6, #0, 12
 470:	12020000 	andne	r0, r2, #0
 474:	00008e0f 	andeq	r8, r0, pc, lsl #28
 478:	07010100 	streq	r0, [r1, -r0, lsl #2]
 47c:	00007904 	andeq	r7, r0, r4, lsl #18
 480:	00fe0600 	rscseq	r0, lr, r0, lsl #12
 484:	12030000 	andne	r0, r3, #0
 488:	00008e0f 	andeq	r8, r0, pc, lsl #28
 48c:	08010100 	stmdaeq	r1, {r8}
 490:	00002901 	andeq	r2, r0, r1, lsl #18
 494:	010e0300 	mrseq	r0, ELR_hyp
 498:	0000b201 	andeq	fp, r0, r1, lsl #4
 49c:	08000500 	stmdaeq	r0, {r8, sl}
 4a0:	00026001 	andeq	r6, r2, r1
 4a4:	010e0200 	mrseq	r0, LR_fiq
 4a8:	0000c201 	andeq	ip, r0, r1, lsl #4
 4ac:	08000500 	stmdaeq	r0, {r8, sl}
 4b0:	0001bb01 	andeq	fp, r1, r1, lsl #22
 4b4:	06180400 	ldreq	r0, [r8], -r0, lsl #8
 4b8:	0000d201 	andeq	sp, r0, r1, lsl #4
 4bc:	09000500 	stmdbeq	r0, {r8, sl}
 4c0:	00028101 	andeq	r8, r2, r1, lsl #2
 4c4:	05160100 	ldreq	r0, [r6, #-256]	@ 0xffffff00
 4c8:	0000005d 	andeq	r0, r0, sp, asr r0
 4cc:	08000218 	stmdaeq	r0, {r3, r4, r9}
 4d0:	08000238 	stmdaeq	r0, {r3, r4, r5, r9}
 4d4:	00000234 	andeq	r0, r0, r4, lsr r2
 4d8:	7b010a01 	blvc	42ce4 <vectors_ArrOfPtrToFunc-0x7fbd31c>
 4dc:	01000002 	tsteq	r0, r2
 4e0:	01f0060d 	mvnseq	r0, sp, lsl #12
 4e4:	02180800 	andseq	r0, r8, #0, 16
 4e8:	02600800 	rsbeq	r0, r0, #0, 16
 4ec:	00010000 	andeq	r0, r1, r0
 4f0:	000001b7 			@ <UNDEFINED> instruction: 0x000001b7
 4f4:	03260002 			@ <UNDEFINED> instruction: 0x03260002
 4f8:	01040000 	mrseq	r0, (UNDEF: 4)
 4fc:	0000008e 	andeq	r0, r0, lr, lsl #1
 500:	0002860c 	andeq	r8, r2, ip, lsl #12
 504:	00015100 	andeq	r5, r1, r0, lsl #2
 508:	00023800 	andeq	r3, r2, r0, lsl #16
 50c:	0002d808 	andeq	sp, r2, r8, lsl #16
 510:	00081408 	andeq	r1, r8, r8, lsl #8
 514:	06010200 	streq	r0, [r1], -r0, lsl #4
 518:	0000001d 	andeq	r0, r0, sp, lsl r0
 51c:	00029003 	andeq	r9, r2, r3
 520:	182b0200 	stmdane	fp!, {r9}
 524:	00000038 	andeq	r0, r0, r8, lsr r0
 528:	1b080102 	blne	200938 <vectors_ArrOfPtrToFunc-0x7dff6c8>
 52c:	02000000 	andeq	r0, r0, #0
 530:	01470502 	cmpeq	r7, r2, lsl #10
 534:	02020000 	andeq	r0, r2, #0
 538:	00011007 	andeq	r1, r1, r7
 53c:	05040200 	streq	r0, [r4, #-512]	@ 0xfffffe00
 540:	00000005 	andeq	r0, r0, r5
 544:	00003703 	andeq	r3, r0, r3, lsl #14
 548:	194f0200 	stmdbne	pc, {r9}^	@ <UNPREDICTABLE>
 54c:	00000060 	andeq	r0, r0, r0, rrx
 550:	47070402 	strmi	r0, [r7, -r2, lsl #8]
 554:	02000000 	andeq	r0, r0, #0
 558:	00000508 	andeq	r0, r0, r8, lsl #10
 55c:	08020000 	stmdaeq	r2, {}	@ <UNPREDICTABLE>
 560:	00004207 	andeq	r4, r0, r7, lsl #4
 564:	05040400 	streq	r0, [r4, #-1024]	@ 0xfffffc00
 568:	00746e69 	rsbseq	r6, r4, r9, ror #28
 56c:	4c070402 	cfstrsmi	mvf0, [r7], {2}
 570:	03000000 	movweq	r0, #0
 574:	00000292 	muleq	r0, r2, r2
 578:	2c131803 	ldccs	8, cr1, [r3], {3}
 57c:	03000000 	movweq	r0, #0
 580:	00000039 	andeq	r0, r0, r9, lsr r0
 584:	54143003 	ldrpl	r3, [r4], #-3
 588:	05000000 	streq	r0, [r0, #-0]
 58c:	0000008f 	andeq	r0, r0, pc, lsl #1
 590:	000000ab 	andeq	r0, r0, fp, lsr #1
 594:	00007c06 	andeq	r7, r0, r6, lsl #24
 598:	0700ff00 	streq	pc, [r0, -r0, lsl #30]
 59c:	000002ad 	andeq	r0, r0, sp, lsr #5
 5a0:	9b110701 	blls	4421ac <vectors_ArrOfPtrToFunc-0x7bbde54>
 5a4:	05000000 	streq	r0, [r0, #-0]
 5a8:	00001c03 	andeq	r1, r0, r3, lsl #24
 5ac:	00d80520 	sbcseq	r0, r8, r0, lsr #10
 5b0:	00cd0000 	sbceq	r0, sp, r0
 5b4:	7c060000 	stcvc	0, cr0, [r6], {-0}
 5b8:	06000000 	streq	r0, [r0], -r0
 5bc:	00bd0800 	adcseq	r0, sp, r0, lsl #16
 5c0:	04090000 	streq	r0, [r9], #-0
 5c4:	000000dd 	ldrdeq	r0, [r0], -sp
 5c8:	0000d208 	andeq	sp, r0, r8, lsl #4
 5cc:	0b010a00 	bleq	42dd4 <vectors_ArrOfPtrToFunc-0x7fbd22c>
 5d0:	000002f1 	strdeq	r0, [r0], -r1
 5d4:	cd0e0f01 	stcgt	15, cr0, [lr, #-4]
 5d8:	01000000 	mrseq	r0, (UNDEF: 0)
 5dc:	00000305 	andeq	r0, r0, r5, lsl #6
 5e0:	b70c0800 	strlt	r0, [ip, -r0, lsl #16]
 5e4:	01000002 	tsteq	r0, r2
 5e8:	008f1119 	addeq	r1, pc, r9, lsl r1	@ <UNPREDICTABLE>
 5ec:	01010000 	mrseq	r0, (UNDEF: 1)
 5f0:	0002cc0c 	andeq	ip, r2, ip, lsl #24
 5f4:	111a0100 	tstne	sl, r0, lsl #2
 5f8:	0000008f 	andeq	r0, r0, pc, lsl #1
 5fc:	1d0c0101 	stfnes	f0, [ip, #-4]
 600:	01000003 	tsteq	r0, r3
 604:	008f111b 	addeq	r1, pc, fp, lsl r1	@ <UNPREDICTABLE>
 608:	01010000 	mrseq	r0, (UNDEF: 1)
 60c:	0002c10c 	andeq	ip, r2, ip, lsl #2
 610:	111c0100 	tstne	ip, r0, lsl #2
 614:	0000008f 	andeq	r0, r0, pc, lsl #1
 618:	e80c0101 	stmda	ip, {r0, r8}
 61c:	01000002 	tsteq	r0, r2
 620:	008f111d 	addeq	r1, pc, sp, lsl r1	@ <UNPREDICTABLE>
 624:	01010000 	mrseq	r0, (UNDEF: 1)
 628:	0281010d 	addeq	r0, r1, #1073741827	@ 0x40000003
 62c:	04010000 	streq	r0, [r1], #-0
 630:	0075010c 	rsbseq	r0, r5, ip, lsl #2
 634:	0e010000 	cdpeq	0, 0, cr0, cr1, cr0, {0}
 638:	0002d801 	andeq	sp, r2, r1, lsl #16
 63c:	063b0100 	ldrteq	r0, [fp], -r0, lsl #2
 640:	0002cc01 	andeq	ip, r2, r1, lsl #24
 644:	0002d808 	andeq	sp, r2, r8, lsl #16
 648:	00028c08 	andeq	r8, r2, r8, lsl #24
 64c:	010f0100 	mrseq	r0, (UNDEF: 31)
 650:	00000308 	andeq	r0, r0, r8, lsl #6
 654:	01061f01 	tsteq	r6, r1, lsl #30
 658:	08000238 	stmdaeq	r0, {r3, r4, r5, r9}
 65c:	080002cc 	stmdaeq	r0, {r2, r3, r6, r7, r9}
 660:	000002b8 			@ <UNDEFINED> instruction: 0x000002b8
 664:	0001b401 	andeq	fp, r1, r1, lsl #8
 668:	029a0700 	addseq	r0, sl, #0, 14
 66c:	21010000 	mrscs	r0, (UNDEF: 1)
 670:	00008f0b 	andeq	r8, r0, fp, lsl #30
 674:	68910200 	ldmvs	r1, {r9}
 678:	0002a707 	andeq	sl, r2, r7, lsl #14
 67c:	0b220100 	bleq	880a84 <vectors_ArrOfPtrToFunc-0x777f57c>
 680:	000001b4 			@ <UNDEFINED> instruction: 0x000001b4
 684:	07749102 	ldrbeq	r9, [r4, -r2, lsl #2]!
 688:	00000316 	andeq	r0, r0, r6, lsl r3
 68c:	b4132201 	ldrlt	r2, [r3], #-513	@ 0xfffffdff
 690:	02000001 	andeq	r0, r0, #1
 694:	69107091 	ldmdbvs	r0, {r0, r4, r7, ip, sp, lr}
 698:	0b230100 	bleq	8c0aa0 <vectors_ArrOfPtrToFunc-0x773f560>
 69c:	0000008f 	andeq	r0, r0, pc, lsl #1
 6a0:	006c9102 	rsbeq	r9, ip, r2, lsl #2
 6a4:	00830409 	addeq	r0, r3, r9, lsl #8
 6a8:	Address 0x6a8 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	@ 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	@ 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors_ArrOfPtrToFunc-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors_ArrOfPtrToFunc-0x7c7f3d8>
  24:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	0013490b 	andseq	r4, r3, fp, lsl #18
  2c:	00240400 	eoreq	r0, r4, r0, lsl #8
  30:	0b3e0b0b 	bleq	f82c64 <vectors_ArrOfPtrToFunc-0x707d39c>
  34:	00000803 	andeq	r0, r0, r3, lsl #16
  38:	01011505 	tsteq	r1, r5, lsl #10
  3c:	06000013 			@ <UNDEFINED> instruction: 0x06000013
  40:	00000018 	andeq	r0, r0, r8, lsl r0
  44:	03003407 	movweq	r3, #1031	@ 0x407
  48:	3b0b3a0e 	blcc	2ce888 <vectors_ArrOfPtrToFunc-0x7d31778>
  4c:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
  50:	3c0c3f13 	stccc	15, cr3, [ip], {19}
  54:	0800000c 	stmdaeq	r0, {r2, r3}
  58:	0b0b000f 	bleq	2c009c <vectors_ArrOfPtrToFunc-0x7d3ff64>
  5c:	00001349 	andeq	r1, r0, r9, asr #6
  60:	3e010409 	cdpcc	4, 0, cr0, cr1, cr9, {0}
  64:	490b0b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp}
  68:	3b0b3a13 	blcc	2ce8bc <vectors_ArrOfPtrToFunc-0x7d31744>
  6c:	010b390b 	tsteq	fp, fp, lsl #18
  70:	0a000013 	beq	c4 <vectors_ArrOfPtrToFunc-0x7ffff3c>
  74:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
  78:	00000b1c 	andeq	r0, r0, ip, lsl fp
  7c:	0300340b 	movweq	r3, #1035	@ 0x40b
  80:	3b0b3a0e 	blcc	2ce8c0 <vectors_ArrOfPtrToFunc-0x7d31740>
  84:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
  88:	020c3f13 	andeq	r3, ip, #19, 30	@ 0x4c
  8c:	0c00000a 	stceq	0, cr0, [r0], {10}
  90:	13470034 	movtne	r0, #28724	@ 0x7034
  94:	0b3b0b3a 	bleq	ec2d84 <vectors_ArrOfPtrToFunc-0x713d27c>
  98:	0a020b39 	beq	82d84 <vectors_ArrOfPtrToFunc-0x7f7d27c>
  9c:	2e0d0000 	cdpcs	0, 0, cr0, cr13, cr0, {0}
  a0:	030c3f01 	movweq	r3, #52993	@ 0xcf01
  a4:	3b0b3a0e 	blcc	2ce8e4 <vectors_ArrOfPtrToFunc-0x7d3171c>
  a8:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
  ac:	010c3c0c 	tsteq	ip, ip, lsl #24
  b0:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
  b4:	13490005 	movtne	r0, #36869	@ 0x9005
  b8:	2e0f0000 	cdpcs	0, 0, cr0, cr15, cr0, {0}
  bc:	030c3f00 	movweq	r3, #52992	@ 0xcf00
  c0:	3b0b3a0e 	blcc	2ce900 <vectors_ArrOfPtrToFunc-0x7d31700>
  c4:	110b390b 	tstne	fp, fp, lsl #18
  c8:	40011201 	andmi	r1, r1, r1, lsl #4
  cc:	0c429606 	mcrreq	6, 0, r9, r2, cr6
  d0:	2e100000 	cdpcs	0, 1, cr0, cr0, cr0, {0}
  d4:	030c3f00 	movweq	r3, #52992	@ 0xcf00
  d8:	3b0b3a0e 	blcc	2ce918 <vectors_ArrOfPtrToFunc-0x7d316e8>
  dc:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
  e0:	1201110c 	andne	r1, r1, #12, 2
  e4:	97064001 	strls	r4, [r6, -r1]
  e8:	00000c42 	andeq	r0, r0, r2, asr #24
  ec:	01110100 	tsteq	r1, r0, lsl #2
  f0:	0b130e25 	bleq	4c398c <vectors_ArrOfPtrToFunc-0x7b3c674>
  f4:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
  f8:	01120111 	tsteq	r2, r1, lsl r1
  fc:	00000610 	andeq	r0, r0, r0, lsl r6
 100:	0b002402 	bleq	9110 <vectors_ArrOfPtrToFunc-0x7ff6ef0>
 104:	030b3e0b 	movweq	r3, #48651	@ 0xbe0b
 108:	0300000e 	movweq	r0, #14
 10c:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 110:	0b3b0b3a 	bleq	ec2e00 <vectors_ArrOfPtrToFunc-0x713d200>
 114:	13490b39 	movtne	r0, #39737	@ 0x9b39
 118:	24040000 	strcs	r0, [r4], #-0
 11c:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 120:	0008030b 	andeq	r0, r8, fp, lsl #6
 124:	002e0500 	eoreq	r0, lr, r0, lsl #10
 128:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 12c:	0b3b0b3a 	bleq	ec2e1c <vectors_ArrOfPtrToFunc-0x713d1e4>
 130:	01110b39 	tsteq	r1, r9, lsr fp
 134:	06400112 			@ <UNDEFINED> instruction: 0x06400112
 138:	000c4297 	muleq	ip, r7, r2
 13c:	012e0600 			@ <UNDEFINED> instruction: 0x012e0600
 140:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 144:	0b3b0b3a 	bleq	ec2e34 <vectors_ArrOfPtrToFunc-0x713d1cc>
 148:	0c270b39 			@ <UNDEFINED> instruction: 0x0c270b39
 14c:	01120111 	tsteq	r2, r1, lsl r1
 150:	42970640 	addsmi	r0, r7, #64, 12	@ 0x4000000
 154:	0013010c 	andseq	r0, r3, ip, lsl #2
 158:	00050700 	andeq	r0, r5, r0, lsl #14
 15c:	0b3a0803 	bleq	e82170 <vectors_ArrOfPtrToFunc-0x717de90>
 160:	0b390b3b 	bleq	e42e54 <vectors_ArrOfPtrToFunc-0x71bd1ac>
 164:	0a021349 	beq	84e90 <vectors_ArrOfPtrToFunc-0x7f7b170>
 168:	2e080000 	cdpcs	0, 0, cr0, cr8, cr0, {0}
 16c:	030c3f00 	movweq	r3, #52992	@ 0xcf00
 170:	3b0b3a0e 	blcc	2ce9b0 <vectors_ArrOfPtrToFunc-0x7d31650>
 174:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 178:	12011113 	andne	r1, r1, #-1073741820	@ 0xc0000004
 17c:	97064001 	strls	r4, [r6, -r1]
 180:	00000c42 	andeq	r0, r0, r2, asr #24
 184:	3f012e09 	svccc	0x00012e09
 188:	3a0e030c 	bcc	380dc0 <vectors_ArrOfPtrToFunc-0x7c7f240>
 18c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 190:	110c270b 	tstne	ip, fp, lsl #14
 194:	40011201 	andmi	r1, r1, r1, lsl #4
 198:	0c429706 	mcrreq	7, 0, r9, r2, cr6
 19c:	050a0000 	streq	r0, [sl, #-0]
 1a0:	3a0e0300 	bcc	380da8 <vectors_ArrOfPtrToFunc-0x7c7f258>
 1a4:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 1a8:	0213490b 	andseq	r4, r3, #180224	@ 0x2c000
 1ac:	0000000a 	andeq	r0, r0, sl
 1b0:	25011101 	strcs	r1, [r1, #-257]	@ 0xfffffeff
 1b4:	030b130e 	movweq	r1, #45838	@ 0xb30e
 1b8:	110e1b0e 	tstne	lr, lr, lsl #22
 1bc:	10011201 	andne	r1, r1, r1, lsl #4
 1c0:	02000006 	andeq	r0, r0, #6
 1c4:	0b0b0024 	bleq	2c025c <vectors_ArrOfPtrToFunc-0x7d3fda4>
 1c8:	0e030b3e 	vmoveq.16	d3[0], r0
 1cc:	16030000 	strne	r0, [r3], -r0
 1d0:	3a0e0300 	bcc	380dd8 <vectors_ArrOfPtrToFunc-0x7c7f228>
 1d4:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 1d8:	0013490b 	andseq	r4, r3, fp, lsl #18
 1dc:	00240400 	eoreq	r0, r4, r0, lsl #8
 1e0:	0b3e0b0b 	bleq	f82e14 <vectors_ArrOfPtrToFunc-0x707d1ec>
 1e4:	00000803 	andeq	r0, r0, r3, lsl #16
 1e8:	01011505 	tsteq	r1, r5, lsl #10
 1ec:	06000013 			@ <UNDEFINED> instruction: 0x06000013
 1f0:	00000018 	andeq	r0, r0, r8, lsl r0
 1f4:	03003407 	movweq	r3, #1031	@ 0x407
 1f8:	3b0b3a0e 	blcc	2cea38 <vectors_ArrOfPtrToFunc-0x7d315c8>
 1fc:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 200:	3c0c3f13 	stccc	15, cr3, [ip], {19}
 204:	0800000c 	stmdaeq	r0, {r2, r3}
 208:	0b0b000f 	bleq	2c024c <vectors_ArrOfPtrToFunc-0x7d3fdb4>
 20c:	00001349 	andeq	r1, r0, r9, asr #6
 210:	3e010409 	cdpcc	4, 0, cr0, cr1, cr9, {0}
 214:	490b0b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp}
 218:	3b0b3a13 	blcc	2cea6c <vectors_ArrOfPtrToFunc-0x7d31594>
 21c:	010b390b 	tsteq	fp, fp, lsl #18
 220:	0a000013 	beq	274 <vectors_ArrOfPtrToFunc-0x7fffd8c>
 224:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
 228:	00000b1c 	andeq	r0, r0, ip, lsl fp
 22c:	0300340b 	movweq	r3, #1035	@ 0x40b
 230:	3b0b3a0e 	blcc	2cea70 <vectors_ArrOfPtrToFunc-0x7d31590>
 234:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 238:	020c3f13 	andeq	r3, ip, #19, 30	@ 0x4c
 23c:	0c00000a 	stceq	0, cr0, [r0], {10}
 240:	13470034 	movtne	r0, #28724	@ 0x7034
 244:	0b3b0b3a 	bleq	ec2f34 <vectors_ArrOfPtrToFunc-0x713d0cc>
 248:	0a020b39 	beq	82f34 <vectors_ArrOfPtrToFunc-0x7f7d0cc>
 24c:	2e0d0000 	cdpcs	0, 0, cr0, cr13, cr0, {0}
 250:	030c3f00 	movweq	r3, #52992	@ 0xcf00
 254:	3b0b3a0e 	blcc	2cea94 <vectors_ArrOfPtrToFunc-0x7d3156c>
 258:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
 25c:	000c3c0c 	andeq	r3, ip, ip, lsl #24
 260:	012e0e00 			@ <UNDEFINED> instruction: 0x012e0e00
 264:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 268:	0b3b0b3a 	bleq	ec2f58 <vectors_ArrOfPtrToFunc-0x713d0a8>
 26c:	13490b39 	movtne	r0, #39737	@ 0x9b39
 270:	13010c3c 	movwne	r0, #7228	@ 0x1c3c
 274:	2e0f0000 	cdpcs	0, 0, cr0, cr15, cr0, {0}
 278:	030c3f00 	movweq	r3, #52992	@ 0xcf00
 27c:	3b0b3a0e 	blcc	2ceabc <vectors_ArrOfPtrToFunc-0x7d31544>
 280:	110b390b 	tstne	fp, fp, lsl #18
 284:	40011201 	andmi	r1, r1, r1, lsl #4
 288:	0c429606 	mcrreq	6, 0, r9, r2, cr6
 28c:	01000000 	mrseq	r0, (UNDEF: 0)
 290:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 294:	0e030b13 	vmoveq.32	d3[0], r0
 298:	01110e1b 	tsteq	r1, fp, lsl lr
 29c:	06100112 			@ <UNDEFINED> instruction: 0x06100112
 2a0:	24020000 	strcs	r0, [r2], #-0
 2a4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 2a8:	000e030b 	andeq	r0, lr, fp, lsl #6
 2ac:	00240300 	eoreq	r0, r4, r0, lsl #6
 2b0:	0b3e0b0b 	bleq	f82ee4 <vectors_ArrOfPtrToFunc-0x707d11c>
 2b4:	00000803 	andeq	r0, r0, r3, lsl #16
 2b8:	01011504 	tsteq	r1, r4, lsl #10
 2bc:	05000013 	streq	r0, [r0, #-19]	@ 0xffffffed
 2c0:	00000018 	andeq	r0, r0, r8, lsl r0
 2c4:	03003406 	movweq	r3, #1030	@ 0x406
 2c8:	3b0b3a0e 	blcc	2ceb08 <vectors_ArrOfPtrToFunc-0x7d314f8>
 2cc:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 2d0:	3c0c3f13 	stccc	15, cr3, [ip], {19}
 2d4:	0700000c 	streq	r0, [r0, -ip]
 2d8:	0b0b000f 	bleq	2c031c <vectors_ArrOfPtrToFunc-0x7d3fce4>
 2dc:	00001349 	andeq	r1, r0, r9, asr #6
 2e0:	3f012e08 	svccc	0x00012e08
 2e4:	3a0e030c 	bcc	380f1c <vectors_ArrOfPtrToFunc-0x7c7f0e4>
 2e8:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 2ec:	010c3c0b 	tsteq	ip, fp, lsl #24
 2f0:	09000013 	stmdbeq	r0, {r0, r1, r4}
 2f4:	0c3f002e 	ldceq	0, cr0, [pc], #-184	@ 244 <vectors_ArrOfPtrToFunc-0x7fffdbc>
 2f8:	0b3a0e03 	bleq	e83b0c <vectors_ArrOfPtrToFunc-0x717c4f4>
 2fc:	0b390b3b 	bleq	e42ff0 <vectors_ArrOfPtrToFunc-0x71bd010>
 300:	01111349 	tsteq	r1, r9, asr #6
 304:	06400112 			@ <UNDEFINED> instruction: 0x06400112
 308:	000c4296 	muleq	ip, r6, r2
 30c:	002e0a00 	eoreq	r0, lr, r0, lsl #20
 310:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 314:	0b3b0b3a 	bleq	ec3004 <vectors_ArrOfPtrToFunc-0x713cffc>
 318:	01110b39 	tsteq	r1, r9, lsr fp
 31c:	06400112 			@ <UNDEFINED> instruction: 0x06400112
 320:	000c4296 	muleq	ip, r6, r2
 324:	11010000 	mrsne	r0, (UNDEF: 1)
 328:	130e2501 	movwne	r2, #58625	@ 0xe501
 32c:	1b0e030b 	blne	380f60 <vectors_ArrOfPtrToFunc-0x7c7f0a0>
 330:	1201110e 	andne	r1, r1, #-2147483645	@ 0x80000003
 334:	00061001 	andeq	r1, r6, r1
 338:	00240200 	eoreq	r0, r4, r0, lsl #4
 33c:	0b3e0b0b 	bleq	f82f70 <vectors_ArrOfPtrToFunc-0x707d090>
 340:	00000e03 	andeq	r0, r0, r3, lsl #28
 344:	03001603 	movweq	r1, #1539	@ 0x603
 348:	3b0b3a0e 	blcc	2ceb88 <vectors_ArrOfPtrToFunc-0x7d31478>
 34c:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 350:	04000013 	streq	r0, [r0], #-19	@ 0xffffffed
 354:	0b0b0024 	bleq	2c03ec <vectors_ArrOfPtrToFunc-0x7d3fc14>
 358:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 35c:	01050000 	mrseq	r0, (UNDEF: 5)
 360:	01134901 	tsteq	r3, r1, lsl #18
 364:	06000013 			@ <UNDEFINED> instruction: 0x06000013
 368:	13490021 	movtne	r0, #36897	@ 0x9021
 36c:	00000b2f 	andeq	r0, r0, pc, lsr #22
 370:	03003407 	movweq	r3, #1031	@ 0x407
 374:	3b0b3a0e 	blcc	2cebb4 <vectors_ArrOfPtrToFunc-0x7d3144c>
 378:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 37c:	000a0213 	andeq	r0, sl, r3, lsl r2
 380:	00260800 	eoreq	r0, r6, r0, lsl #16
 384:	00001349 	andeq	r1, r0, r9, asr #6
 388:	0b000f09 	bleq	3fb4 <vectors_ArrOfPtrToFunc-0x7ffc04c>
 38c:	0013490b 	andseq	r4, r3, fp, lsl #18
 390:	00150a00 	andseq	r0, r5, r0, lsl #20
 394:	00000c27 	andeq	r0, r0, r7, lsr #24
 398:	0300340b 	movweq	r3, #1035	@ 0x40b
 39c:	3b0b3a0e 	blcc	2cebdc <vectors_ArrOfPtrToFunc-0x7d31424>
 3a0:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 3a4:	020c3f13 	andeq	r3, ip, #19, 30	@ 0x4c
 3a8:	0c00000a 	stceq	0, cr0, [r0], {10}
 3ac:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 3b0:	0b3b0b3a 	bleq	ec30a0 <vectors_ArrOfPtrToFunc-0x713cf60>
 3b4:	13490b39 	movtne	r0, #39737	@ 0x9b39
 3b8:	0c3c0c3f 	ldceq	12, cr0, [ip], #-252	@ 0xffffff04
 3bc:	2e0d0000 	cdpcs	0, 0, cr0, cr13, cr0, {0}
 3c0:	030c3f00 	movweq	r3, #52992	@ 0xcf00
 3c4:	3b0b3a0e 	blcc	2cec04 <vectors_ArrOfPtrToFunc-0x7d313fc>
 3c8:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
 3cc:	3c13490c 			@ <UNDEFINED> instruction: 0x3c13490c
 3d0:	0e00000c 	cdpeq	0, 0, cr0, cr0, cr12, {0}
 3d4:	0c3f002e 	ldceq	0, cr0, [pc], #-184	@ 324 <vectors_ArrOfPtrToFunc-0x7fffcdc>
 3d8:	0b3a0e03 	bleq	e83bec <vectors_ArrOfPtrToFunc-0x717c414>
 3dc:	0b390b3b 	bleq	e430d0 <vectors_ArrOfPtrToFunc-0x71bcf30>
 3e0:	01110c27 	tsteq	r1, r7, lsr #24
 3e4:	06400112 			@ <UNDEFINED> instruction: 0x06400112
 3e8:	000c4296 	muleq	ip, r6, r2
 3ec:	012e0f00 			@ <UNDEFINED> instruction: 0x012e0f00
 3f0:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 3f4:	0b3b0b3a 	bleq	ec30e4 <vectors_ArrOfPtrToFunc-0x713cf1c>
 3f8:	0c270b39 			@ <UNDEFINED> instruction: 0x0c270b39
 3fc:	01120111 	tsteq	r2, r1, lsl r1
 400:	42960640 	addsmi	r0, r6, #64, 12	@ 0x4000000
 404:	0013010c 	andseq	r0, r3, ip, lsl #2
 408:	00341000 	eorseq	r1, r4, r0
 40c:	0b3a0803 	bleq	e82420 <vectors_ArrOfPtrToFunc-0x717dbe0>
 410:	0b390b3b 	bleq	e43104 <vectors_ArrOfPtrToFunc-0x71bcefc>
 414:	0a021349 	beq	85140 <vectors_ArrOfPtrToFunc-0x7f7aec0>
 418:	Address 0x418 is out of bounds.


Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000034 	andeq	r0, r0, r4, lsr r0
   4:	00000036 	andeq	r0, r0, r6, lsr r0
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000036 	andeq	r0, r0, r6, lsr r0
  10:	00000038 	andeq	r0, r0, r8, lsr r0
  14:	087d0002 	ldmdaeq	sp!, {r1}^
  18:	00000038 	andeq	r0, r0, r8, lsr r0
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	08770002 	ldmdaeq	r7!, {r1}^
	...
  2c:	0000001c 	andeq	r0, r0, ip, lsl r0
  30:	0000001e 	andeq	r0, r0, lr, lsl r0
  34:	007d0002 	rsbseq	r0, sp, r2
  38:	0000001e 	andeq	r0, r0, lr, lsl r0
  3c:	00000020 	andeq	r0, r0, r0, lsr #32
  40:	087d0002 	ldmdaeq	sp!, {r1}^
  44:	00000020 	andeq	r0, r0, r0, lsr #32
  48:	00000034 	andeq	r0, r0, r4, lsr r0
  4c:	08770002 	ldmdaeq	r7!, {r1}^
	...
  5c:	00000002 	andeq	r0, r0, r2
  60:	007d0002 	rsbseq	r0, sp, r2
  64:	00000002 	andeq	r0, r0, r2
  68:	00000004 	andeq	r0, r0, r4
  6c:	047d0002 	ldrbteq	r0, [sp], #-2
  70:	00000004 	andeq	r0, r0, r4
  74:	0000000e 	andeq	r0, r0, lr
  78:	04770002 	ldrbteq	r0, [r7], #-2
  7c:	0000000e 	andeq	r0, r0, lr
  80:	00000010 	andeq	r0, r0, r0, lsl r0
  84:	047d0002 	ldrbteq	r0, [sp], #-2
  88:	00000010 	andeq	r0, r0, r0, lsl r0
  8c:	0000001c 	andeq	r0, r0, ip, lsl r0
  90:	007d0002 	rsbseq	r0, sp, r2
	...
  9c:	00000074 	andeq	r0, r0, r4, ror r0
  a0:	00000076 	andeq	r0, r0, r6, ror r0
  a4:	007d0002 	rsbseq	r0, sp, r2
  a8:	00000076 	andeq	r0, r0, r6, ror r0
  ac:	00000078 	andeq	r0, r0, r8, ror r0
  b0:	047d0002 	ldrbteq	r0, [sp], #-2
  b4:	00000078 	andeq	r0, r0, r8, ror r0
  b8:	000000b4 	strheq	r0, [r0], -r4
  bc:	04770002 	ldrbteq	r0, [r7], #-2
  c0:	000000b4 	strheq	r0, [r0], -r4
  c4:	000000b6 	strheq	r0, [r0], -r6
  c8:	047d0002 	ldrbteq	r0, [sp], #-2
  cc:	000000b6 	strheq	r0, [r0], -r6
  d0:	000000c4 	andeq	r0, r0, r4, asr #1
  d4:	007d0002 	rsbseq	r0, sp, r2
	...
  e0:	00000038 	andeq	r0, r0, r8, lsr r0
  e4:	0000003a 	andeq	r0, r0, sl, lsr r0
  e8:	007d0002 	rsbseq	r0, sp, r2
  ec:	0000003a 	andeq	r0, r0, sl, lsr r0
  f0:	0000003c 	andeq	r0, r0, ip, lsr r0
  f4:	047d0002 	ldrbteq	r0, [sp], #-2
  f8:	0000003c 	andeq	r0, r0, ip, lsr r0
  fc:	0000003e 	andeq	r0, r0, lr, lsr r0
 100:	107d0002 	rsbsne	r0, sp, r2
 104:	0000003e 	andeq	r0, r0, lr, lsr r0
 108:	0000006a 	andeq	r0, r0, sl, rrx
 10c:	10770002 	rsbsne	r0, r7, r2
 110:	0000006a 	andeq	r0, r0, sl, rrx
 114:	0000006c 	andeq	r0, r0, ip, rrx
 118:	04770002 	ldrbteq	r0, [r7], #-2
 11c:	0000006c 	andeq	r0, r0, ip, rrx
 120:	0000006e 	andeq	r0, r0, lr, rrx
 124:	047d0002 	ldrbteq	r0, [sp], #-2
 128:	0000006e 	andeq	r0, r0, lr, rrx
 12c:	00000074 	andeq	r0, r0, r4, ror r0
 130:	007d0002 	rsbseq	r0, sp, r2
	...
 13c:	00000022 	andeq	r0, r0, r2, lsr #32
 140:	00000024 	andeq	r0, r0, r4, lsr #32
 144:	007d0002 	rsbseq	r0, sp, r2
 148:	00000024 	andeq	r0, r0, r4, lsr #32
 14c:	00000026 	andeq	r0, r0, r6, lsr #32
 150:	047d0002 	ldrbteq	r0, [sp], #-2
 154:	00000026 	andeq	r0, r0, r6, lsr #32
 158:	00000030 	andeq	r0, r0, r0, lsr r0
 15c:	04770002 	ldrbteq	r0, [r7], #-2
 160:	00000030 	andeq	r0, r0, r0, lsr r0
 164:	00000032 	andeq	r0, r0, r2, lsr r0
 168:	047d0002 	ldrbteq	r0, [sp], #-2
 16c:	00000032 	andeq	r0, r0, r2, lsr r0
 170:	00000038 	andeq	r0, r0, r8, lsr r0
 174:	007d0002 	rsbseq	r0, sp, r2
	...
 184:	00000002 	andeq	r0, r0, r2
 188:	007d0002 	rsbseq	r0, sp, r2
 18c:	00000002 	andeq	r0, r0, r2
 190:	00000004 	andeq	r0, r0, r4
 194:	047d0002 	ldrbteq	r0, [sp], #-2
 198:	00000004 	andeq	r0, r0, r4
 19c:	00000006 	andeq	r0, r0, r6
 1a0:	107d0002 	rsbsne	r0, sp, r2
 1a4:	00000006 	andeq	r0, r0, r6
 1a8:	0000001c 	andeq	r0, r0, ip, lsl r0
 1ac:	10770002 	rsbsne	r0, r7, r2
 1b0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1b4:	0000001e 	andeq	r0, r0, lr, lsl r0
 1b8:	04770002 	ldrbteq	r0, [r7], #-2
 1bc:	0000001e 	andeq	r0, r0, lr, lsl r0
 1c0:	00000020 	andeq	r0, r0, r0, lsr #32
 1c4:	047d0002 	ldrbteq	r0, [sp], #-2
 1c8:	00000020 	andeq	r0, r0, r0, lsr #32
 1cc:	00000022 	andeq	r0, r0, r2, lsr #32
 1d0:	007d0002 	rsbseq	r0, sp, r2
	...
 1dc:	0000004c 	andeq	r0, r0, ip, asr #32
 1e0:	0000004e 	andeq	r0, r0, lr, asr #32
 1e4:	007d0002 	rsbseq	r0, sp, r2
 1e8:	0000004e 	andeq	r0, r0, lr, asr #32
 1ec:	00000050 	andeq	r0, r0, r0, asr r0
 1f0:	087d0002 	ldmdaeq	sp!, {r1}^
 1f4:	00000050 	andeq	r0, r0, r0, asr r0
 1f8:	0000009c 	muleq	r0, ip, r0
 1fc:	08770002 	ldmdaeq	r7!, {r1}^
	...
 20c:	00000002 	andeq	r0, r0, r2
 210:	007d0002 	rsbseq	r0, sp, r2
 214:	00000002 	andeq	r0, r0, r2
 218:	00000004 	andeq	r0, r0, r4
 21c:	087d0002 	ldmdaeq	sp!, {r1}^
 220:	00000004 	andeq	r0, r0, r4
 224:	0000004c 	andeq	r0, r0, ip, asr #32
 228:	08770002 	ldmdaeq	r7!, {r1}^
	...
 234:	00000028 	andeq	r0, r0, r8, lsr #32
 238:	0000002a 	andeq	r0, r0, sl, lsr #32
 23c:	007d0002 	rsbseq	r0, sp, r2
 240:	0000002a 	andeq	r0, r0, sl, lsr #32
 244:	0000002c 	andeq	r0, r0, ip, lsr #32
 248:	087d0002 	ldmdaeq	sp!, {r1}^
 24c:	0000002c 	andeq	r0, r0, ip, lsr #32
 250:	00000048 	andeq	r0, r0, r8, asr #32
 254:	08770002 	ldmdaeq	r7!, {r1}^
	...
 264:	00000002 	andeq	r0, r0, r2
 268:	007d0002 	rsbseq	r0, sp, r2
 26c:	00000002 	andeq	r0, r0, r2
 270:	00000004 	andeq	r0, r0, r4
 274:	087d0002 	ldmdaeq	sp!, {r1}^
 278:	00000004 	andeq	r0, r0, r4
 27c:	00000028 	andeq	r0, r0, r8, lsr #32
 280:	08770002 	ldmdaeq	r7!, {r1}^
	...
 28c:	00000094 	muleq	r0, r4, r0
 290:	00000096 	muleq	r0, r6, r0
 294:	007d0002 	rsbseq	r0, sp, r2
 298:	00000096 	muleq	r0, r6, r0
 29c:	00000098 	muleq	r0, r8, r0
 2a0:	087d0002 	ldmdaeq	sp!, {r1}^
 2a4:	00000098 	muleq	r0, r8, r0
 2a8:	000000a0 	andeq	r0, r0, r0, lsr #1
 2ac:	08770002 	ldmdaeq	r7!, {r1}^
	...
 2bc:	00000002 	andeq	r0, r0, r2
 2c0:	007d0002 	rsbseq	r0, sp, r2
 2c4:	00000002 	andeq	r0, r0, r2
 2c8:	00000004 	andeq	r0, r0, r4
 2cc:	087d0002 	ldmdaeq	sp!, {r1}^
 2d0:	00000004 	andeq	r0, r0, r4
 2d4:	00000006 	andeq	r0, r0, r6
 2d8:	187d0002 	ldmdane	sp!, {r1}^
 2dc:	00000006 	andeq	r0, r0, r6
 2e0:	0000007a 	andeq	r0, r0, sl, ror r0
 2e4:	18770002 	ldmdane	r7!, {r1}^
 2e8:	0000007a 	andeq	r0, r0, sl, ror r0
 2ec:	0000007c 	andeq	r0, r0, ip, ror r0
 2f0:	08770002 	ldmdaeq	r7!, {r1}^
 2f4:	0000007c 	andeq	r0, r0, ip, ror r0
 2f8:	00000094 	muleq	r0, r4, r0
 2fc:	087d0002 	ldmdaeq	sp!, {r1}^
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	0800001c 	stmdaeq	r0, {r2, r3, r4}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01810002 	orreq	r0, r1, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	08000090 	stmdaeq	r0, {r4, r7}
  34:	000000c4 	andeq	r0, r0, r4, asr #1
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	02930002 	addseq	r0, r3, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	08000154 	stmdaeq	r0, {r2, r4, r6, r8}
  54:	0000009c 	muleq	r0, ip, r0
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	03ed0002 	mvneq	r0, #2
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	080001f0 	stmdaeq	r0, {r4, r5, r6, r7, r8}
  74:	00000048 	andeq	r0, r0, r8, asr #32
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	04f00002 	ldrbteq	r0, [r0], #2
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	08000238 	stmdaeq	r0, {r3, r4, r5, r9}
  94:	000000a0 	andeq	r0, r0, r0, lsr #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	0000025b 	andeq	r0, r0, fp, asr r2
   4:	021e0003 	andseq	r0, lr, #3
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
  b4:	6c2f2e2e 	stcvs	14, cr2, [pc], #-184	@ 4 <vectors_ArrOfPtrToFunc-0x7fffffc>
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
  fc:	3a430065 	bcc	10c0298 <vectors_ArrOfPtrToFunc-0x6f3fd68>
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
 12c:	6d6f635c 	stclvs	3, cr6, [pc, #-368]!	@ ffffffc4 <_END_bss+0xdffffba8>
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
 158:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	@ ffffff90 <_END_bss+0xdffffb74>
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
 1dc:	6c410000 	marvs	acc0, r0, r1
 1e0:	4d6d7261 	sfmmi	f7, 2, [sp, #-388]!	@ 0xfffffe7c
 1e4:	61686365 	cmnvs	r8, r5, ror #6
 1e8:	6d73696e 			@ <UNDEFINED> instruction: 0x6d73696e
 1ec:	0000632e 	andeq	r6, r0, lr, lsr #6
 1f0:	645f0000 	ldrbvs	r0, [pc], #-0	@ 1f8 <vectors_ArrOfPtrToFunc-0x7fffe08>
 1f4:	75616665 	strbvc	r6, [r1, #-1637]!	@ 0xfffff99b
 1f8:	745f746c 	ldrbvc	r7, [pc], #-1132	@ 200 <vectors_ArrOfPtrToFunc-0x7fffe00>
 1fc:	73657079 	cmnvc	r5, #121	@ 0x79
 200:	0100682e 	tsteq	r0, lr, lsr #16
 204:	735f0000 	cmpvc	pc, #0
 208:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 20c:	00682e74 	rsbeq	r2, r8, r4, ror lr
 210:	41000002 	tstmi	r0, r2
 214:	6d72616c 	ldfvse	f6, [r2, #-432]!	@ 0xfffffe50
 218:	6863654d 	stmdavs	r3!, {r0, r2, r3, r6, r8, sl, sp, lr}^
 21c:	73696e61 	cmnvc	r9, #1552	@ 0x610
 220:	00682e6d 	rsbeq	r2, r8, sp, ror #28
 224:	00000000 	andeq	r0, r0, r0
 228:	05000105 	streq	r0, [r0, #-261]	@ 0xfffffefb
 22c:	00001c02 	andeq	r1, r0, r2, lsl #24
 230:	011d0308 	tsteq	sp, r8, lsl #6
 234:	052f1405 	streq	r1, [pc, #-1029]!	@ fffffe37 <_END_bss+0xdffffa1b>
 238:	05943d01 	ldreq	r3, [r4, #3329]	@ 0xd01
 23c:	02052f17 	andeq	r2, r5, #23, 30	@ 0x5c
 240:	3d01053d 	cfstr32cc	mvfx0, [r1, #-244]	@ 0xffffff0c
 244:	2f17054d 	svccs	0x0017054d
 248:	053d0205 	ldreq	r0, [sp, #-517]!	@ 0xfffffdfb
 24c:	1f053d08 	svcne	0x00053d08
 250:	3c02053c 	cfstr32cc	mvfx0, [r2], {60}	@ 0x3c
 254:	053d1405 	ldreq	r1, [sp, #-1029]!	@ 0xfffffbfb
 258:	0c023d01 	stceq	13, cr3, [r2], {1}
 25c:	6c010100 	stfvss	f0, [r1], {-0}
 260:	03000002 	movweq	r0, #2
 264:	00020200 	andeq	r0, r2, r0, lsl #4
 268:	fb010200 	blx	40a72 <vectors_ArrOfPtrToFunc-0x7fbf58e>
 26c:	01000d0e 	tsteq	r0, lr, lsl #26
 270:	00010101 	andeq	r0, r1, r1, lsl #2
 274:	00010000 	andeq	r0, r1, r0
 278:	3a430100 	bcc	10c0680 <vectors_ArrOfPtrToFunc-0x6f3f980>
 27c:	5c54535c 	mrrcpl	3, 5, r5, r4, cr12
 280:	334d5453 	movtcc	r5, #54355	@ 0xd453
 284:	62754332 	rsbsvs	r4, r5, #-939524096	@ 0xc8000000
 288:	45444965 	strbmi	r4, [r4, #-2405]	@ 0xfffff69b
 28c:	312e315f 			@ <UNDEFINED> instruction: 0x312e315f
 290:	5c312e35 	ldcpl	14, cr2, [r1], #-212	@ 0xffffff2c
 294:	334d5453 	movtcc	r5, #54355	@ 0xd453
 298:	62754332 	rsbsvs	r4, r5, #-939524096	@ 0xc8000000
 29c:	45444965 	strbmi	r4, [r4, #-2405]	@ 0xfffff69b
 2a0:	756c705c 	strbvc	r7, [ip, #-92]!	@ 0xffffffa4
 2a4:	736e6967 	cmnvc	lr, #1687552	@ 0x19c000
 2a8:	6d6f635c 	stclvs	3, cr6, [pc, #-368]!	@ 140 <vectors_ArrOfPtrToFunc-0x7fffec0>
 2ac:	2e74732e 	cdpcs	3, 7, cr7, cr4, cr14, {1}
 2b0:	336d7473 	cmncc	sp, #1929379840	@ 0x73000000
 2b4:	62756332 	rsbsvs	r6, r5, #-939524096	@ 0xc8000000
 2b8:	64692e65 	strbtvs	r2, [r9], #-3685	@ 0xfffff19b
 2bc:	636d2e65 	cmnvs	sp, #1616	@ 0x650
 2c0:	78652e75 	stmdavc	r5!, {r0, r2, r4, r5, r6, r9, sl, fp, sp}^
 2c4:	6e726574 	mrcvs	5, 3, r6, cr2, cr4, {3}
 2c8:	6f746c61 	svcvs	0x00746c61
 2cc:	2e736c6f 	cdpcs	12, 7, cr6, cr3, cr15, {3}
 2d0:	2d756e67 	ldclcs	14, cr6, [r5, #-412]!	@ 0xfffffe64
 2d4:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	@ 10c <vectors_ArrOfPtrToFunc-0x7fffef4>
 2d8:	6f662d73 	svcvs	0x00662d73
 2dc:	74732d72 	ldrbtvc	r2, [r3], #-3442	@ 0xfffff28e
 2e0:	2e32336d 	cdpcs	3, 3, cr3, cr2, cr13, {3}
 2e4:	332e3231 			@ <UNDEFINED> instruction: 0x332e3231
 2e8:	6c65722e 	sfmvs	f7, 2, [r5], #-184	@ 0xffffff48
 2ec:	69772e31 	ldmdbvs	r7!, {r0, r4, r5, r9, sl, fp, sp}^
 2f0:	5f32336e 	svcpl	0x0032336e
 2f4:	2e302e31 	mrccs	14, 1, r2, cr0, cr1, {1}
 2f8:	2e303031 	mrccs	0, 1, r3, cr0, cr1, {1}
 2fc:	34323032 	ldrtcc	r3, [r2], #-50	@ 0xffffffce
 300:	31313330 	teqcc	r1, r0, lsr r3
 304:	36353231 			@ <UNDEFINED> instruction: 0x36353231
 308:	6f6f745c 	svcvs	0x006f745c
 30c:	625c736c 	subsvs	r7, ip, #108, 6	@ 0xb0000001
 310:	2e2f6e69 	cdpcs	14, 2, cr6, cr15, cr9, {3}
 314:	696c2f2e 	stmdbvs	ip!, {r1, r2, r3, r5, r8, r9, sl, fp, sp}^
 318:	63672f62 	cmnvs	r7, #392	@ 0x188
 31c:	72612f63 	rsbvc	r2, r1, #396	@ 0x18c
 320:	6f6e2d6d 	svcvs	0x006e2d6d
 324:	652d656e 	strvs	r6, [sp, #-1390]!	@ 0xfffffa92
 328:	2f696261 	svccs	0x00696261
 32c:	332e3231 			@ <UNDEFINED> instruction: 0x332e3231
 330:	2e2f312e 	sufcsep	f3, f7, #0.5
 334:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 338:	2f2e2e2f 	svccs	0x002e2e2f
 33c:	612f2e2e 			@ <UNDEFINED> instruction: 0x612f2e2e
 340:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 344:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	@ 0xfffffe44
 348:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 34c:	636e692f 	cmnvs	lr, #770048	@ 0xbc000
 350:	6564756c 	strbvs	r7, [r4, #-1388]!	@ 0xfffffa94
 354:	63616d2f 	cmnvs	r1, #3008	@ 0xbc0
 358:	656e6968 	strbvs	r6, [lr, #-2408]!	@ 0xfffff698
 35c:	5c3a4300 	ldcpl	3, cr4, [sl], #-0
 360:	535c5453 	cmppl	ip, #1392508928	@ 0x53000000
 364:	32334d54 	eorscc	r4, r3, #84, 26	@ 0x1500
 368:	65627543 	strbvs	r7, [r2, #-1347]!	@ 0xfffffabd
 36c:	5f454449 	svcpl	0x00454449
 370:	35312e31 	ldrcc	r2, [r1, #-3633]!	@ 0xfffff1cf
 374:	535c312e 	cmppl	ip, #-2147483637	@ 0x8000000b
 378:	32334d54 	eorscc	r4, r3, #84, 26	@ 0x1500
 37c:	65627543 	strbvs	r7, [r2, #-1347]!	@ 0xfffffabd
 380:	5c454449 	cfstrdpl	mvd4, [r5], {73}	@ 0x49
 384:	67756c70 			@ <UNDEFINED> instruction: 0x67756c70
 388:	5c736e69 	ldclpl	14, cr6, [r3], #-420	@ 0xfffffe5c
 38c:	2e6d6f63 	cdpcs	15, 6, cr6, cr13, cr3, {3}
 390:	732e7473 			@ <UNDEFINED> instruction: 0x732e7473
 394:	32336d74 	eorscc	r6, r3, #116, 26	@ 0x1d00
 398:	65627563 	strbvs	r7, [r2, #-1379]!	@ 0xfffffa9d
 39c:	6564692e 	strbvs	r6, [r4, #-2350]!	@ 0xfffff6d2
 3a0:	75636d2e 	strbvc	r6, [r3, #-3374]!	@ 0xfffff2d2
 3a4:	7478652e 	ldrbtvc	r6, [r8], #-1326	@ 0xfffffad2
 3a8:	616e7265 	cmnvs	lr, r5, ror #4
 3ac:	6f6f746c 	svcvs	0x006f746c
 3b0:	672e736c 	strvs	r7, [lr, -ip, ror #6]!
 3b4:	742d756e 	strtvc	r7, [sp], #-1390	@ 0xfffffa92
 3b8:	736c6f6f 	cmnvc	ip, #444	@ 0x1bc
 3bc:	726f662d 	rsbvc	r6, pc, #47185920	@ 0x2d00000
 3c0:	6d74732d 	ldclvs	3, cr7, [r4, #-180]!	@ 0xffffff4c
 3c4:	312e3233 			@ <UNDEFINED> instruction: 0x312e3233
 3c8:	2e332e32 	mrccs	14, 1, r2, cr3, cr2, {1}
 3cc:	316c6572 	smccc	50770	@ 0xc652
 3d0:	6e69772e 	cdpvs	7, 6, cr7, cr9, cr14, {1}
 3d4:	315f3233 	cmpcc	pc, r3, lsr r2	@ <UNPREDICTABLE>
 3d8:	312e302e 			@ <UNDEFINED> instruction: 0x312e302e
 3dc:	322e3030 	eorcc	r3, lr, #48	@ 0x30
 3e0:	30343230 	eorscc	r3, r4, r0, lsr r2
 3e4:	31313133 	teqcc	r1, r3, lsr r1
 3e8:	5c363532 	cfldr32pl	mvfx3, [r6], #-200	@ 0xffffff38
 3ec:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	@ 224 <vectors_ArrOfPtrToFunc-0x7fffddc>
 3f0:	69625c73 	stmdbvs	r2!, {r0, r1, r4, r5, r6, sl, fp, ip, lr}^
 3f4:	2e2e2f6e 	cdpcs	15, 2, cr2, cr14, cr14, {3}
 3f8:	62696c2f 	rsbvs	r6, r9, #12032	@ 0x2f00
 3fc:	6363672f 	cmnvs	r3, #12320768	@ 0xbc0000
 400:	6d72612f 	ldfvse	f6, [r2, #-188]!	@ 0xffffff44
 404:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 408:	61652d65 	cmnvs	r5, r5, ror #26
 40c:	312f6962 			@ <UNDEFINED> instruction: 0x312f6962
 410:	2e332e32 	mrccs	14, 1, r2, cr3, cr2, {1}
 414:	2e2e2f31 	mcrcs	15, 1, r2, cr14, cr1, {1}
 418:	2f2e2e2f 	svccs	0x002e2e2f
 41c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 420:	72612f2e 	rsbvc	r2, r1, #46, 30	@ 0xb8
 424:	6f6e2d6d 	svcvs	0x006e2d6d
 428:	652d656e 	strvs	r6, [sp, #-1390]!	@ 0xfffffa92
 42c:	2f696261 	svccs	0x00696261
 430:	6c636e69 	stclvs	14, cr6, [r3], #-420	@ 0xfffffe5c
 434:	2f656475 	svccs	0x00656475
 438:	00737973 	rsbseq	r7, r3, r3, ror r9
 43c:	69726400 	ldmdbvs	r2!, {sl, sp, lr}^
 440:	2e726576 	mrccs	5, 3, r6, cr2, cr6, {3}
 444:	00000063 	andeq	r0, r0, r3, rrx
 448:	65645f00 	strbvs	r5, [r4, #-3840]!	@ 0xfffff100
 44c:	6c756166 	ldfvse	f6, [r5], #-408	@ 0xfffffe68
 450:	79745f74 	ldmdbvc	r4!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 454:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
 458:	00010068 	andeq	r0, r1, r8, rrx
 45c:	74735f00 	ldrbtvc	r5, [r3], #-3840	@ 0xfffff100
 460:	746e6964 	strbtvc	r6, [lr], #-2404	@ 0xfffff69c
 464:	0200682e 	andeq	r6, r0, #3014656	@ 0x2e0000
 468:	05000000 	streq	r0, [r0, #-0]
 46c:	02050001 	andeq	r0, r5, #1
 470:	08000090 	stmdaeq	r0, {r4, r7}
 474:	4b020516 	blmi	818d4 <vectors_ArrOfPtrToFunc-0x7f7e72c>
 478:	02001b05 	andeq	r1, r0, #5120	@ 0x1400
 47c:	05200204 	streq	r0, [r0, #-516]!	@ 0xfffffdfc
 480:	0402000f 	streq	r0, [r2], #-15
 484:	01053c01 	tsteq	r5, r1, lsl #24
 488:	6815053d 	ldmdavs	r5, {r0, r2, r3, r4, r5, r8, sl}
 48c:	052f0a05 	streq	r0, [pc, #-2565]!	@ fffffa8f <_END_bss+0xdffff673>
 490:	01052e14 	tsteq	r5, r4, lsl lr
 494:	681f0521 	ldmdavs	pc, {r0, r5, r8, sl}	@ <UNPREDICTABLE>
 498:	054b0505 	strbeq	r0, [fp, #-1285]	@ 0xfffffafb
 49c:	01053d03 	tsteq	r5, r3, lsl #26
 4a0:	1d0a056b 	cfstr32ne	mvfx0, [sl, #-428]	@ 0xfffffe54
 4a4:	053d0305 	ldreq	r0, [sp, #-773]!	@ 0xfffffcfb
 4a8:	1c056801 	stcne	8, cr6, [r5], {1}
 4ac:	2f020576 	svccs	0x00020576
 4b0:	3c0c0567 	cfstr32cc	mvfx0, [ip], {103}	@ 0x67
 4b4:	2002053d 	andcs	r0, r2, sp, lsr r5
 4b8:	05200c05 	streq	r0, [r0, #-3077]!	@ 0xfffff3fb
 4bc:	0c052f02 	stceq	15, cr2, [r5], {2}
 4c0:	3d02053c 	cfstr32cc	mvfx0, [r2, #-240]	@ 0xffffff10
 4c4:	053c0c05 	ldreq	r0, [ip, #-3077]!	@ 0xfffff3fb
 4c8:	0a023d01 	beq	8f8d4 <vectors_ArrOfPtrToFunc-0x7f7072c>
 4cc:	ad010100 	stfges	f0, [r1, #-0]
 4d0:	03000002 	movweq	r0, #2
 4d4:	00023e00 	andeq	r3, r2, r0, lsl #28
 4d8:	fb010200 	blx	40ce2 <vectors_ArrOfPtrToFunc-0x7fbf31e>
 4dc:	01000d0e 	tsteq	r0, lr, lsl #26
 4e0:	00010101 	andeq	r0, r1, r1, lsl #2
 4e4:	00010000 	andeq	r0, r1, r0
 4e8:	3a430100 	bcc	10c08f0 <vectors_ArrOfPtrToFunc-0x6f3f710>
 4ec:	5c54535c 	mrrcpl	3, 5, r5, r4, cr12
 4f0:	334d5453 	movtcc	r5, #54355	@ 0xd453
 4f4:	62754332 	rsbsvs	r4, r5, #-939524096	@ 0xc8000000
 4f8:	45444965 	strbmi	r4, [r4, #-2405]	@ 0xfffff69b
 4fc:	312e315f 			@ <UNDEFINED> instruction: 0x312e315f
 500:	5c312e35 	ldcpl	14, cr2, [r1], #-212	@ 0xffffff2c
 504:	334d5453 	movtcc	r5, #54355	@ 0xd453
 508:	62754332 	rsbsvs	r4, r5, #-939524096	@ 0xc8000000
 50c:	45444965 	strbmi	r4, [r4, #-2405]	@ 0xfffff69b
 510:	756c705c 	strbvc	r7, [ip, #-92]!	@ 0xffffffa4
 514:	736e6967 	cmnvc	lr, #1687552	@ 0x19c000
 518:	6d6f635c 	stclvs	3, cr6, [pc, #-368]!	@ 3b0 <vectors_ArrOfPtrToFunc-0x7fffc50>
 51c:	2e74732e 	cdpcs	3, 7, cr7, cr4, cr14, {1}
 520:	336d7473 	cmncc	sp, #1929379840	@ 0x73000000
 524:	62756332 	rsbsvs	r6, r5, #-939524096	@ 0xc8000000
 528:	64692e65 	strbtvs	r2, [r9], #-3685	@ 0xfffff19b
 52c:	636d2e65 	cmnvs	sp, #1616	@ 0x650
 530:	78652e75 	stmdavc	r5!, {r0, r2, r4, r5, r6, r9, sl, fp, sp}^
 534:	6e726574 	mrcvs	5, 3, r6, cr2, cr4, {3}
 538:	6f746c61 	svcvs	0x00746c61
 53c:	2e736c6f 	cdpcs	12, 7, cr6, cr3, cr15, {3}
 540:	2d756e67 	ldclcs	14, cr6, [r5, #-412]!	@ 0xfffffe64
 544:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	@ 37c <vectors_ArrOfPtrToFunc-0x7fffc84>
 548:	6f662d73 	svcvs	0x00662d73
 54c:	74732d72 	ldrbtvc	r2, [r3], #-3442	@ 0xfffff28e
 550:	2e32336d 	cdpcs	3, 3, cr3, cr2, cr13, {3}
 554:	332e3231 			@ <UNDEFINED> instruction: 0x332e3231
 558:	6c65722e 	sfmvs	f7, 2, [r5], #-184	@ 0xffffff48
 55c:	69772e31 	ldmdbvs	r7!, {r0, r4, r5, r9, sl, fp, sp}^
 560:	5f32336e 	svcpl	0x0032336e
 564:	2e302e31 	mrccs	14, 1, r2, cr0, cr1, {1}
 568:	2e303031 	mrccs	0, 1, r3, cr0, cr1, {1}
 56c:	34323032 	ldrtcc	r3, [r2], #-50	@ 0xffffffce
 570:	31313330 	teqcc	r1, r0, lsr r3
 574:	36353231 			@ <UNDEFINED> instruction: 0x36353231
 578:	6f6f745c 	svcvs	0x006f745c
 57c:	625c736c 	subsvs	r7, ip, #108, 6	@ 0xb0000001
 580:	2e2f6e69 	cdpcs	14, 2, cr6, cr15, cr9, {3}
 584:	696c2f2e 	stmdbvs	ip!, {r1, r2, r3, r5, r8, r9, sl, fp, sp}^
 588:	63672f62 	cmnvs	r7, #392	@ 0x188
 58c:	72612f63 	rsbvc	r2, r1, #396	@ 0x18c
 590:	6f6e2d6d 	svcvs	0x006e2d6d
 594:	652d656e 	strvs	r6, [sp, #-1390]!	@ 0xfffffa92
 598:	2f696261 	svccs	0x00696261
 59c:	332e3231 			@ <UNDEFINED> instruction: 0x332e3231
 5a0:	2e2f312e 	sufcsep	f3, f7, #0.5
 5a4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 5a8:	2f2e2e2f 	svccs	0x002e2e2f
 5ac:	612f2e2e 			@ <UNDEFINED> instruction: 0x612f2e2e
 5b0:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 5b4:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	@ 0xfffffe44
 5b8:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 5bc:	636e692f 	cmnvs	lr, #770048	@ 0xbc000
 5c0:	6564756c 	strbvs	r7, [r4, #-1388]!	@ 0xfffffa94
 5c4:	63616d2f 	cmnvs	r1, #3008	@ 0xbc0
 5c8:	656e6968 	strbvs	r6, [lr, #-2408]!	@ 0xfffff698
 5cc:	5c3a4300 	ldcpl	3, cr4, [sl], #-0
 5d0:	535c5453 	cmppl	ip, #1392508928	@ 0x53000000
 5d4:	32334d54 	eorscc	r4, r3, #84, 26	@ 0x1500
 5d8:	65627543 	strbvs	r7, [r2, #-1347]!	@ 0xfffffabd
 5dc:	5f454449 	svcpl	0x00454449
 5e0:	35312e31 	ldrcc	r2, [r1, #-3633]!	@ 0xfffff1cf
 5e4:	535c312e 	cmppl	ip, #-2147483637	@ 0x8000000b
 5e8:	32334d54 	eorscc	r4, r3, #84, 26	@ 0x1500
 5ec:	65627543 	strbvs	r7, [r2, #-1347]!	@ 0xfffffabd
 5f0:	5c454449 	cfstrdpl	mvd4, [r5], {73}	@ 0x49
 5f4:	67756c70 			@ <UNDEFINED> instruction: 0x67756c70
 5f8:	5c736e69 	ldclpl	14, cr6, [r3], #-420	@ 0xfffffe5c
 5fc:	2e6d6f63 	cdpcs	15, 6, cr6, cr13, cr3, {3}
 600:	732e7473 			@ <UNDEFINED> instruction: 0x732e7473
 604:	32336d74 	eorscc	r6, r3, #116, 26	@ 0x1d00
 608:	65627563 	strbvs	r7, [r2, #-1379]!	@ 0xfffffa9d
 60c:	6564692e 	strbvs	r6, [r4, #-2350]!	@ 0xfffff6d2
 610:	75636d2e 	strbvc	r6, [r3, #-3374]!	@ 0xfffff2d2
 614:	7478652e 	ldrbtvc	r6, [r8], #-1326	@ 0xfffffad2
 618:	616e7265 	cmnvs	lr, r5, ror #4
 61c:	6f6f746c 	svcvs	0x006f746c
 620:	672e736c 	strvs	r7, [lr, -ip, ror #6]!
 624:	742d756e 	strtvc	r7, [sp], #-1390	@ 0xfffffa92
 628:	736c6f6f 	cmnvc	ip, #444	@ 0x1bc
 62c:	726f662d 	rsbvc	r6, pc, #47185920	@ 0x2d00000
 630:	6d74732d 	ldclvs	3, cr7, [r4, #-180]!	@ 0xffffff4c
 634:	312e3233 			@ <UNDEFINED> instruction: 0x312e3233
 638:	2e332e32 	mrccs	14, 1, r2, cr3, cr2, {1}
 63c:	316c6572 	smccc	50770	@ 0xc652
 640:	6e69772e 	cdpvs	7, 6, cr7, cr9, cr14, {1}
 644:	315f3233 	cmpcc	pc, r3, lsr r2	@ <UNPREDICTABLE>
 648:	312e302e 			@ <UNDEFINED> instruction: 0x312e302e
 64c:	322e3030 	eorcc	r3, lr, #48	@ 0x30
 650:	30343230 	eorscc	r3, r4, r0, lsr r2
 654:	31313133 	teqcc	r1, r3, lsr r1
 658:	5c363532 	cfldr32pl	mvfx3, [r6], #-200	@ 0xffffff38
 65c:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	@ 494 <vectors_ArrOfPtrToFunc-0x7fffb6c>
 660:	69625c73 	stmdbvs	r2!, {r0, r1, r4, r5, r6, sl, fp, ip, lr}^
 664:	2e2e2f6e 	cdpcs	15, 2, cr2, cr14, cr14, {3}
 668:	62696c2f 	rsbvs	r6, r9, #12032	@ 0x2f00
 66c:	6363672f 	cmnvs	r3, #12320768	@ 0xbc0000
 670:	6d72612f 	ldfvse	f6, [r2, #-188]!	@ 0xffffff44
 674:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 678:	61652d65 	cmnvs	r5, r5, ror #26
 67c:	312f6962 			@ <UNDEFINED> instruction: 0x312f6962
 680:	2e332e32 	mrccs	14, 1, r2, cr3, cr2, {1}
 684:	2e2e2f31 	mcrcs	15, 1, r2, cr14, cr1, {1}
 688:	2f2e2e2f 	svccs	0x002e2e2f
 68c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 690:	72612f2e 	rsbvc	r2, r1, #46, 30	@ 0xb8
 694:	6f6e2d6d 	svcvs	0x006e2d6d
 698:	652d656e 	strvs	r6, [sp, #-1390]!	@ 0xfffffa92
 69c:	2f696261 	svccs	0x00696261
 6a0:	6c636e69 	stclvs	14, cr6, [r3], #-420	@ 0xfffffe5c
 6a4:	2f656475 	svccs	0x00656475
 6a8:	00737973 	rsbseq	r7, r3, r3, ror r9
 6ac:	67694800 	strbvs	r4, [r9, -r0, lsl #16]!
 6b0:	65725068 	ldrbvs	r5, [r2, #-104]!	@ 0xffffff98
 6b4:	72757373 	rsbsvc	r7, r5, #-872415231	@ 0xcc000001
 6b8:	74654465 	strbtvc	r4, [r5], #-1125	@ 0xfffffb9b
 6bc:	69746365 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, r9, sp, lr}^
 6c0:	632e6e6f 			@ <UNDEFINED> instruction: 0x632e6e6f
 6c4:	00000000 	andeq	r0, r0, r0
 6c8:	6665645f 			@ <UNDEFINED> instruction: 0x6665645f
 6cc:	746c7561 	strbtvc	r7, [ip], #-1377	@ 0xfffffa9f
 6d0:	7079745f 	rsbsvc	r7, r9, pc, asr r4
 6d4:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
 6d8:	00000100 	andeq	r0, r0, r0, lsl #2
 6dc:	6474735f 	ldrbtvs	r7, [r4], #-863	@ 0xfffffca1
 6e0:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 6e4:	00020068 	andeq	r0, r2, r8, rrx
 6e8:	67694800 	strbvs	r4, [r9, -r0, lsl #16]!
 6ec:	65725068 	ldrbvs	r5, [r2, #-104]!	@ 0xffffff98
 6f0:	72757373 	rsbsvc	r7, r5, #-872415231	@ 0xcc000001
 6f4:	74654465 	strbtvc	r4, [r5], #-1125	@ 0xfffffb9b
 6f8:	69746365 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, r9, sp, lr}^
 6fc:	682e6e6f 	stmdavs	lr!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}
 700:	00000000 	andeq	r0, r0, r0
 704:	74617453 	strbtvc	r7, [r1], #-1107	@ 0xfffffbad
 708:	63614d65 	cmnvs	r1, #6464	@ 0x1940
 70c:	656e6968 	strbvs	r6, [lr, #-2408]!	@ 0xfffff698
 710:	0000682e 	andeq	r6, r0, lr, lsr #16
 714:	05000000 	streq	r0, [r0, #-0]
 718:	02050001 	andeq	r0, r5, #1
 71c:	08000154 	stmdaeq	r0, {r2, r4, r6, r8}
 720:	05011d03 	streq	r1, [r1, #-3331]	@ 0xfffff2fd
 724:	20052f1e 	andcs	r2, r5, lr, lsl pc
 728:	3c15053d 	cfldr32cc	mvfx0, [r5], {61}	@ 0x3d
 72c:	05201305 	streq	r1, [r0, #-773]!	@ 0xfffffcfb
 730:	61052f14 	tstvs	r5, r4, lsl pc
 734:	0046054a 	subeq	r0, r6, sl, asr #10
 738:	2e010402 	cdpcs	4, 0, cr0, cr1, cr2, {0}
 73c:	02000105 	andeq	r0, r0, #1073741825	@ 0x40000001
 740:	053e0104 	ldreq	r0, [lr, #-260]!	@ 0xfffffefc
 744:	0402007d 	streq	r0, [r2], #-125	@ 0xffffff83
 748:	01051e02 	tsteq	r5, r2, lsl #28
 74c:	1e05d93e 			@ <UNDEFINED> instruction: 0x1e05d93e
 750:	3d02052f 	cfstr32cc	mvfx0, [r2, #-188]	@ 0xffffff44
 754:	052f2005 	streq	r2, [pc, #-5]!	@ 757 <vectors_ArrOfPtrToFunc-0x7fff8a9>
 758:	13053c15 	movwne	r3, #23573	@ 0x5c15
 75c:	2f140520 	svccs	0x00140520
 760:	054a6105 	strbeq	r6, [sl, #-261]	@ 0xfffffefb
 764:	04020046 	streq	r0, [r2], #-70	@ 0xffffffba
 768:	01052e01 	tsteq	r5, r1, lsl #28
 76c:	01040200 	mrseq	r0, R12_usr
 770:	007d053e 	rsbseq	r0, sp, lr, lsr r5
 774:	1e020402 	cdpne	4, 0, cr0, cr2, cr2, {0}
 778:	023e0105 	eorseq	r0, lr, #1073741825	@ 0x40000001
 77c:	0101000e 	tsteq	r1, lr
 780:	00000090 	muleq	r0, r0, r0
 784:	00580003 	subseq	r0, r8, r3
 788:	01020000 	mrseq	r0, (UNDEF: 2)
 78c:	000d0efb 	strdeq	r0, [sp], -fp
 790:	01010101 	tsteq	r1, r1, lsl #2
 794:	01000000 	mrseq	r0, (UNDEF: 0)
 798:	00010000 	andeq	r0, r1, r0
 79c:	6e69616d 	powvsez	f6, f1, #5.0
 7a0:	0000632e 	andeq	r6, r0, lr, lsr #6
 7a4:	69480000 	stmdbvs	r8, {}^	@ <UNPREDICTABLE>
 7a8:	72506867 	subsvc	r6, r0, #6750208	@ 0x670000
 7ac:	75737365 	ldrbvc	r7, [r3, #-869]!	@ 0xfffffc9b
 7b0:	65446572 	strbvs	r6, [r4, #-1394]	@ 0xfffffa8e
 7b4:	74636574 	strbtvc	r6, [r3], #-1396	@ 0xfffffa8c
 7b8:	2e6e6f69 	cdpcs	15, 6, cr6, cr14, cr9, {3}
 7bc:	00000068 	andeq	r0, r0, r8, rrx
 7c0:	616c4100 	cmnvs	ip, r0, lsl #2
 7c4:	654d6d72 	strbvs	r6, [sp, #-3442]	@ 0xfffff28e
 7c8:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
 7cc:	2e6d7369 	cdpcs	3, 6, cr7, cr13, cr9, {3}
 7d0:	00000068 	andeq	r0, r0, r8, rrx
 7d4:	69726400 	ldmdbvs	r2!, {sl, sp, lr}^
 7d8:	2e726576 	mrccs	5, 3, r6, cr2, cr6, {3}
 7dc:	00000068 	andeq	r0, r0, r8, rrx
 7e0:	01050000 	mrseq	r0, (UNDEF: 5)
 7e4:	f0020500 			@ <UNDEFINED> instruction: 0xf0020500
 7e8:	03080001 	movweq	r0, #32769	@ 0x8001
 7ec:	0205010d 	andeq	r0, r5, #1073741827	@ 0x40000003
 7f0:	301b0530 	andscc	r0, fp, r0, lsr r5
 7f4:	053d1405 	ldreq	r1, [sp, #-1029]!	@ 0xfffffbfb
 7f8:	05a13d01 	streq	r3, [r1, #3329]!	@ 0xd01
 7fc:	03052f02 	movweq	r2, #24322	@ 0x5f02
 800:	01040200 	mrseq	r0, R12_usr
 804:	04020031 	streq	r0, [r2], #-49	@ 0xffffffcf
 808:	02003d01 	andeq	r3, r0, #1, 26	@ 0x40
 80c:	023b0104 	eorseq	r0, fp, #4, 2
 810:	01010006 	tsteq	r1, r6
 814:	00000296 	muleq	r0, r6, r2
 818:	02030003 	andeq	r0, r3, #3
 81c:	01020000 	mrseq	r0, (UNDEF: 2)
 820:	000d0efb 	strdeq	r0, [sp], -fp
 824:	01010101 	tsteq	r1, r1, lsl #2
 828:	01000000 	mrseq	r0, (UNDEF: 0)
 82c:	43010000 	movwmi	r0, #4096	@ 0x1000
 830:	54535c3a 	ldrbpl	r5, [r3], #-3130	@ 0xfffff3c6
 834:	4d54535c 	ldclmi	3, cr5, [r4, #-368]	@ 0xfffffe90
 838:	75433233 	strbvc	r3, [r3, #-563]	@ 0xfffffdcd
 83c:	44496562 	strbmi	r6, [r9], #-1378	@ 0xfffffa9e
 840:	2e315f45 	cdpcs	15, 3, cr5, cr1, cr5, {2}
 844:	312e3531 			@ <UNDEFINED> instruction: 0x312e3531
 848:	4d54535c 	ldclmi	3, cr5, [r4, #-368]	@ 0xfffffe90
 84c:	75433233 	strbvc	r3, [r3, #-563]	@ 0xfffffdcd
 850:	44496562 	strbmi	r6, [r9], #-1378	@ 0xfffffa9e
 854:	6c705c45 	ldclvs	12, cr5, [r0], #-276	@ 0xfffffeec
 858:	6e696775 	mcrvs	7, 3, r6, cr9, cr5, {3}
 85c:	6f635c73 	svcvs	0x00635c73
 860:	74732e6d 	ldrbtvc	r2, [r3], #-3693	@ 0xfffff193
 864:	6d74732e 	ldclvs	3, cr7, [r4, #-184]!	@ 0xffffff48
 868:	75633233 	strbvc	r3, [r3, #-563]!	@ 0xfffffdcd
 86c:	692e6562 	stmdbvs	lr!, {r1, r5, r6, r8, sl, sp, lr}
 870:	6d2e6564 	cfstr32vs	mvfx6, [lr, #-400]!	@ 0xfffffe70
 874:	652e7563 	strvs	r7, [lr, #-1379]!	@ 0xfffffa9d
 878:	72657478 	rsbvc	r7, r5, #120, 8	@ 0x78000000
 87c:	746c616e 	strbtvc	r6, [ip], #-366	@ 0xfffffe92
 880:	736c6f6f 	cmnvc	ip, #444	@ 0x1bc
 884:	756e672e 	strbvc	r6, [lr, #-1838]!	@ 0xfffff8d2
 888:	6f6f742d 	svcvs	0x006f742d
 88c:	662d736c 	strtvs	r7, [sp], -ip, ror #6
 890:	732d726f 			@ <UNDEFINED> instruction: 0x732d726f
 894:	32336d74 	eorscc	r6, r3, #116, 26	@ 0x1d00
 898:	2e32312e 	rsfcssp	f3, f2, #0.5
 89c:	65722e33 	ldrbvs	r2, [r2, #-3635]!	@ 0xfffff1cd
 8a0:	772e316c 	strvc	r3, [lr, -ip, ror #2]!
 8a4:	32336e69 	eorscc	r6, r3, #1680	@ 0x690
 8a8:	302e315f 	eorcc	r3, lr, pc, asr r1
 8ac:	3030312e 	eorscc	r3, r0, lr, lsr #2
 8b0:	3230322e 	eorscc	r3, r0, #-536870910	@ 0xe0000002
 8b4:	31333034 	teqcc	r3, r4, lsr r0
 8b8:	35323131 	ldrcc	r3, [r2, #-305]!	@ 0xfffffecf
 8bc:	6f745c36 	svcvs	0x00745c36
 8c0:	5c736c6f 	ldclpl	12, cr6, [r3], #-444	@ 0xfffffe44
 8c4:	2f6e6962 	svccs	0x006e6962
 8c8:	6c2f2e2e 	stcvs	14, cr2, [pc], #-184	@ 818 <vectors_ArrOfPtrToFunc-0x7fff7e8>
 8cc:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
 8d0:	612f6363 			@ <UNDEFINED> instruction: 0x612f6363
 8d4:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 8d8:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	@ 0xfffffe44
 8dc:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 8e0:	2e32312f 	rsfcssp	f3, f2, #10.0
 8e4:	2f312e33 	svccs	0x00312e33
 8e8:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 8ec:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 8f0:	2f2e2e2f 	svccs	0x002e2e2f
 8f4:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	@ 0xfffffe7c
 8f8:	656e6f6e 	strbvs	r6, [lr, #-3950]!	@ 0xfffff092
 8fc:	6261652d 	rsbvs	r6, r1, #188743680	@ 0xb400000
 900:	6e692f69 	cdpvs	15, 6, cr2, cr9, cr9, {3}
 904:	64756c63 	ldrbtvs	r6, [r5], #-3171	@ 0xfffff39d
 908:	616d2f65 	cmnvs	sp, r5, ror #30
 90c:	6e696863 	cdpvs	8, 6, cr6, cr9, cr3, {3}
 910:	3a430065 	bcc	10c0aac <vectors_ArrOfPtrToFunc-0x6f3f554>
 914:	5c54535c 	mrrcpl	3, 5, r5, r4, cr12
 918:	334d5453 	movtcc	r5, #54355	@ 0xd453
 91c:	62754332 	rsbsvs	r4, r5, #-939524096	@ 0xc8000000
 920:	45444965 	strbmi	r4, [r4, #-2405]	@ 0xfffff69b
 924:	312e315f 			@ <UNDEFINED> instruction: 0x312e315f
 928:	5c312e35 	ldcpl	14, cr2, [r1], #-212	@ 0xffffff2c
 92c:	334d5453 	movtcc	r5, #54355	@ 0xd453
 930:	62754332 	rsbsvs	r4, r5, #-939524096	@ 0xc8000000
 934:	45444965 	strbmi	r4, [r4, #-2405]	@ 0xfffff69b
 938:	756c705c 	strbvc	r7, [ip, #-92]!	@ 0xffffffa4
 93c:	736e6967 	cmnvc	lr, #1687552	@ 0x19c000
 940:	6d6f635c 	stclvs	3, cr6, [pc, #-368]!	@ 7d8 <vectors_ArrOfPtrToFunc-0x7fff828>
 944:	2e74732e 	cdpcs	3, 7, cr7, cr4, cr14, {1}
 948:	336d7473 	cmncc	sp, #1929379840	@ 0x73000000
 94c:	62756332 	rsbsvs	r6, r5, #-939524096	@ 0xc8000000
 950:	64692e65 	strbtvs	r2, [r9], #-3685	@ 0xfffff19b
 954:	636d2e65 	cmnvs	sp, #1616	@ 0x650
 958:	78652e75 	stmdavc	r5!, {r0, r2, r4, r5, r6, r9, sl, fp, sp}^
 95c:	6e726574 	mrcvs	5, 3, r6, cr2, cr4, {3}
 960:	6f746c61 	svcvs	0x00746c61
 964:	2e736c6f 	cdpcs	12, 7, cr6, cr3, cr15, {3}
 968:	2d756e67 	ldclcs	14, cr6, [r5, #-412]!	@ 0xfffffe64
 96c:	6c6f6f74 	stclvs	15, cr6, [pc], #-464	@ 7a4 <vectors_ArrOfPtrToFunc-0x7fff85c>
 970:	6f662d73 	svcvs	0x00662d73
 974:	74732d72 	ldrbtvc	r2, [r3], #-3442	@ 0xfffff28e
 978:	2e32336d 	cdpcs	3, 3, cr3, cr2, cr13, {3}
 97c:	332e3231 			@ <UNDEFINED> instruction: 0x332e3231
 980:	6c65722e 	sfmvs	f7, 2, [r5], #-184	@ 0xffffff48
 984:	69772e31 	ldmdbvs	r7!, {r0, r4, r5, r9, sl, fp, sp}^
 988:	5f32336e 	svcpl	0x0032336e
 98c:	2e302e31 	mrccs	14, 1, r2, cr0, cr1, {1}
 990:	2e303031 	mrccs	0, 1, r3, cr0, cr1, {1}
 994:	34323032 	ldrtcc	r3, [r2], #-50	@ 0xffffffce
 998:	31313330 	teqcc	r1, r0, lsr r3
 99c:	36353231 			@ <UNDEFINED> instruction: 0x36353231
 9a0:	6f6f745c 	svcvs	0x006f745c
 9a4:	625c736c 	subsvs	r7, ip, #108, 6	@ 0xb0000001
 9a8:	2e2f6e69 	cdpcs	14, 2, cr6, cr15, cr9, {3}
 9ac:	696c2f2e 	stmdbvs	ip!, {r1, r2, r3, r5, r8, r9, sl, fp, sp}^
 9b0:	63672f62 	cmnvs	r7, #392	@ 0x188
 9b4:	72612f63 	rsbvc	r2, r1, #396	@ 0x18c
 9b8:	6f6e2d6d 	svcvs	0x006e2d6d
 9bc:	652d656e 	strvs	r6, [sp, #-1390]!	@ 0xfffffa92
 9c0:	2f696261 	svccs	0x00696261
 9c4:	332e3231 			@ <UNDEFINED> instruction: 0x332e3231
 9c8:	2e2f312e 	sufcsep	f3, f7, #0.5
 9cc:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 9d0:	2f2e2e2f 	svccs	0x002e2e2f
 9d4:	612f2e2e 			@ <UNDEFINED> instruction: 0x612f2e2e
 9d8:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 9dc:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	@ 0xfffffe44
 9e0:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 9e4:	636e692f 	cmnvs	lr, #770048	@ 0xbc000
 9e8:	6564756c 	strbvs	r7, [r4, #-1388]!	@ 0xfffffa94
 9ec:	7379732f 	cmnvc	r9, #-1140850688	@ 0xbc000000
 9f0:	74730000 	ldrbtvc	r0, [r3], #-0
 9f4:	75747261 	ldrbvc	r7, [r4, #-609]!	@ 0xfffffd9f
 9f8:	00632e70 	rsbeq	r2, r3, r0, ror lr
 9fc:	5f000000 	svcpl	0x00000000
 a00:	61666564 	cmnvs	r6, r4, ror #10
 a04:	5f746c75 	svcpl	0x00746c75
 a08:	65707974 	ldrbvs	r7, [r0, #-2420]!	@ 0xfffff68c
 a0c:	00682e73 	rsbeq	r2, r8, r3, ror lr
 a10:	5f000001 	svcpl	0x00000001
 a14:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 a18:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 a1c:	00000200 	andeq	r0, r0, r0, lsl #4
 a20:	00190500 	andseq	r0, r9, r0, lsl #10
 a24:	02380205 	eorseq	r0, r8, #1342177280	@ 0x50000000
 a28:	1e030800 	cdpne	8, 0, cr0, cr3, cr0, {0}
 a2c:	400b0501 	andmi	r0, fp, r1, lsl #10
 a30:	05312405 	ldreq	r2, [r1, #-1029]!	@ 0xfffffbfb
 a34:	07053c0e 	streq	r3, [r5, -lr, lsl #24]
 a38:	2f080521 	svccs	0x00080521
 a3c:	052f0905 	streq	r0, [pc, #-2309]!	@ 13f <vectors_ArrOfPtrToFunc-0x7fffec1>
 a40:	0b052e02 	bleq	14c250 <vectors_ArrOfPtrToFunc-0x7eb3db0>
 a44:	03040200 	movweq	r0, #16896	@ 0x4200
 a48:	000a0522 	andeq	r0, sl, r2, lsr #10
 a4c:	2e030402 	cdpcs	4, 0, cr0, cr3, cr2, {0}
 a50:	02002105 	andeq	r2, r0, #1073741825	@ 0x40000001
 a54:	052c0304 	streq	r0, [ip, #-772]!	@ 0xfffffcfc
 a58:	0402002b 	streq	r0, [r2], #-43	@ 0xffffffd5
 a5c:	34053c03 	strcc	r3, [r5], #-3075	@ 0xfffff3fd
 a60:	03040200 	movweq	r0, #16896	@ 0x4200
 a64:	0010053c 	andseq	r0, r0, ip, lsr r5
 a68:	3c010402 	cfstrscc	mvf0, [r1], {2}
 a6c:	05502305 	ldrbeq	r2, [r0, #-773]	@ 0xfffffcfb
 a70:	07053c0e 	streq	r3, [r5, -lr, lsl #24]
 a74:	2f080521 	svccs	0x00080521
 a78:	052f0905 	streq	r0, [pc, #-2309]!	@ 17b <vectors_ArrOfPtrToFunc-0x7fffe85>
 a7c:	0a052e02 	beq	14c28c <vectors_ArrOfPtrToFunc-0x7eb3d74>
 a80:	03040200 	movweq	r0, #16896	@ 0x4200
 a84:	00210522 	eoreq	r0, r1, r2, lsr #10
 a88:	3a030402 	bcc	c1a98 <vectors_ArrOfPtrToFunc-0x7f3e568>
 a8c:	02002b05 	andeq	r2, r0, #5120	@ 0x1400
 a90:	053c0304 	ldreq	r0, [ip, #-772]!	@ 0xfffffcfc
 a94:	04020010 	streq	r0, [r2], #-16
 a98:	02053c01 	andeq	r3, r5, #256	@ 0x100
 a9c:	2f010550 	svccs	0x00010550
 aa0:	05e61b05 	strbeq	r1, [r6, #2821]!	@ 0xb05
 aa4:	01052f02 	tsteq	r5, r2, lsl #30
 aa8:	0002022f 	andeq	r0, r2, pc, lsr #4
 aac:	Address 0xaac is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	74530074 	ldrbvc	r0, [r3], #-116	@ 0xffffff8c
  10:	41657461 	cmnmi	r5, r1, ror #8
  14:	6d72616c 	ldfvse	f6, [r2, #-432]!	@ 0xfffffe50
  18:	75004e4f 	strvc	r4, [r0, #-3663]	@ 0xfffff1b1
  1c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  20:	2064656e 	rsbcs	r6, r4, lr, ror #10
  24:	72616863 	rsbvc	r6, r1, #6488064	@ 0x630000
  28:	61745300 	cmnvs	r4, r0, lsl #6
  2c:	6c416574 	cfstr64vs	mvdx6, [r1], {116}	@ 0x74
  30:	4f6d7261 	svcmi	0x006d7261
  34:	5f004646 	svcpl	0x00004646
  38:	6e69755f 	mcrvs	5, 3, r7, cr9, cr15, {2}
  3c:	5f323374 	svcpl	0x00323374
  40:	6f6c0074 	svcvs	0x006c0074
  44:	6c20676e 	stcvs	7, cr6, [r0], #-440	@ 0xfffffe48
  48:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	@ 0xfffff199
  54:	746e6920 	strbtvc	r6, [lr], #-2336	@ 0xfffff6e0
  58:	616c4100 	cmnvs	ip, r0, lsl #2
  5c:	654d6d72 	strbvs	r6, [sp, #-3442]	@ 0xfffff28e
  60:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
  64:	536d7369 	cmnpl	sp, #-1543503871	@ 0xa4000001
  68:	75746174 	ldrbvc	r6, [r4, #-372]!	@ 0xfffffe8c
  6c:	65530073 	ldrbvs	r0, [r3, #-115]	@ 0xffffff8d
  70:	616c4174 	smcvs	50196	@ 0xc414
  74:	69536d72 	ldmdbvs	r3, {r1, r4, r5, r6, r8, sl, fp, sp, lr}^
  78:	6c616e67 	stclvs	14, cr6, [r1], #-412	@ 0xfffffe64
  7c:	616c4100 	cmnvs	ip, r0, lsl #2
  80:	654d6d72 	strbvs	r6, [sp, #-3442]	@ 0xfffff28e
  84:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
  88:	2e6d7369 	cdpcs	3, 6, cr7, cr13, cr9, {3}
  8c:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
  90:	31432055 	qdaddcc	r2, r5, r3
  94:	32312037 	eorscc	r2, r1, #55	@ 0x37
  98:	312e332e 			@ <UNDEFINED> instruction: 0x312e332e
  9c:	32303220 	eorscc	r3, r0, #32, 4
  a0:	32363033 	eorscc	r3, r6, #51	@ 0x33
  a4:	6d2d2036 	stcvs	0, cr2, [sp, #-216]!	@ 0xffffff28
  a8:	3d757063 	ldclcc	0, cr7, [r5, #-396]!	@ 0xfffffe74
  ac:	74726f63 	ldrbtvc	r6, [r2], #-3939	@ 0xfffff09d
  b0:	6d2d7865 	stcvs	8, cr7, [sp, #-404]!	@ 0xfffffe6c
  b4:	6d2d2033 	stcvs	0, cr2, [sp, #-204]!	@ 0xffffff34
  b8:	616f6c66 	cmnvs	pc, r6, ror #24
  bc:	62612d74 	rsbvs	r2, r1, #116, 26	@ 0x1d00
  c0:	6f733d69 	svcvs	0x00733d69
  c4:	2d207466 	cfstrscs	mvf7, [r0, #-408]!	@ 0xfffffe68
  c8:	7568746d 	strbvc	r7, [r8, #-1133]!	@ 0xfffffb93
  cc:	2d20626d 	sfmcs	f6, 4, [r0, #-436]!	@ 0xfffffe4c
  d0:	6372616d 	cmnvs	r2, #1073741851	@ 0x4000001b
  d4:	72613d68 	rsbvc	r3, r1, #104, 26	@ 0x1a00
  d8:	2d37766d 	ldccs	6, cr7, [r7, #-436]!	@ 0xfffffe4c
  dc:	672d206d 	strvs	r2, [sp, -sp, rrx]!
  e0:	64672d20 	strbtvs	r2, [r7], #-3360	@ 0xfffff2e0
  e4:	66726177 			@ <UNDEFINED> instruction: 0x66726177
  e8:	5300322d 	movwpl	r3, #557	@ 0x22d
  ec:	415f7465 	cmpmi	pc, r5, ror #8
  f0:	6d72616c 	ldfvse	f6, [r2, #-432]!	@ 0xfffffe50
  f4:	7463615f 	strbtvc	r6, [r3], #-351	@ 0xfffffea1
  f8:	6f746175 	svcvs	0x00746175
  fc:	74700072 	ldrbtvc	r0, [r0], #-114	@ 0xffffff8e
 100:	616c4172 	smcvs	50194	@ 0xc412
 104:	654d6d72 	strbvs	r6, [sp, #-3442]	@ 0xfffff28e
 108:	6e616863 	cdpvs	8, 6, cr6, cr1, cr3, {3}
 10c:	006d7369 	rsbeq	r7, sp, r9, ror #6
 110:	726f6873 	rsbvc	r6, pc, #7536640	@ 0x730000
 114:	6e752074 	mrcvs	0, 3, r2, cr5, cr4, {3}
 118:	6e676973 			@ <UNDEFINED> instruction: 0x6e676973
 11c:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
 120:	5f00746e 	svcpl	0x0000746e
 124:	746e695f 	strbtvc	r6, [lr], #-2399	@ 0xfffff6a1
 128:	745f3233 	ldrbvc	r3, [pc], #-563	@ 130 <vectors_ArrOfPtrToFunc-0x7fffed0>
 12c:	616c4100 	cmnvs	ip, r0, lsl #2
 130:	75446d72 	strbvc	r6, [r4, #-3442]	@ 0xfffff28e
 134:	69746172 	ldmdbvs	r4!, {r1, r4, r5, r6, r8, sp, lr}^
 138:	6c006e6f 	stcvs	14, cr6, [r0], {111}	@ 0x6f
 13c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 140:	62756f64 	rsbsvs	r6, r5, #100, 30	@ 0x190
 144:	7300656c 	movwvc	r6, #1388	@ 0x56c
 148:	74726f68 	ldrbtvc	r6, [r2], #-3944	@ 0xfffff098
 14c:	746e6920 	strbtvc	r6, [lr], #-2336	@ 0xfffff6e0
 150:	2f3a4600 	svccs	0x003a4600
 154:	44555453 	ldrbmi	r5, [r5], #-1107	@ 0xfffffbad
 158:	4f432f59 	svcmi	0x00432f59
 15c:	45535255 	ldrbmi	r5, [r3, #-597]	@ 0xfffffdab
 160:	614d2f53 	cmpvs	sp, r3, asr pc
 164:	72657473 	rsbvc	r7, r5, #1929379840	@ 0x73000000
 168:	20676e69 	rsbcs	r6, r7, r9, ror #28
 16c:	65626d45 	strbvs	r6, [r2, #-3397]!	@ 0xfffff2bb
 170:	64656464 	strbtvs	r6, [r5], #-1124	@ 0xfffffb9c
 174:	73795320 	cmnvc	r9, #32, 6	@ 0x80000000
 178:	206d6574 	rsbcs	r6, sp, r4, ror r5
 17c:	6c706944 			@ <UNDEFINED> instruction: 0x6c706944
 180:	2f616d6f 	svccs	0x00616d6f
 184:	74696e55 	strbtvc	r6, [r9], #-3669	@ 0xfffff1ab
 188:	465f355f 			@ <UNDEFINED> instruction: 0x465f355f
 18c:	74737269 	ldrbtvc	r7, [r3], #-617	@ 0xfffffd97
 190:	7265545f 	rsbvc	r5, r5, #1593835520	@ 0x5f000000
 194:	72505f6d 	subsvc	r5, r0, #436	@ 0x1b4
 198:	63656a6f 	cmnvs	r5, #454656	@ 0x6f000
 19c:	422f7374 	eormi	r7, pc, #116, 6	@ 0xd0000001
 1a0:	646c6975 	strbtvs	r6, [ip], #-2421	@ 0xfffff68b
 1a4:	6c654400 	cfstrdvs	mvd4, [r5], #-0
 1a8:	6e007961 	vmlsvs.f16	s14, s0, s3	@ <UNPREDICTABLE>
 1ac:	6e756f43 	cdpvs	15, 7, cr6, cr5, cr3, {2}
 1b0:	72640074 	rsbvc	r0, r4, #116	@ 0x74
 1b4:	72657669 	rsbvc	r7, r5, #110100480	@ 0x6900000
 1b8:	4700632e 	strmi	r6, [r0, -lr, lsr #6]
 1bc:	5f4f4950 	svcpl	0x004f4950
 1c0:	54494e49 	strbpl	r4, [r9], #-3657	@ 0xfffff1b7
 1c4:	494c4149 	stmdbmi	ip, {r0, r3, r6, r8, lr}^
 1c8:	4954415a 	ldmdbmi	r4, {r1, r3, r4, r6, r8, lr}^
 1cc:	67004e4f 	strvs	r4, [r0, -pc, asr #28]
 1d0:	72507465 	subsvc	r7, r0, #1694498816	@ 0x65000000
 1d4:	75737365 	ldrbvc	r7, [r3, #-869]!	@ 0xfffffc9b
 1d8:	61566572 	cmpvs	r6, r2, ror r5
 1dc:	7250006c 	subsvc	r0, r0, #108	@ 0x6c
 1e0:	75737365 	ldrbvc	r7, [r3, #-869]!	@ 0xfffffc9b
 1e4:	68546572 	ldmdavs	r4, {r1, r4, r5, r6, r8, sl, sp, lr}^
 1e8:	68736572 	ldmdavs	r3!, {r1, r4, r5, r6, r8, sl, sp, lr}^
 1ec:	00646c6f 	rsbeq	r6, r4, pc, ror #24
 1f0:	74617453 	strbtvc	r7, [r1], #-1107	@ 0xfffffbad
 1f4:	67694865 	strbvs	r4, [r9, -r5, ror #16]!
 1f8:	65725068 	ldrbvs	r5, [r2, #-104]!	@ 0xffffff98
 1fc:	72757373 	rsbsvc	r7, r5, #-872415231	@ 0xcc000001
 200:	69480065 	stmdbvs	r8, {r0, r2, r5, r6}^
 204:	72506867 	subsvc	r6, r0, #6750208	@ 0x670000
 208:	75737365 	ldrbvc	r7, [r3, #-869]!	@ 0xfffffc9b
 20c:	65446572 	strbvs	r6, [r4, #-1394]	@ 0xfffffa8e
 210:	74636574 	strbtvc	r6, [r3], #-1396	@ 0xfffffa8c
 214:	2e6e6f69 	cdpcs	15, 6, cr6, cr14, cr9, {3}
 218:	69480063 	stmdbvs	r8, {r0, r1, r5, r6}^
 21c:	72506867 	subsvc	r6, r0, #6750208	@ 0x670000
 220:	75737365 	ldrbvc	r7, [r3, #-869]!	@ 0xfffffc9b
 224:	65446572 	strbvs	r6, [r4, #-1394]	@ 0xfffffa8e
 228:	74636574 	strbtvc	r6, [r3], #-1396	@ 0xfffffa8c
 22c:	536e6f69 	cmnpl	lr, #420	@ 0x1a4
 230:	75746174 	ldrbvc	r6, [r4, #-372]!	@ 0xfffffe8c
 234:	74700073 	ldrbtvc	r0, [r0], #-115	@ 0xffffff8d
 238:	67694872 			@ <UNDEFINED> instruction: 0x67694872
 23c:	65725068 	ldrbvs	r5, [r2, #-104]!	@ 0xffffff98
 240:	72757373 	rsbsvc	r7, r5, #-872415231	@ 0xcc000001
 244:	74654465 	strbtvc	r4, [r5], #-1125	@ 0xfffffb9b
 248:	69746365 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, r9, sp, lr}^
 24c:	50006e6f 	andpl	r6, r0, pc, ror #28
 250:	73736572 	cmnvc	r3, #478150656	@ 0x1c800000
 254:	52657275 	rsbpl	r7, r5, #1342177287	@ 0x50000007
 258:	69656365 	stmdbvs	r5!, {r0, r2, r5, r6, r8, r9, sp, lr}^
 25c:	00646576 	rsbeq	r6, r4, r6, ror r5
 260:	74617453 	strbtvc	r7, [r1], #-1107	@ 0xfffffbad
 264:	726f4e65 	rsbvc	r4, pc, #1616	@ 0x650
 268:	506c616d 	rsbpl	r6, ip, sp, ror #2
 26c:	73736572 	cmnvc	r3, #478150656	@ 0x1c800000
 270:	00657275 	rsbeq	r7, r5, r5, ror r2
 274:	6e69616d 	powvsez	f6, f1, #5.0
 278:	7300632e 	movwvc	r6, #814	@ 0x32e
 27c:	70757465 	rsbsvc	r7, r5, r5, ror #8
 280:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
 284:	7473006e 	ldrbtvc	r0, [r3], #-110	@ 0xffffff92
 288:	75747261 	ldrbvc	r7, [r4, #-609]!	@ 0xfffffd9f
 28c:	00632e70 	rsbeq	r2, r3, r0, ror lr
 290:	69755f5f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, fp, ip, lr}^
 294:	5f38746e 	svcpl	0x0038746e
 298:	65730074 	ldrbvs	r0, [r3, #-116]!	@ 0xffffff8c
 29c:	6f697463 	svcvs	0x00697463
 2a0:	69735f6e 	ldmdbvs	r3!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
 2a4:	7000657a 	andvc	r6, r0, sl, ror r5
 2a8:	6372735f 	cmnvs	r2, #2080374785	@ 0x7c000001
 2ac:	61747300 	cmnvs	r4, r0, lsl #6
 2b0:	745f6b63 	ldrbvc	r6, [pc], #-2915	@ 2b8 <vectors_ArrOfPtrToFunc-0x7fffd48>
 2b4:	5f00706f 	svcpl	0x0000706f
 2b8:	5f444e45 	svcpl	0x00444e45
 2bc:	74786574 	ldrbtvc	r6, [r8], #-1396	@ 0xfffffa8c
 2c0:	54535f00 	ldrbpl	r5, [r3], #-3840	@ 0xfffff100
 2c4:	5f545241 	svcpl	0x00545241
 2c8:	00737362 	rsbseq	r7, r3, r2, ror #6
 2cc:	4154535f 	cmpmi	r4, pc, asr r3
 2d0:	645f5452 	ldrbvs	r5, [pc], #-1106	@ 2d8 <vectors_ArrOfPtrToFunc-0x7fffd28>
 2d4:	00617461 	rsbeq	r7, r1, r1, ror #8
 2d8:	61666544 	cmnvs	r6, r4, asr #10
 2dc:	5f746c75 	svcpl	0x00746c75
 2e0:	646e6168 	strbtvs	r6, [lr], #-360	@ 0xfffffe98
 2e4:	0072656c 	rsbseq	r6, r2, ip, ror #10
 2e8:	444e455f 	strbmi	r4, [lr], #-1375	@ 0xfffffaa1
 2ec:	7373625f 	cmnvc	r3, #-268435451	@ 0xf0000005
 2f0:	63657600 	cmnvs	r5, #0, 12
 2f4:	73726f74 	cmnvc	r2, #116, 30	@ 0x1d0
 2f8:	7272415f 	rsbsvc	r4, r2, #-1073741801	@ 0xc0000017
 2fc:	7450664f 	ldrbvc	r6, [r0], #-1615	@ 0xfffff9b1
 300:	466f5472 			@ <UNDEFINED> instruction: 0x466f5472
 304:	00636e75 	rsbeq	r6, r3, r5, ror lr
 308:	65736552 	ldrbvs	r6, [r3, #-1362]!	@ 0xfffffaae
 30c:	61685f74 	smcvs	34292	@ 0x85f4
 310:	656c646e 	strbvs	r6, [ip, #-1134]!	@ 0xfffffb92
 314:	5f700072 	svcpl	0x00700072
 318:	74736964 	ldrbtvc	r6, [r3], #-2404	@ 0xfffff69c
 31c:	4e455f00 	cdpmi	15, 4, cr5, cr5, cr0, {0}
 320:	61645f44 	cmnvs	r4, r4, asr #30
 324:	Address 0x324 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors_ArrOfPtrToFunc-0x6f2f2dc>
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
  24:	1a011901 	bne	46430 <vectors_ArrOfPtrToFunc-0x7fb9bd0>
  28:	22061e01 	andcs	r1, r6, #1, 28
  2c:	Address 0x2c is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	0000001c 	andeq	r0, r0, ip, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	0800001c 	stmdaeq	r0, {r2, r3, r4}
  1c:	0000001c 	andeq	r0, r0, ip, lsl r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	070d4101 	streq	r4, [sp, -r1, lsl #2]
  28:	410d0d45 	tstmi	sp, r5, asr #26
  2c:	00000ec7 	andeq	r0, r0, r7, asr #29
  30:	00000018 	andeq	r0, r0, r8, lsl r0
  34:	00000000 	andeq	r0, r0, r0
  38:	08000038 	stmdaeq	r0, {r3, r4, r5}
  3c:	00000018 	andeq	r0, r0, r8, lsl r0
  40:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  44:	41018e02 	tstmi	r1, r2, lsl #28
  48:	0000070d 	andeq	r0, r0, sp, lsl #14
  4c:	00000018 	andeq	r0, r0, r8, lsl r0
  50:	00000000 	andeq	r0, r0, r0
  54:	08000050 	stmdaeq	r0, {r4, r6}
  58:	00000040 	andeq	r0, r0, r0, asr #32
  5c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  60:	41018e02 	tstmi	r1, r2, lsl #28
  64:	0000070d 	andeq	r0, r0, sp, lsl #14
  68:	0000000c 	andeq	r0, r0, ip
  6c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
  70:	7c020001 	stcvc	0, cr0, [r2], {1}
  74:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  78:	00000024 	andeq	r0, r0, r4, lsr #32
  7c:	00000068 	andeq	r0, r0, r8, rrx
  80:	08000090 	stmdaeq	r0, {r4, r7}
  84:	00000022 	andeq	r0, r0, r2, lsr #32
  88:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  8c:	100e4101 	andne	r4, lr, r1, lsl #2
  90:	4b070d41 	blmi	1c359c <vectors_ArrOfPtrToFunc-0x7e3ca64>
  94:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	@ 0xffffffc8
  98:	0ec7410d 	poleqs	f4, f7, #5.0
  9c:	00000000 	andeq	r0, r0, r0
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	00000068 	andeq	r0, r0, r8, rrx
  a8:	080000b2 	stmdaeq	r0, {r1, r4, r5, r7}
  ac:	00000016 	andeq	r0, r0, r6, lsl r0
  b0:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  b4:	070d4101 	streq	r4, [sp, -r1, lsl #2]
  b8:	410d0d45 	tstmi	sp, r5, asr #26
  bc:	00000ec7 	andeq	r0, r0, r7, asr #29
  c0:	00000024 	andeq	r0, r0, r4, lsr #32
  c4:	00000068 	andeq	r0, r0, r8, rrx
  c8:	080000c8 	stmdaeq	r0, {r3, r6, r7}
  cc:	0000003c 	andeq	r0, r0, ip, lsr r0
  d0:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  d4:	100e4101 	andne	r4, lr, r1, lsl #2
  d8:	56070d41 	strpl	r0, [r7], -r1, asr #26
  dc:	0d41040e 	cfstrdeq	mvd0, [r1, #-56]	@ 0xffffffc8
  e0:	0ec7410d 	poleqs	f4, f7, #5.0
  e4:	00000000 	andeq	r0, r0, r0
  e8:	0000001c 	andeq	r0, r0, ip, lsl r0
  ec:	00000068 	andeq	r0, r0, r8, rrx
  f0:	08000104 	stmdaeq	r0, {r2, r8}
  f4:	00000050 	andeq	r0, r0, r0, asr r0
  f8:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  fc:	070d4101 	streq	r4, [sp, -r1, lsl #2]
 100:	410d0d5e 	tstmi	sp, lr, asr sp
 104:	00000ec7 	andeq	r0, r0, r7, asr #29
 108:	0000000c 	andeq	r0, r0, ip
 10c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
 110:	7c020001 	stcvc	0, cr0, [r2], {1}
 114:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 118:	00000018 	andeq	r0, r0, r8, lsl r0
 11c:	00000108 	andeq	r0, r0, r8, lsl #2
 120:	08000154 	stmdaeq	r0, {r2, r4, r6, r8}
 124:	0000004c 	andeq	r0, r0, ip, asr #32
 128:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 12c:	41018e02 	tstmi	r1, r2, lsl #28
 130:	0000070d 	andeq	r0, r0, sp, lsl #14
 134:	00000018 	andeq	r0, r0, r8, lsl r0
 138:	00000108 	andeq	r0, r0, r8, lsl #2
 13c:	080001a0 	stmdaeq	r0, {r5, r7, r8}
 140:	00000050 	andeq	r0, r0, r0, asr r0
 144:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 148:	41018e02 	tstmi	r1, r2, lsl #28
 14c:	0000070d 	andeq	r0, r0, sp, lsl #14
 150:	0000000c 	andeq	r0, r0, ip
 154:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
 158:	7c020001 	stcvc	0, cr0, [r2], {1}
 15c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 160:	00000018 	andeq	r0, r0, r8, lsl r0
 164:	00000150 	andeq	r0, r0, r0, asr r1
 168:	080001f0 	stmdaeq	r0, {r4, r5, r6, r7, r8}
 16c:	00000028 	andeq	r0, r0, r8, lsr #32
 170:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 174:	41018e02 	tstmi	r1, r2, lsl #28
 178:	0000070d 	andeq	r0, r0, sp, lsl #14
 17c:	00000018 	andeq	r0, r0, r8, lsl r0
 180:	00000150 	andeq	r0, r0, r0, asr r1
 184:	08000218 	stmdaeq	r0, {r3, r4, r9}
 188:	00000020 	andeq	r0, r0, r0, lsr #32
 18c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 190:	41018e02 	tstmi	r1, r2, lsl #28
 194:	0000070d 	andeq	r0, r0, sp, lsl #14
 198:	0000000c 	andeq	r0, r0, ip
 19c:	ffffffff 			@ <UNDEFINED> instruction: 0xffffffff
 1a0:	7c020001 	stcvc	0, cr0, [r2], {1}
 1a4:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1a8:	00000020 	andeq	r0, r0, r0, lsr #32
 1ac:	00000198 	muleq	r0, r8, r1
 1b0:	08000238 	stmdaeq	r0, {r3, r4, r5, r9}
 1b4:	00000094 	muleq	r0, r4, r0
 1b8:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 1bc:	41018e02 	tstmi	r1, r2, lsl #28
 1c0:	0d41180e 	stcleq	8, cr1, [r1, #-56]	@ 0xffffffc8
 1c4:	080e7a07 	stmdaeq	lr, {r0, r1, r2, r9, fp, ip, sp, lr}
 1c8:	000d0d41 	andeq	r0, sp, r1, asr #26
 1cc:	00000018 	andeq	r0, r0, r8, lsl r0
 1d0:	00000198 	muleq	r0, r8, r1
 1d4:	080002cc 	stmdaeq	r0, {r2, r3, r6, r7, r9}
 1d8:	0000000c 	andeq	r0, r0, ip
 1dc:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 1e0:	41018e02 	tstmi	r1, r2, lsl #28
 1e4:	0000070d 	andeq	r0, r0, sp, lsl #14
