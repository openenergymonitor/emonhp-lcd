
bin/splash.elf:     file format elf32-littleriscv


Disassembly of section .init:

00000000 <jump_reset>:
   0:	14a0006f          	j	14a <reset_handler>

Disassembly of section .text:

00000004 <I2C_write>:
   4:	400056b7          	lui	a3,0x40005
   8:	4146d783          	lhu	a5,1044(a3) # 40005414 <_eusrstack+0x20004c14>
   c:	0807f793          	andi	a5,a5,128
  10:	dfe5                	beqz	a5,8 <I2C_write+0x4>
  12:	0542                	slli	a0,a0,0x10
  14:	8141                	srli	a0,a0,0x10
  16:	40a69823          	sh	a0,1040(a3)
  1a:	8082                	ret

0000001c <I2C_stop>:
  1c:	400056b7          	lui	a3,0x40005
  20:	4146d783          	lhu	a5,1044(a3) # 40005414 <_eusrstack+0x20004c14>
  24:	8b91                	andi	a5,a5,4
  26:	dfed                	beqz	a5,20 <I2C_stop+0x4>
  28:	4006d783          	lhu	a5,1024(a3)
  2c:	07c2                	slli	a5,a5,0x10
  2e:	83c1                	srli	a5,a5,0x10
  30:	2007e793          	ori	a5,a5,512
  34:	40f69023          	sh	a5,1024(a3)
  38:	8082                	ret

0000003a <I2C_start.constprop.0>:
  3a:	400056b7          	lui	a3,0x40005
  3e:	4186d783          	lhu	a5,1048(a3) # 40005418 <_eusrstack+0x20004c18>
  42:	8b89                	andi	a5,a5,2
  44:	ffed                	bnez	a5,3e <I2C_start.constprop.0+0x4>
  46:	4006d783          	lhu	a5,1024(a3)
  4a:	07c2                	slli	a5,a5,0x10
  4c:	83c1                	srli	a5,a5,0x10
  4e:	1007e793          	ori	a5,a5,256
  52:	40f69023          	sh	a5,1024(a3)
  56:	400056b7          	lui	a3,0x40005
  5a:	4146d783          	lhu	a5,1044(a3) # 40005414 <_eusrstack+0x20004c14>
  5e:	8b85                	andi	a5,a5,1
  60:	dfed                	beqz	a5,5a <I2C_start.constprop.0+0x20>
  62:	07800793          	li	a5,120
  66:	00820737          	lui	a4,0x820
  6a:	40f69823          	sh	a5,1040(a3)
  6e:	40005637          	lui	a2,0x40005
  72:	070d                	addi	a4,a4,3
  74:	41465783          	lhu	a5,1044(a2) # 40005414 <_eusrstack+0x20004c14>
  78:	41865683          	lhu	a3,1048(a2)
  7c:	07c2                	slli	a5,a5,0x10
  7e:	06c2                	slli	a3,a3,0x10
  80:	82c1                	srli	a3,a3,0x10
  82:	8fd5                	or	a5,a5,a3
  84:	8ff9                	and	a5,a5,a4
  86:	fee797e3          	bne	a5,a4,74 <I2C_start.constprop.0+0x3a>
  8a:	8082                	ret

0000008c <main>:
  8c:	400217b7          	lui	a5,0x40021
  90:	4f98                	lw	a4,24(a5)
  92:	1141                	addi	sp,sp,-16
  94:	c606                	sw	ra,12(sp)
  96:	c422                	sw	s0,8(sp)
  98:	c226                	sw	s1,4(sp)
  9a:	01176713          	ori	a4,a4,17
  9e:	cf98                	sw	a4,24(a5)
  a0:	4fd8                	lw	a4,28(a5)
  a2:	002006b7          	lui	a3,0x200
  a6:	8f55                	or	a4,a4,a3
  a8:	cfd8                	sw	a4,28(a5)
  aa:	400116b7          	lui	a3,0x40011
  ae:	429c                	lw	a5,0(a3)
  b0:	777d                	lui	a4,0xfffff
  b2:	073d                	addi	a4,a4,15
  b4:	8ff9                	and	a5,a5,a4
  b6:	6705                	lui	a4,0x1
  b8:	dd070713          	addi	a4,a4,-560 # dd0 <system.c.8ad76608+0x5f4>
  bc:	8fd9                	or	a5,a5,a4
  be:	c29c                	sw	a5,0(a3)
  c0:	40005737          	lui	a4,0x40005
  c4:	4791                	li	a5,4
  c6:	40f71223          	sh	a5,1028(a4) # 40005404 <_eusrstack+0x20004c04>
  ca:	77e1                	lui	a5,0xffff8
  cc:	07a9                	addi	a5,a5,10
  ce:	40f71e23          	sh	a5,1052(a4)
  d2:	4785                	li	a5,1
  d4:	40f71023          	sh	a5,1024(a4)
  d8:	378d                	jal	3a <I2C_start.constprop.0>
  da:	4501                	li	a0,0
  dc:	3725                	jal	4 <I2C_write>
  de:	4401                	li	s0,0
  e0:	1d800493          	li	s1,472
  e4:	008487b3          	add	a5,s1,s0
  e8:	0007c503          	lbu	a0,0(a5) # ffff8000 <_eusrstack+0xdfff7800>
  ec:	0405                	addi	s0,s0,1
  ee:	3f19                	jal	4 <I2C_write>
  f0:	47c5                	li	a5,17
  f2:	fef419e3          	bne	s0,a5,e4 <main+0x58>
  f6:	371d                	jal	1c <I2C_stop>
  f8:	1ec00413          	li	s0,492
  fc:	4481                	li	s1,0
  fe:	3f35                	jal	3a <I2C_start.constprop.0>
 100:	4501                	li	a0,0
 102:	3709                	jal	4 <I2C_write>
 104:	0b04e513          	ori	a0,s1,176
 108:	3df5                	jal	4 <I2C_write>
 10a:	4501                	li	a0,0
 10c:	3de5                	jal	4 <I2C_write>
 10e:	4541                	li	a0,16
 110:	3dd5                	jal	4 <I2C_write>
 112:	3729                	jal	1c <I2C_stop>
 114:	371d                	jal	3a <I2C_start.constprop.0>
 116:	04000513          	li	a0,64
 11a:	35ed                	jal	4 <I2C_write>
 11c:	08040793          	addi	a5,s0,128
 120:	00044503          	lbu	a0,0(s0)
 124:	c03e                	sw	a5,0(sp)
 126:	0405                	addi	s0,s0,1
 128:	3df1                	jal	4 <I2C_write>
 12a:	4782                	lw	a5,0(sp)
 12c:	fef41ae3          	bne	s0,a5,120 <main+0x94>
 130:	35f5                	jal	1c <I2C_stop>
 132:	0485                	addi	s1,s1,1
 134:	0ff4f493          	andi	s1,s1,255
 138:	47a1                	li	a5,8
 13a:	fcf492e3          	bne	s1,a5,fe <main+0x72>
 13e:	40b2                	lw	ra,12(sp)
 140:	4422                	lw	s0,8(sp)
 142:	4492                	lw	s1,4(sp)
 144:	4501                	li	a0,0
 146:	0141                	addi	sp,sp,16
 148:	8082                	ret

0000014a <reset_handler>:
 14a:	08c00793          	li	a5,140
 14e:	20000197          	auipc	gp,0x20000
 152:	6b218193          	addi	gp,gp,1714 # 20000800 <_eusrstack>
 156:	00018113          	mv	sp,gp
 15a:	08800513          	li	a0,136
 15e:	30051073          	csrw	mstatus,a0
 162:	458d                	li	a1,3
 164:	80459073          	csrw	0x804,a1
 168:	00000517          	auipc	a0,0x0
 16c:	e9850513          	addi	a0,a0,-360 # 0 <jump_reset>
 170:	8d4d                	or	a0,a0,a1
 172:	30551073          	csrw	mtvec,a0
 176:	34179073          	csrw	mepc,a5
 17a:	200007b7          	lui	a5,0x20000
 17e:	200006b7          	lui	a3,0x20000
 182:	00078793          	mv	a5,a5
 186:	5ec00713          	li	a4,1516
 18a:	00068693          	mv	a3,a3
 18e:	02d7ea63          	bltu	a5,a3,1c2 <reset_handler+0x78>
 192:	200007b7          	lui	a5,0x20000
 196:	20000737          	lui	a4,0x20000
 19a:	00078793          	mv	a5,a5
 19e:	00070713          	mv	a4,a4
 1a2:	02e7e663          	bltu	a5,a4,1ce <reset_handler+0x84>
 1a6:	400217b7          	lui	a5,0x40021
 1aa:	4741                	li	a4,16
 1ac:	c3d8                	sw	a4,4(a5)
 1ae:	4695                	li	a3,5
 1b0:	e000f737          	lui	a4,0xe000f
 1b4:	c314                	sw	a3,0(a4)
 1b6:	4f98                	lw	a4,24(a5)
 1b8:	03476713          	ori	a4,a4,52
 1bc:	cf98                	sw	a4,24(a5)
 1be:	30200073          	mret
 1c2:	4310                	lw	a2,0(a4)
 1c4:	0711                	addi	a4,a4,4
 1c6:	0791                	addi	a5,a5,4
 1c8:	fec7ae23          	sw	a2,-4(a5) # 40020ffc <_eusrstack+0x200207fc>
 1cc:	b7c9                	j	18e <reset_handler+0x44>
 1ce:	0791                	addi	a5,a5,4
 1d0:	fe07ae23          	sw	zero,-4(a5)
 1d4:	b7f9                	j	1a2 <reset_handler+0x58>
	...

000001d8 <OLED_INIT_CMD>:
 1d8:	3fa8 148d 0020 0021 227f 3f00 12da c8a1     .?.. .!..".?....
 1e8:	00af 0000                                   ....

000001ec <splash_bmp>:
	...
 2b0:	f0f0 0000 0000 0000 0000 f0f0 0000 0000     ................
 2c0:	f0f0 3030 3030 7030 c0e0 0000 0000 0000     ..00000p........
	...
 2f0:	0000 f800 fefe 6367 6363 7e67 207c 0000     ......gcccg~| ..
 300:	ffff 0306 0303 ff03 fefe 0307 0303 ff0f     ................
 310:	00fc 0000 fef8 07fe 0303 0303 fe0f 00fc     ................
 320:	0000 ffff 030e 0303 0f03 fcfe 0000 0000     ................
 330:	ffff 1818 1818 1818 1818 ffff 0000 0000     ................
 340:	ffff 3030 3030 3830 0f1f 0000 0000 0000     ..000008........
	...
 370:	0000 0100 0703 0c0e 0c0c 0c0c 000c 0000     ................
 380:	0f0f 0000 0000 0f00 0f0f 0000 0000 0f00     ................
 390:	000f 0000 0301 0e07 0c0c 0c0c 070f 0003     ................
 3a0:	0000 0f0f 0000 0000 0000 0f0f 0000 0000     ................
 3b0:	0f0f 0000 0000 0000 0000 0f0f 0000 0000     ................
 3c0:	0f0f 0000 0000 0000 0000 0000 0000 0000     ................
	...
 3f4:	48f8 f848 80b0 20e0 e020 8080 20e0 e020     .HH....  ....  .
 404:	2080 20f8 0020 00e8 e000 2020 c0e0 e080     . .  .....  ....
 414:	2020 e0e0 0000 0000 0000 0000 0000 0000       ..............
	...
 474:	0407 0604 0103 0407 0704 0101 0407 0704     ................
 484:	0001 0407 0004 0007 0700 0000 0707 2701     ...............'
 494:	2424 0f3f 0400 0000 0004 0400 0000 0000     $$?.............
	...
