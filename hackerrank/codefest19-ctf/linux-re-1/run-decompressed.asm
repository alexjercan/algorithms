
run-decompressed:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x8fb>
  400248:	78 38                	js     400282 <_init-0x8ee>
  40024a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
  400250:	6f                   	outsl  %ds:(%rsi),(%dx)
  400251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000400254 <.note.ABI-tag>:
  400254:	04 00                	add    $0x0,%al
  400256:	00 00                	add    %al,(%rax)
  400258:	10 00                	adc    %al,(%rax)
  40025a:	00 00                	add    %al,(%rax)
  40025c:	01 00                	add    %eax,(%rax)
  40025e:	00 00                	add    %al,(%rax)
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push %rbp
  400263:	00 00                	add    %al,(%rax)
  400265:	00 00                	add    %al,(%rax)
  400267:	00 02                	add    %al,(%rdx)
  400269:	00 00                	add    %al,(%rax)
  40026b:	00 06                	add    %al,(%rsi)
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 20                	add    %ah,(%rax)
  400271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000400274 <.note.gnu.build-id>:
  400274:	04 00                	add    $0x0,%al
  400276:	00 00                	add    %al,(%rax)
  400278:	14 00                	adc    $0x0,%al
  40027a:	00 00                	add    %al,(%rax)
  40027c:	03 00                	add    (%rax),%eax
  40027e:	00 00                	add    %al,(%rax)
  400280:	47                   	rex.RXB
  400281:	4e 55                	rex.WRX push %rbp
  400283:	00 af 31 0d 32 2b    	add    %ch,0x2b320d31(%rdi)
  400289:	c3                   	retq   
  40028a:	c0 07 e7             	rolb   $0xe7,(%rdi)
  40028d:	e5 32                	in     $0x32,%eax
  40028f:	ed                   	in     (%dx),%eax
  400290:	61                   	(bad)  
  400291:	2a 14 e6             	sub    (%rsi,%riz,8),%dl
  400294:	4c                   	rex.WR
  400295:	e8                   	.byte 0xe8
  400296:	61                   	(bad)  
  400297:	e5                   	.byte 0xe5

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	03 00                	add    (%rax),%eax
  40029a:	00 00                	add    %al,(%rax)
  40029c:	17                   	(bad)  
  40029d:	00 00                	add    %al,(%rax)
  40029f:	00 01                	add    %al,(%rcx)
  4002a1:	00 00                	add    %al,(%rax)
  4002a3:	00 06                	add    %al,(%rsi)
  4002a5:	00 00                	add    %al,(%rax)
  4002a7:	00 00                	add    %al,(%rax)
  4002a9:	00 10                	add    %dl,(%rax)
  4002ab:	00 21                	add    %ah,(%rcx)
  4002ad:	01 00                	add    %eax,(%rax)
  4002af:	01 00                	add    %eax,(%rax)
  4002b1:	00 00                	add    %al,(%rax)
  4002b3:	00 00                	add    %al,(%rax)
  4002b5:	00 00                	add    %al,(%rax)
  4002b7:	00 17                	add    %dl,(%rdi)
  4002b9:	00 00                	add    %al,(%rax)
  4002bb:	00 28                	add    %ch,(%rax)
  4002bd:	45 d5                	rex.RB (bad) 
  4002bf:	4c 14 98             	rex.WR adc $0x98,%al
  4002c2:	0c 43                	or     $0x43,%al
  4002c4:	79 49                	jns    40030f <_init-0x861>
  4002c6:	6b                   	.byte 0x6b
  4002c7:	b6                   	.byte 0xb6

Disassembly of section .dynsym:

00000000004002c8 <.dynsym>:
	...
  4002e0:	10 00                	adc    %al,(%rax)
  4002e2:	00 00                	add    %al,(%rax)
  4002e4:	20 00                	and    %al,(%rax)
	...
  4002f6:	00 00                	add    %al,(%rax)
  4002f8:	1f                   	(bad)  
  4002f9:	00 00                	add    %al,(%rax)
  4002fb:	00 20                	add    %ah,(%rax)
	...
  40030d:	00 00                	add    %al,(%rax)
  40030f:	00 e3                	add    %ah,%bl
  400311:	02 00                	add    (%rax),%al
  400313:	00 12                	add    %dl,(%rdx)
	...
  400325:	00 00                	add    %al,(%rax)
  400327:	00 01                	add    %al,(%rcx)
  400329:	03 00                	add    (%rax),%eax
  40032b:	00 12                	add    %dl,(%rdx)
	...
  40033d:	00 00                	add    %al,(%rax)
  40033f:	00 3a                	add    %bh,(%rdx)
  400341:	02 00                	add    (%rax),%al
  400343:	00 12                	add    %dl,(%rdx)
	...
  400355:	00 00                	add    %al,(%rax)
  400357:	00 ae 01 00 00 12    	add    %ch,0x12000001(%rsi)
	...
  40036d:	00 00                	add    %al,(%rax)
  40036f:	00 0d 03 00 00 12    	add    %cl,0x12000003(%rip)        # 12400378 <_end+0x11dfe0e0>
	...
  400385:	00 00                	add    %al,(%rax)
  400387:	00 f9                	add    %bh,%cl
  400389:	02 00                	add    (%rax),%al
  40038b:	00 12                	add    %dl,(%rdx)
	...
  40039d:	00 00                	add    %al,(%rax)
  40039f:	00 33                	add    %dh,(%rbx)
  4003a1:	00 00                	add    %al,(%rax)
  4003a3:	00 20                	add    %ah,(%rax)
	...
  4003b5:	00 00                	add    %al,(%rax)
  4003b7:	00 7a 02             	add    %bh,0x2(%rdx)
  4003ba:	00 00                	add    %al,(%rax)
  4003bc:	12 00                	adc    (%rax),%al
	...
  4003ce:	00 00                	add    %al,(%rax)
  4003d0:	4f 00 00             	rex.WRXB add %r8b,(%r8)
  4003d3:	00 20                	add    %ah,(%rax)
	...
  4003e5:	00 00                	add    %al,(%rax)
  4003e7:	00 c6                	add    %al,%dh
  4003e9:	01 00                	add    %eax,(%rax)
  4003eb:	00 12                	add    %dl,(%rdx)
	...
  4003fd:	00 00                	add    %al,(%rax)
  4003ff:	00 a3 00 00 00 12    	add    %ah,0x12000000(%rbx)
	...
  400415:	00 00                	add    %al,(%rax)
  400417:	00 06                	add    %al,(%rsi)
  400419:	03 00                	add    (%rax),%eax
  40041b:	00 12                	add    %dl,(%rdx)
	...
  40042d:	00 00                	add    %al,(%rax)
  40042f:	00 e8                	add    %ch,%al
  400431:	02 00                	add    (%rax),%al
  400433:	00 12                	add    %dl,(%rdx)
	...
  400445:	00 00                	add    %al,(%rax)
  400447:	00 69 00             	add    %ch,0x0(%rcx)
  40044a:	00 00                	add    %al,(%rax)
  40044c:	12 00                	adc    (%rax),%al
	...
  40045e:	00 00                	add    %al,(%rax)
  400460:	63 01                	movsxd (%rcx),%eax
  400462:	00 00                	add    %al,(%rax)
  400464:	12 00                	adc    (%rax),%al
	...
  400476:	00 00                	add    %al,(%rax)
  400478:	e8 00 00 00 12       	callq  1240047d <_end+0x11dfe1e5>
	...
  40048d:	00 00                	add    %al,(%rax)
  40048f:	00 a1 01 00 00 12    	add    %ah,0x12000001(%rcx)
	...
  4004a5:	00 00                	add    %al,(%rax)
  4004a7:	00 ca                	add    %cl,%dl
  4004a9:	02 00                	add    (%rax),%al
  4004ab:	00 12                	add    %dl,(%rdx)
	...
  4004c1:	02 00                	add    (%rax),%al
  4004c3:	00 12                	add    %dl,(%rdx)
	...
  4004d5:	00 00                	add    %al,(%rax)
  4004d7:	00 29                	add    %ch,(%rcx)
  4004d9:	01 00                	add    %eax,(%rax)
  4004db:	00 12                	add    %dl,(%rdx)
	...
  4004ed:	00 00                	add    %al,(%rax)
  4004ef:	00 76 00             	add    %dh,0x0(%rsi)
  4004f2:	00 00                	add    %al,(%rax)
  4004f4:	12 00                	adc    (%rax),%al
  4004f6:	00 00                	add    %al,(%rax)
  4004f8:	00 0c 40             	add    %cl,(%rax,%rax,2)
	...
  400507:	00 b2 02 00 00 11    	add    %dh,0x11000002(%rdx)
  40050d:	00 1b                	add    %bl,(%rbx)
  40050f:	00 80 21 60 00 00    	add    %al,0x6021(%rax)
  400515:	00 00                	add    %al,(%rax)
  400517:	00 10                	add    %dl,(%rax)
  400519:	01 00                	add    %eax,(%rax)
  40051b:	00 00                	add    %al,(%rax)
  40051d:	00 00                	add    %al,(%rax)
  40051f:	00 8e 00 00 00 12    	add    %cl,0x12000000(%rsi)
  400525:	00 00                	add    %al,(%rax)
  400527:	00 a0 0c 40 00 00    	add    %ah,0x400c(%rax)
	...

Disassembly of section .dynstr:

0000000000400538 <.dynstr>:
  400538:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  40053c:	73 74                	jae    4005b2 <_init-0x5be>
  40053e:	64 63 2b             	movsxd %fs:(%rbx),%ebp
  400541:	2b 2e                	sub    (%rsi),%ebp
  400543:	73 6f                	jae    4005b4 <_init-0x5bc>
  400545:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
  40054a:	67 6d                	insl   (%dx),%es:(%edi)
  40054c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40054d:	6e                   	outsb  %ds:(%rsi),(%dx)
  40054e:	5f                   	pop    %rdi
  40054f:	73 74                	jae    4005c5 <_init-0x5ab>
  400551:	61                   	(bad)  
  400552:	72 74                	jb     4005c8 <_init-0x5a8>
  400554:	5f                   	pop    %rdi
  400555:	5f                   	pop    %rdi
  400556:	00 5f 4a             	add    %bl,0x4a(%rdi)
  400559:	76 5f                	jbe    4005ba <_init-0x5b6>
  40055b:	52                   	push   %rdx
  40055c:	65 67 69 73 74 65 72 	imul   $0x6c437265,%gs:0x74(%ebx),%esi
  400563:	43 6c 
  400565:	61                   	(bad)  
  400566:	73 73                	jae    4005db <_init-0x595>
  400568:	65 73 00             	gs jae 40056b <_init-0x605>
  40056b:	5f                   	pop    %rdi
  40056c:	49 54                	rex.WB push %r12
  40056e:	4d 5f                	rex.WRB pop %r15
  400570:	64 65 72 65          	fs gs jb 4005d9 <_init-0x597>
  400574:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
  40057b:	4d 
  40057c:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
  40057e:	6f                   	outsl  %ds:(%rsi),(%dx)
  40057f:	6e                   	outsb  %ds:(%rsi),(%dx)
  400580:	65 54                	gs push %rsp
  400582:	61                   	(bad)  
  400583:	62                   	(bad)  
  400584:	6c                   	insb   (%dx),%es:(%rdi)
  400585:	65 00 5f 49          	add    %bl,%gs:0x49(%rdi)
  400589:	54                   	push   %rsp
  40058a:	4d 5f                	rex.WRB pop %r15
  40058c:	72 65                	jb     4005f3 <_init-0x57d>
  40058e:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
  400595:	4d 
  400596:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
  400598:	6f                   	outsl  %ds:(%rsi),(%dx)
  400599:	6e                   	outsb  %ds:(%rsi),(%dx)
  40059a:	65 54                	gs push %rsp
  40059c:	61                   	(bad)  
  40059d:	62                   	(bad)  
  40059e:	6c                   	insb   (%dx),%es:(%rdi)
  40059f:	65 00 5f 5a          	add    %bl,%gs:0x5a(%rdi)
  4005a3:	4e 53                	rex.WRX push %rbx
  4005a5:	61                   	(bad)  
  4005a6:	49 63 45 44          	movslq 0x44(%r13),%rax
  4005aa:	31 45 76             	xor    %eax,0x76(%rbp)
  4005ad:	00 5f 5a             	add    %bl,0x5a(%rdi)
  4005b0:	4e 53                	rex.WRX push %rbx
  4005b2:	74 38                	je     4005ec <_init-0x584>
  4005b4:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
  4005bb:	65 34 49             	gs xor $0x49,%al
  4005be:	6e                   	outsb  %ds:(%rsi),(%dx)
  4005bf:	69 74 44 31 45 76 00 	imul   $0x5f007645,0x31(%rsp,%rax,2),%esi
  4005c6:	5f 
  4005c7:	5f                   	pop    %rdi
  4005c8:	67 78 78             	addr32 js 400643 <_init-0x52d>
  4005cb:	5f                   	pop    %rdi
  4005cc:	70 65                	jo     400633 <_init-0x53d>
  4005ce:	72 73                	jb     400643 <_init-0x52d>
  4005d0:	6f                   	outsl  %ds:(%rsi),(%dx)
  4005d1:	6e                   	outsb  %ds:(%rsi),(%dx)
  4005d2:	61                   	(bad)  
  4005d3:	6c                   	insb   (%dx),%es:(%rdi)
  4005d4:	69 74 79 5f 76 30 00 	imul   $0x5f003076,0x5f(%rcx,%rdi,2),%esi
  4005db:	5f 
  4005dc:	5a                   	pop    %rdx
  4005dd:	4e                   	rex.WRX
  4005de:	4b 53                	rex.WXB push %r11
  4005e0:	74 37                	je     400619 <_init-0x557>
  4005e2:	5f                   	pop    %rdi
  4005e3:	5f                   	pop    %rdi
  4005e4:	63 78 78             	movsxd 0x78(%rax),%edi
  4005e7:	31 31                	xor    %esi,(%rcx)
  4005e9:	31 32                	xor    %esi,(%rdx)
  4005eb:	62 61                	(bad)  
  4005ed:	73 69                	jae    400658 <_init-0x518>
  4005ef:	63 5f 73             	movsxd 0x73(%rdi),%ebx
  4005f2:	74 72                	je     400666 <_init-0x50a>
  4005f4:	69 6e 67 49 63 53 74 	imul   $0x74536349,0x67(%rsi),%ebp
  4005fb:	31 31                	xor    %esi,(%rcx)
  4005fd:	63 68 61             	movsxd 0x61(%rax),%ebp
  400600:	72 5f                	jb     400661 <_init-0x50f>
  400602:	74 72                	je     400676 <_init-0x4fa>
  400604:	61                   	(bad)  
  400605:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
  40060c:	61 
  40060d:	49 63 45 45          	movslq 0x45(%r13),%rax
  400611:	37                   	(bad)  
  400612:	63 6f 6d             	movsxd 0x6d(%rdi),%ebp
  400615:	70 61                	jo     400678 <_init-0x4f8>
  400617:	72 65                	jb     40067e <_init-0x4f2>
  400619:	45 52                	rex.RB push %r10
  40061b:	4b 53                	rex.WXB push %r11
  40061d:	34 5f                	xor    $0x5f,%al
  40061f:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400622:	4e 53                	rex.WRX push %rbx
  400624:	74 37                	je     40065d <_init-0x513>
  400626:	5f                   	pop    %rdi
  400627:	5f                   	pop    %rdi
  400628:	63 78 78             	movsxd 0x78(%rax),%edi
  40062b:	31 31                	xor    %esi,(%rcx)
  40062d:	31 32                	xor    %esi,(%rdx)
  40062f:	62 61                	(bad)  
  400631:	73 69                	jae    40069c <_init-0x4d4>
  400633:	63 5f 73             	movsxd 0x73(%rdi),%ebx
  400636:	74 72                	je     4006aa <_init-0x4c6>
  400638:	69 6e 67 49 63 53 74 	imul   $0x74536349,0x67(%rsi),%ebp
  40063f:	31 31                	xor    %esi,(%rcx)
  400641:	63 68 61             	movsxd 0x61(%rax),%ebp
  400644:	72 5f                	jb     4006a5 <_init-0x4cb>
  400646:	74 72                	je     4006ba <_init-0x4b6>
  400648:	61                   	(bad)  
  400649:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
  400650:	61 
  400651:	49 63 45 45          	movslq 0x45(%r13),%rax
  400655:	43 31 45 50          	rex.XB xor %eax,0x50(%r13)
  400659:	4b 63 52 4b          	rex.WXB movslq 0x4b(%r10),%rdx
  40065d:	53                   	push   %rbx
  40065e:	33 5f 00             	xor    0x0(%rdi),%ebx
  400661:	5f                   	pop    %rdi
  400662:	5a                   	pop    %rdx
  400663:	4e 53                	rex.WRX push %rbx
  400665:	74 37                	je     40069e <_init-0x4d2>
  400667:	5f                   	pop    %rdi
  400668:	5f                   	pop    %rdi
  400669:	63 78 78             	movsxd 0x78(%rax),%edi
  40066c:	31 31                	xor    %esi,(%rcx)
  40066e:	31 32                	xor    %esi,(%rdx)
  400670:	62 61                	(bad)  
  400672:	73 69                	jae    4006dd <_init-0x493>
  400674:	63 5f 73             	movsxd 0x73(%rdi),%ebx
  400677:	74 72                	je     4006eb <_init-0x485>
  400679:	69 6e 67 49 63 53 74 	imul   $0x74536349,0x67(%rsi),%ebp
  400680:	31 31                	xor    %esi,(%rcx)
  400682:	63 68 61             	movsxd 0x61(%rax),%ebp
  400685:	72 5f                	jb     4006e6 <_init-0x48a>
  400687:	74 72                	je     4006fb <_init-0x475>
  400689:	61                   	(bad)  
  40068a:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
  400691:	61 
  400692:	49 63 45 45          	movslq 0x45(%r13),%rax
  400696:	70 4c                	jo     4006e4 <_init-0x48c>
  400698:	45 63 00             	movsxd (%r8),%r8d
  40069b:	5f                   	pop    %rdi
  40069c:	5a                   	pop    %rdx
  40069d:	4e 53                	rex.WRX push %rbx
  40069f:	74 37                	je     4006d8 <_init-0x498>
  4006a1:	5f                   	pop    %rdi
  4006a2:	5f                   	pop    %rdi
  4006a3:	63 78 78             	movsxd 0x78(%rax),%edi
  4006a6:	31 31                	xor    %esi,(%rcx)
  4006a8:	31 32                	xor    %esi,(%rdx)
  4006aa:	62 61                	(bad)  
  4006ac:	73 69                	jae    400717 <_init-0x459>
  4006ae:	63 5f 73             	movsxd 0x73(%rdi),%ebx
  4006b1:	74 72                	je     400725 <_init-0x44b>
  4006b3:	69 6e 67 49 63 53 74 	imul   $0x74536349,0x67(%rsi),%ebp
  4006ba:	31 31                	xor    %esi,(%rcx)
  4006bc:	63 68 61             	movsxd 0x61(%rax),%ebp
  4006bf:	72 5f                	jb     400720 <_init-0x450>
  4006c1:	74 72                	je     400735 <_init-0x43b>
  4006c3:	61                   	(bad)  
  4006c4:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
  4006cb:	61 
  4006cc:	49 63 45 45          	movslq 0x45(%r13),%rax
  4006d0:	43 31 45 52          	rex.XB xor %eax,0x52(%r13)
  4006d4:	4b 53                	rex.WXB push %r11
  4006d6:	34 5f                	xor    $0x5f,%al
  4006d8:	00 5f 5a             	add    %bl,0x5a(%rdi)
  4006db:	4e 53                	rex.WRX push %rbx
  4006dd:	61                   	(bad)  
  4006de:	49 63 45 43          	movslq 0x43(%r13),%rax
  4006e2:	31 45 76             	xor    %eax,0x76(%rbp)
  4006e5:	00 5f 5a             	add    %bl,0x5a(%rdi)
  4006e8:	4e 53                	rex.WRX push %rbx
  4006ea:	74 38                	je     400724 <_init-0x44c>
  4006ec:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
  4006f3:	65 34 49             	gs xor $0x49,%al
  4006f6:	6e                   	outsb  %ds:(%rsi),(%dx)
  4006f7:	69 74 43 31 45 76 00 	imul   $0x5f007645,0x31(%rbx,%rax,2),%esi
  4006fe:	5f 
  4006ff:	5a                   	pop    %rdx
  400700:	4e 53                	rex.WRX push %rbx
  400702:	74 37                	je     40073b <_init-0x435>
  400704:	5f                   	pop    %rdi
  400705:	5f                   	pop    %rdi
  400706:	63 78 78             	movsxd 0x78(%rax),%edi
  400709:	31 31                	xor    %esi,(%rcx)
  40070b:	31 32                	xor    %esi,(%rdx)
  40070d:	62 61                	(bad)  
  40070f:	73 69                	jae    40077a <_init-0x3f6>
  400711:	63 5f 73             	movsxd 0x73(%rdi),%ebx
  400714:	74 72                	je     400788 <_init-0x3e8>
  400716:	69 6e 67 49 63 53 74 	imul   $0x74536349,0x67(%rsi),%ebp
  40071d:	31 31                	xor    %esi,(%rcx)
  40071f:	63 68 61             	movsxd 0x61(%rax),%ebp
  400722:	72 5f                	jb     400783 <_init-0x3ed>
  400724:	74 72                	je     400798 <_init-0x3d8>
  400726:	61                   	(bad)  
  400727:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
  40072e:	61 
  40072f:	49 63 45 45          	movslq 0x45(%r13),%rax
  400733:	44 31 45 76          	xor    %r8d,0x76(%rbp)
  400737:	00 5f 5a             	add    %bl,0x5a(%rdi)
  40073a:	4e 53                	rex.WRX push %rbx
  40073c:	74 37                	je     400775 <_init-0x3fb>
  40073e:	5f                   	pop    %rdi
  40073f:	5f                   	pop    %rdi
  400740:	63 78 78             	movsxd 0x78(%rax),%edi
  400743:	31 31                	xor    %esi,(%rcx)
  400745:	31 32                	xor    %esi,(%rdx)
  400747:	62 61                	(bad)  
  400749:	73 69                	jae    4007b4 <_init-0x3bc>
  40074b:	63 5f 73             	movsxd 0x73(%rdi),%ebx
  40074e:	74 72                	je     4007c2 <_init-0x3ae>
  400750:	69 6e 67 49 63 53 74 	imul   $0x74536349,0x67(%rsi),%ebp
  400757:	31 31                	xor    %esi,(%rcx)
  400759:	63 68 61             	movsxd 0x61(%rax),%ebp
  40075c:	72 5f                	jb     4007bd <_init-0x3b3>
  40075e:	74 72                	je     4007d2 <_init-0x39e>
  400760:	61                   	(bad)  
  400761:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
  400768:	61 
  400769:	49 63 45 45          	movslq 0x45(%r13),%rax
  40076d:	69 78 45 6d 00 5f 5a 	imul   $0x5a5f006d,0x45(%rax),%edi
  400774:	4e                   	rex.WRX
  400775:	4b 53                	rex.WXB push %r11
  400777:	74 37                	je     4007b0 <_init-0x3c0>
  400779:	5f                   	pop    %rdi
  40077a:	5f                   	pop    %rdi
  40077b:	63 78 78             	movsxd 0x78(%rax),%edi
  40077e:	31 31                	xor    %esi,(%rcx)
  400780:	31 32                	xor    %esi,(%rdx)
  400782:	62 61                	(bad)  
  400784:	73 69                	jae    4007ef <_init-0x381>
  400786:	63 5f 73             	movsxd 0x73(%rdi),%ebx
  400789:	74 72                	je     4007fd <_init-0x373>
  40078b:	69 6e 67 49 63 53 74 	imul   $0x74536349,0x67(%rsi),%ebp
  400792:	31 31                	xor    %esi,(%rcx)
  400794:	63 68 61             	movsxd 0x61(%rax),%ebp
  400797:	72 5f                	jb     4007f8 <_init-0x378>
  400799:	74 72                	je     40080d <_init-0x363>
  40079b:	61                   	(bad)  
  40079c:	69 74 73 49 63 45 53 	imul   $0x61534563,0x49(%rbx,%rsi,2),%esi
  4007a3:	61 
  4007a4:	49 63 45 45          	movslq 0x45(%r13),%rax
  4007a8:	36 6c                	ss insb (%dx),%es:(%rdi)
  4007aa:	65 6e                	outsb  %gs:(%rsi),(%dx)
  4007ac:	67 74 68             	addr32 je 400817 <_init-0x359>
  4007af:	45 76 00             	rex.RB jbe 4007b2 <_init-0x3be>
  4007b2:	5f                   	pop    %rdi
  4007b3:	5a                   	pop    %rdx
  4007b4:	53                   	push   %rbx
  4007b5:	74 6c                	je     400823 <_init-0x34d>
  4007b7:	73 49                	jae    400802 <_init-0x36e>
  4007b9:	53                   	push   %rbx
  4007ba:	74 31                	je     4007ed <_init-0x383>
  4007bc:	31 63 68             	xor    %esp,0x68(%rbx)
  4007bf:	61                   	(bad)  
  4007c0:	72 5f                	jb     400821 <_init-0x34f>
  4007c2:	74 72                	je     400836 <_init-0x33a>
  4007c4:	61                   	(bad)  
  4007c5:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
  4007cc:	52 
  4007cd:	53                   	push   %rbx
  4007ce:	74 31                	je     400801 <_init-0x36f>
  4007d0:	33 62 61             	xor    0x61(%rdx),%esp
  4007d3:	73 69                	jae    40083e <_init-0x332>
  4007d5:	63 5f 6f             	movsxd 0x6f(%rdi),%ebx
  4007d8:	73 74                	jae    40084e <_init-0x322>
  4007da:	72 65                	jb     400841 <_init-0x32f>
  4007dc:	61                   	(bad)  
  4007dd:	6d                   	insl   (%dx),%es:(%rdi)
  4007de:	49 63 54 5f 45       	movslq 0x45(%r15,%rbx,2),%rdx
  4007e3:	53                   	push   %rbx
  4007e4:	35 5f 50 4b 63       	xor    $0x634b505f,%eax
  4007e9:	00 5f 5a             	add    %bl,0x5a(%rdi)
  4007ec:	53                   	push   %rbx
  4007ed:	74 34                	je     400823 <_init-0x34d>
  4007ef:	63 6f 75             	movsxd 0x75(%rdi),%ebp
  4007f2:	74 00                	je     4007f4 <_init-0x37c>
  4007f4:	6c                   	insb   (%dx),%es:(%rdi)
  4007f5:	69 62 67 63 63 5f 73 	imul   $0x735f6363,0x67(%rdx),%esp
  4007fc:	2e 73 6f             	jae,pn 40086e <_init-0x302>
  4007ff:	2e 31 00             	xor    %eax,%cs:(%rax)
  400802:	5f                   	pop    %rdi
  400803:	55                   	push   %rbp
  400804:	6e                   	outsb  %ds:(%rsi),(%dx)
  400805:	77 69                	ja     400870 <_init-0x300>
  400807:	6e                   	outsb  %ds:(%rsi),(%dx)
  400808:	64 5f                	fs pop %rdi
  40080a:	52                   	push   %rdx
  40080b:	65 73 75             	gs jae 400883 <_init-0x2ed>
  40080e:	6d                   	insl   (%dx),%es:(%rdi)
  40080f:	65 00 6c 69 62       	add    %ch,%gs:0x62(%rcx,%rbp,2)
  400814:	63 2e                	movsxd (%rsi),%ebp
  400816:	73 6f                	jae    400887 <_init-0x2e9>
  400818:	2e 36 00 70 75       	cs add %dh,%ss:0x75(%rax)
  40081d:	74 73                	je     400892 <_init-0x2de>
  40081f:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400822:	73 74                	jae    400898 <_init-0x2d8>
  400824:	61                   	(bad)  
  400825:	63 6b 5f             	movsxd 0x5f(%rbx),%ebp
  400828:	63 68 6b             	movsxd 0x6b(%rax),%ebp
  40082b:	5f                   	pop    %rdi
  40082c:	66 61                	data16 (bad) 
  40082e:	69 6c 00 5f 5f 63 78 	imul   $0x6178635f,0x5f(%rax,%rax,1),%ebp
  400835:	61 
  400836:	5f                   	pop    %rdi
  400837:	61                   	(bad)  
  400838:	74 65                	je     40089f <_init-0x2d1>
  40083a:	78 69                	js     4008a5 <_init-0x2cb>
  40083c:	74 00                	je     40083e <_init-0x332>
  40083e:	70 74                	jo     4008b4 <_init-0x2bc>
  400840:	72 61                	jb     4008a3 <_init-0x2cd>
  400842:	63 65 00             	movsxd 0x0(%rbp),%esp
  400845:	5f                   	pop    %rdi
  400846:	5f                   	pop    %rdi
  400847:	6c                   	insb   (%dx),%es:(%rdi)
  400848:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  40084f:	72 74                	jb     4008c5 <_init-0x2ab>
  400851:	5f                   	pop    %rdi
  400852:	6d                   	insl   (%dx),%es:(%rdi)
  400853:	61                   	(bad)  
  400854:	69 6e 00 47 43 43 5f 	imul   $0x5f434347,0x0(%rsi),%ebp
  40085b:	33 2e                	xor    (%rsi),%ebp
  40085d:	30 00                	xor    %al,(%rax)
  40085f:	43 58                	rex.XB pop %r8
  400861:	58                   	pop    %rax
  400862:	41                   	rex.B
  400863:	42                   	rex.X
  400864:	49 5f                	rex.WB pop %r15
  400866:	31 2e                	xor    %ebp,(%rsi)
  400868:	33 00                	xor    (%rax),%eax
  40086a:	47                   	rex.RXB
  40086b:	4c                   	rex.WR
  40086c:	49                   	rex.WB
  40086d:	42                   	rex.X
  40086e:	43 58                	rex.XB pop %r8
  400870:	58                   	pop    %rax
  400871:	5f                   	pop    %rdi
  400872:	33 2e                	xor    (%rsi),%ebp
  400874:	34 00                	xor    $0x0,%al
  400876:	47                   	rex.RXB
  400877:	4c                   	rex.WR
  400878:	49                   	rex.WB
  400879:	42                   	rex.X
  40087a:	43 58                	rex.XB pop %r8
  40087c:	58                   	pop    %rax
  40087d:	5f                   	pop    %rdi
  40087e:	33 2e                	xor    (%rsi),%ebp
  400880:	34 2e                	xor    $0x2e,%al
  400882:	32 31                	xor    (%rcx),%dh
  400884:	00 47 4c             	add    %al,0x4c(%rdi)
  400887:	49                   	rex.WB
  400888:	42                   	rex.X
  400889:	43 5f                	rex.XB pop %r15
  40088b:	32 2e                	xor    (%rsi),%ch
  40088d:	34 00                	xor    $0x0,%al
  40088f:	47                   	rex.RXB
  400890:	4c                   	rex.WR
  400891:	49                   	rex.WB
  400892:	42                   	rex.X
  400893:	43 5f                	rex.XB pop %r15
  400895:	32 2e                	xor    (%rsi),%ch
  400897:	32 2e                	xor    (%rsi),%ch
  400899:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

000000000040089c <.gnu.version>:
  40089c:	00 00                	add    %al,(%rax)
  40089e:	00 00                	add    %al,(%rax)
  4008a0:	00 00                	add    %al,(%rax)
  4008a2:	02 00                	add    (%rax),%al
  4008a4:	02 00                	add    (%rax),%al
  4008a6:	03 00                	add    (%rax),%eax
  4008a8:	04 00                	add    $0x0,%al
  4008aa:	02 00                	add    (%rax),%al
  4008ac:	02 00                	add    (%rax),%al
  4008ae:	00 00                	add    %al,(%rax)
  4008b0:	04 00                	add    $0x0,%al
  4008b2:	00 00                	add    %al,(%rax)
  4008b4:	03 00                	add    (%rax),%eax
  4008b6:	03 00                	add    (%rax),%eax
  4008b8:	02 00                	add    (%rax),%al
  4008ba:	05 00 04 00 03       	add    $0x3000400,%eax
  4008bf:	00 03                	add    %al,(%rbx)
  4008c1:	00 04 00             	add    %al,(%rax,%rax,1)
  4008c4:	07                   	(bad)  
  4008c5:	00 03                	add    %al,(%rbx)
  4008c7:	00 03                	add    %al,(%rbx)
  4008c9:	00 04 00             	add    %al,(%rax,%rax,1)
  4008cc:	04 00                	add    $0x0,%al
  4008ce:	06                   	(bad)  
	...

Disassembly of section .gnu.version_r:

00000000004008d0 <.gnu.version_r>:
  4008d0:	01 00                	add    %eax,(%rax)
  4008d2:	01 00                	add    %eax,(%rax)
  4008d4:	bc 02 00 00 10       	mov    $0x10000002,%esp
  4008d9:	00 00                	add    %al,(%rax)
  4008db:	00 20                	add    %ah,(%rax)
  4008dd:	00 00                	add    %al,(%rax)
  4008df:	00 50 26             	add    %dl,0x26(%rax)
  4008e2:	79 0b                	jns    4008ef <_init-0x281>
  4008e4:	00 00                	add    %al,(%rax)
  4008e6:	07                   	(bad)  
  4008e7:	00 1f                	add    %bl,(%rdi)
  4008e9:	03 00                	add    (%rax),%eax
  4008eb:	00 00                	add    %al,(%rax)
  4008ed:	00 00                	add    %al,(%rax)
  4008ef:	00 01                	add    %al,(%rcx)
  4008f1:	00 03                	add    %al,(%rbx)
  4008f3:	00 01                	add    %al,(%rcx)
  4008f5:	00 00                	add    %al,(%rax)
  4008f7:	00 10                	add    %dl,(%rax)
  4008f9:	00 00                	add    %al,(%rax)
  4008fb:	00 40 00             	add    %al,0x0(%rax)
  4008fe:	00 00                	add    %al,(%rax)
  400900:	d3 af 6b 05 00 00    	shrl   %cl,0x56b(%rdi)
  400906:	06                   	(bad)  
  400907:	00 27                	add    %ah,(%rdi)
  400909:	03 00                	add    (%rax),%eax
  40090b:	00 10                	add    %dl,(%rax)
  40090d:	00 00                	add    %al,(%rax)
  40090f:	00 74 29 92          	add    %dh,-0x6e(%rcx,%rbp,1)
  400913:	08 00                	or     %al,(%rax)
  400915:	00 04 00             	add    %al,(%rax,%rax,1)
  400918:	32 03                	xor    (%rbx),%al
  40091a:	00 00                	add    %al,(%rax)
  40091c:	10 00                	adc    %al,(%rax)
  40091e:	00 00                	add    %al,(%rax)
  400920:	71 f8                	jno    40091a <_init-0x256>
  400922:	97                   	xchg   %eax,%edi
  400923:	02 00                	add    (%rax),%al
  400925:	00 03                	add    %al,(%rbx)
  400927:	00 3e                	add    %bh,(%rsi)
  400929:	03 00                	add    (%rax),%eax
  40092b:	00 00                	add    %al,(%rax)
  40092d:	00 00                	add    %al,(%rax)
  40092f:	00 01                	add    %al,(%rcx)
  400931:	00 02                	add    %al,(%rdx)
  400933:	00 d9                	add    %bl,%cl
  400935:	02 00                	add    (%rax),%al
  400937:	00 10                	add    %dl,(%rax)
  400939:	00 00                	add    %al,(%rax)
  40093b:	00 00                	add    %al,(%rax)
  40093d:	00 00                	add    %al,(%rax)
  40093f:	00 14 69             	add    %dl,(%rcx,%rbp,2)
  400942:	69 0d 00 00 05 00 4d 	imul   $0x34d,0x50000(%rip),%ecx        # 45094c <__FRAME_END__+0x4f1ac>
  400949:	03 00 00 
  40094c:	10 00                	adc    %al,(%rax)
  40094e:	00 00                	add    %al,(%rax)
  400950:	75 1a                	jne    40096c <_init-0x204>
  400952:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  400958:	57                   	push   %rdi
  400959:	03 00                	add    (%rax),%eax
  40095b:	00 00                	add    %al,(%rax)
  40095d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400960 <.rela.dyn>:
  400960:	f8                   	clc    
  400961:	1f                   	(bad)  
  400962:	60                   	(bad)  
  400963:	00 00                	add    %al,(%rax)
  400965:	00 00                	add    %al,(%rax)
  400967:	00 06                	add    %al,(%rsi)
  400969:	00 00                	add    %al,(%rax)
  40096b:	00 01                	add    %al,(%rcx)
	...
  400975:	00 00                	add    %al,(%rax)
  400977:	00 80 21 60 00 00    	add    %al,0x6021(%rax)
  40097d:	00 00                	add    %al,(%rax)
  40097f:	00 05 00 00 00 18    	add    %al,0x18000000(%rip)        # 18400985 <_end+0x17dfe6ed>
	...

Disassembly of section .rela.plt:

0000000000400990 <.rela.plt>:
  400990:	18 20                	sbb    %ah,(%rax)
  400992:	60                   	(bad)  
  400993:	00 00                	add    %al,(%rax)
  400995:	00 00                	add    %al,(%rax)
  400997:	00 07                	add    %al,(%rdi)
  400999:	00 00                	add    %al,(%rax)
  40099b:	00 03                	add    %al,(%rbx)
	...
  4009a5:	00 00                	add    %al,(%rax)
  4009a7:	00 20                	add    %ah,(%rax)
  4009a9:	20 60 00             	and    %ah,0x0(%rax)
  4009ac:	00 00                	add    %al,(%rax)
  4009ae:	00 00                	add    %al,(%rax)
  4009b0:	07                   	(bad)  
  4009b1:	00 00                	add    %al,(%rax)
  4009b3:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  4009be:	00 00                	add    %al,(%rax)
  4009c0:	28 20                	sub    %ah,(%rax)
  4009c2:	60                   	(bad)  
  4009c3:	00 00                	add    %al,(%rax)
  4009c5:	00 00                	add    %al,(%rax)
  4009c7:	00 07                	add    %al,(%rdi)
  4009c9:	00 00                	add    %al,(%rax)
  4009cb:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4009d1 <_init-0x19f>
  4009d1:	00 00                	add    %al,(%rax)
  4009d3:	00 00                	add    %al,(%rax)
  4009d5:	00 00                	add    %al,(%rax)
  4009d7:	00 30                	add    %dh,(%rax)
  4009d9:	20 60 00             	and    %ah,0x0(%rax)
  4009dc:	00 00                	add    %al,(%rax)
  4009de:	00 00                	add    %al,(%rax)
  4009e0:	07                   	(bad)  
  4009e1:	00 00                	add    %al,(%rax)
  4009e3:	00 06                	add    %al,(%rsi)
	...
  4009ed:	00 00                	add    %al,(%rax)
  4009ef:	00 38                	add    %bh,(%rax)
  4009f1:	20 60 00             	and    %ah,0x0(%rax)
  4009f4:	00 00                	add    %al,(%rax)
  4009f6:	00 00                	add    %al,(%rax)
  4009f8:	07                   	(bad)  
  4009f9:	00 00                	add    %al,(%rax)
  4009fb:	00 07                	add    %al,(%rdi)
	...
  400a05:	00 00                	add    %al,(%rax)
  400a07:	00 40 20             	add    %al,0x20(%rax)
  400a0a:	60                   	(bad)  
  400a0b:	00 00                	add    %al,(%rax)
  400a0d:	00 00                	add    %al,(%rax)
  400a0f:	00 07                	add    %al,(%rdi)
  400a11:	00 00                	add    %al,(%rax)
  400a13:	00 08                	add    %cl,(%rax)
	...
  400a1d:	00 00                	add    %al,(%rax)
  400a1f:	00 48 20             	add    %cl,0x20(%rax)
  400a22:	60                   	(bad)  
  400a23:	00 00                	add    %al,(%rax)
  400a25:	00 00                	add    %al,(%rax)
  400a27:	00 07                	add    %al,(%rdi)
  400a29:	00 00                	add    %al,(%rax)
  400a2b:	00 17                	add    %dl,(%rdi)
	...
  400a35:	00 00                	add    %al,(%rax)
  400a37:	00 50 20             	add    %dl,0x20(%rax)
  400a3a:	60                   	(bad)  
  400a3b:	00 00                	add    %al,(%rax)
  400a3d:	00 00                	add    %al,(%rax)
  400a3f:	00 07                	add    %al,(%rdi)
  400a41:	00 00                	add    %al,(%rax)
  400a43:	00 0a                	add    %cl,(%rdx)
	...
  400a4d:	00 00                	add    %al,(%rax)
  400a4f:	00 58 20             	add    %bl,0x20(%rax)
  400a52:	60                   	(bad)  
  400a53:	00 00                	add    %al,(%rax)
  400a55:	00 00                	add    %al,(%rax)
  400a57:	00 07                	add    %al,(%rdi)
  400a59:	00 00                	add    %al,(%rax)
  400a5b:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
  400a66:	00 00                	add    %al,(%rax)
  400a68:	60                   	(bad)  
  400a69:	20 60 00             	and    %ah,0x0(%rax)
  400a6c:	00 00                	add    %al,(%rax)
  400a6e:	00 00                	add    %al,(%rax)
  400a70:	07                   	(bad)  
  400a71:	00 00                	add    %al,(%rax)
  400a73:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 400a79 <_init-0xf7>
  400a79:	00 00                	add    %al,(%rax)
  400a7b:	00 00                	add    %al,(%rax)
  400a7d:	00 00                	add    %al,(%rax)
  400a7f:	00 68 20             	add    %ch,0x20(%rax)
  400a82:	60                   	(bad)  
  400a83:	00 00                	add    %al,(%rax)
  400a85:	00 00                	add    %al,(%rax)
  400a87:	00 07                	add    %al,(%rdi)
  400a89:	00 00                	add    %al,(%rax)
  400a8b:	00 0e                	add    %cl,(%rsi)
	...
  400a95:	00 00                	add    %al,(%rax)
  400a97:	00 70 20             	add    %dh,0x20(%rax)
  400a9a:	60                   	(bad)  
  400a9b:	00 00                	add    %al,(%rax)
  400a9d:	00 00                	add    %al,(%rax)
  400a9f:	00 07                	add    %al,(%rdi)
  400aa1:	00 00                	add    %al,(%rax)
  400aa3:	00 0f                	add    %cl,(%rdi)
	...
  400aad:	00 00                	add    %al,(%rax)
  400aaf:	00 78 20             	add    %bh,0x20(%rax)
  400ab2:	60                   	(bad)  
  400ab3:	00 00                	add    %al,(%rax)
  400ab5:	00 00                	add    %al,(%rax)
  400ab7:	00 07                	add    %al,(%rdi)
  400ab9:	00 00                	add    %al,(%rax)
  400abb:	00 10                	add    %dl,(%rax)
	...
  400ac5:	00 00                	add    %al,(%rax)
  400ac7:	00 80 20 60 00 00    	add    %al,0x6020(%rax)
  400acd:	00 00                	add    %al,(%rax)
  400acf:	00 07                	add    %al,(%rdi)
  400ad1:	00 00                	add    %al,(%rax)
  400ad3:	00 11                	add    %dl,(%rcx)
	...
  400add:	00 00                	add    %al,(%rax)
  400adf:	00 88 20 60 00 00    	add    %cl,0x6020(%rax)
  400ae5:	00 00                	add    %al,(%rax)
  400ae7:	00 07                	add    %al,(%rdi)
  400ae9:	00 00                	add    %al,(%rax)
  400aeb:	00 12                	add    %dl,(%rdx)
	...
  400af5:	00 00                	add    %al,(%rax)
  400af7:	00 90 20 60 00 00    	add    %dl,0x6020(%rax)
  400afd:	00 00                	add    %al,(%rax)
  400aff:	00 07                	add    %al,(%rdi)
  400b01:	00 00                	add    %al,(%rax)
  400b03:	00 13                	add    %dl,(%rbx)
	...
  400b0d:	00 00                	add    %al,(%rax)
  400b0f:	00 98 20 60 00 00    	add    %bl,0x6020(%rax)
  400b15:	00 00                	add    %al,(%rax)
  400b17:	00 07                	add    %al,(%rdi)
  400b19:	00 00                	add    %al,(%rax)
  400b1b:	00 19                	add    %bl,(%rcx)
	...
  400b25:	00 00                	add    %al,(%rax)
  400b27:	00 a0 20 60 00 00    	add    %ah,0x6020(%rax)
  400b2d:	00 00                	add    %al,(%rax)
  400b2f:	00 07                	add    %al,(%rdi)
  400b31:	00 00                	add    %al,(%rax)
  400b33:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
  400b3e:	00 00                	add    %al,(%rax)
  400b40:	a8 20                	test   $0x20,%al
  400b42:	60                   	(bad)  
  400b43:	00 00                	add    %al,(%rax)
  400b45:	00 00                	add    %al,(%rax)
  400b47:	00 07                	add    %al,(%rdi)
  400b49:	00 00                	add    %al,(%rax)
  400b4b:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 400b51 <_init-0x1f>
  400b51:	00 00                	add    %al,(%rax)
  400b53:	00 00                	add    %al,(%rax)
  400b55:	00 00                	add    %al,(%rax)
  400b57:	00 b0 20 60 00 00    	add    %dh,0x6020(%rax)
  400b5d:	00 00                	add    %al,(%rax)
  400b5f:	00 07                	add    %al,(%rdi)
  400b61:	00 00                	add    %al,(%rax)
  400b63:	00 16                	add    %dl,(%rsi)
	...

Disassembly of section .init:

0000000000400b70 <_init>:
  400b70:	48 83 ec 08          	sub    $0x8,%rsp
  400b74:	48 8b 05 7d 14 20 00 	mov    0x20147d(%rip),%rax        # 601ff8 <__gmon_start__>
  400b7b:	48 85 c0             	test   %rax,%rax
  400b7e:	74 05                	je     400b85 <_init+0x15>
  400b80:	e8 5b 01 00 00       	callq  400ce0 <__gmon_start__@plt>
  400b85:	48 83 c4 08          	add    $0x8,%rsp
  400b89:	c3                   	retq   

Disassembly of section .plt:

0000000000400b90 <.plt>:
  400b90:	ff 35 72 14 20 00    	pushq  0x201472(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b96:	ff 25 74 14 20 00    	jmpq   *0x201474(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ba0 <puts@plt>:
  400ba0:	ff 25 72 14 20 00    	jmpq   *0x201472(%rip)        # 602018 <puts@GLIBC_2.2.5>
  400ba6:	68 00 00 00 00       	pushq  $0x0
  400bab:	e9 e0 ff ff ff       	jmpq   400b90 <.plt>

0000000000400bb0 <exit@plt>:
  400bb0:	ff 25 6a 14 20 00    	jmpq   *0x20146a(%rip)        # 602020 <exit@GLIBC_2.2.5>
  400bb6:	68 01 00 00 00       	pushq  $0x1
  400bbb:	e9 d0 ff ff ff       	jmpq   400b90 <.plt>

0000000000400bc0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@plt>:
  400bc0:	ff 25 62 14 20 00    	jmpq   *0x201462(%rip)        # 602028 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@GLIBCXX_3.4.21>
  400bc6:	68 02 00 00 00       	pushq  $0x2
  400bcb:	e9 c0 ff ff ff       	jmpq   400b90 <.plt>

0000000000400bd0 <_ZNSt8ios_base4InitC1Ev@plt>:
  400bd0:	ff 25 5a 14 20 00    	jmpq   *0x20145a(%rip)        # 602030 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  400bd6:	68 03 00 00 00       	pushq  $0x3
  400bdb:	e9 b0 ff ff ff       	jmpq   400b90 <.plt>

0000000000400be0 <__libc_start_main@plt>:
  400be0:	ff 25 52 14 20 00    	jmpq   *0x201452(%rip)        # 602038 <__libc_start_main@GLIBC_2.2.5>
  400be6:	68 04 00 00 00       	pushq  $0x4
  400beb:	e9 a0 ff ff ff       	jmpq   400b90 <.plt>

0000000000400bf0 <__cxa_atexit@plt>:
  400bf0:	ff 25 4a 14 20 00    	jmpq   *0x20144a(%rip)        # 602040 <__cxa_atexit@GLIBC_2.2.5>
  400bf6:	68 05 00 00 00       	pushq  $0x5
  400bfb:	e9 90 ff ff ff       	jmpq   400b90 <.plt>

0000000000400c00 <_ZNSt8ios_base4InitD1Ev@plt>:
  400c00:	ff 25 42 14 20 00    	jmpq   *0x201442(%rip)        # 602048 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  400c06:	68 06 00 00 00       	pushq  $0x6
  400c0b:	e9 80 ff ff ff       	jmpq   400b90 <.plt>

0000000000400c10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  400c10:	ff 25 3a 14 20 00    	jmpq   *0x20143a(%rip)        # 602050 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  400c16:	68 07 00 00 00       	pushq  $0x7
  400c1b:	e9 70 ff ff ff       	jmpq   400b90 <.plt>

0000000000400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>:
  400c20:	ff 25 32 14 20 00    	jmpq   *0x201432(%rip)        # 602058 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GLIBCXX_3.4.21>
  400c26:	68 08 00 00 00       	pushq  $0x8
  400c2b:	e9 60 ff ff ff       	jmpq   400b90 <.plt>

0000000000400c30 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_@plt>:
  400c30:	ff 25 2a 14 20 00    	jmpq   *0x20142a(%rip)        # 602060 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_@GLIBCXX_3.4.21>
  400c36:	68 09 00 00 00       	pushq  $0x9
  400c3b:	e9 50 ff ff ff       	jmpq   400b90 <.plt>

0000000000400c40 <ptrace@plt>:
  400c40:	ff 25 22 14 20 00    	jmpq   *0x201422(%rip)        # 602068 <ptrace@GLIBC_2.2.5>
  400c46:	68 0a 00 00 00       	pushq  $0xa
  400c4b:	e9 40 ff ff ff       	jmpq   400b90 <.plt>

0000000000400c50 <__stack_chk_fail@plt>:
  400c50:	ff 25 1a 14 20 00    	jmpq   *0x20141a(%rip)        # 602070 <__stack_chk_fail@GLIBC_2.4>
  400c56:	68 0b 00 00 00       	pushq  $0xb
  400c5b:	e9 30 ff ff ff       	jmpq   400b90 <.plt>

0000000000400c60 <_ZNSaIcED1Ev@plt>:
  400c60:	ff 25 12 14 20 00    	jmpq   *0x201412(%rip)        # 602078 <_ZNSaIcED1Ev@GLIBCXX_3.4>
  400c66:	68 0c 00 00 00       	pushq  $0xc
  400c6b:	e9 20 ff ff ff       	jmpq   400b90 <.plt>

0000000000400c70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@plt>:
  400c70:	ff 25 0a 14 20 00    	jmpq   *0x20140a(%rip)        # 602080 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@GLIBCXX_3.4.21>
  400c76:	68 0d 00 00 00       	pushq  $0xd
  400c7b:	e9 10 ff ff ff       	jmpq   400b90 <.plt>

0000000000400c80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>:
  400c80:	ff 25 02 14 20 00    	jmpq   *0x201402(%rip)        # 602088 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@GLIBCXX_3.4.21>
  400c86:	68 0e 00 00 00       	pushq  $0xe
  400c8b:	e9 00 ff ff ff       	jmpq   400b90 <.plt>

0000000000400c90 <_ZNSaIcEC1Ev@plt>:
  400c90:	ff 25 fa 13 20 00    	jmpq   *0x2013fa(%rip)        # 602090 <_ZNSaIcEC1Ev@GLIBCXX_3.4>
  400c96:	68 0f 00 00 00       	pushq  $0xf
  400c9b:	e9 f0 fe ff ff       	jmpq   400b90 <.plt>

0000000000400ca0 <__gxx_personality_v0@plt>:
  400ca0:	ff 25 f2 13 20 00    	jmpq   *0x2013f2(%rip)        # 602098 <__gxx_personality_v0@CXXABI_1.3>
  400ca6:	68 10 00 00 00       	pushq  $0x10
  400cab:	e9 e0 fe ff ff       	jmpq   400b90 <.plt>

0000000000400cb0 <_Unwind_Resume@plt>:
  400cb0:	ff 25 ea 13 20 00    	jmpq   *0x2013ea(%rip)        # 6020a0 <_Unwind_Resume@GCC_3.0>
  400cb6:	68 11 00 00 00       	pushq  $0x11
  400cbb:	e9 d0 fe ff ff       	jmpq   400b90 <.plt>

0000000000400cc0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@plt>:
  400cc0:	ff 25 e2 13 20 00    	jmpq   *0x2013e2(%rip)        # 6020a8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@GLIBCXX_3.4.21>
  400cc6:	68 12 00 00 00       	pushq  $0x12
  400ccb:	e9 c0 fe ff ff       	jmpq   400b90 <.plt>

0000000000400cd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc@plt>:
  400cd0:	ff 25 da 13 20 00    	jmpq   *0x2013da(%rip)        # 6020b0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc@GLIBCXX_3.4.21>
  400cd6:	68 13 00 00 00       	pushq  $0x13
  400cdb:	e9 b0 fe ff ff       	jmpq   400b90 <.plt>

Disassembly of section .plt.got:

0000000000400ce0 <__gmon_start__@plt>:
  400ce0:	ff 25 12 13 20 00    	jmpq   *0x201312(%rip)        # 601ff8 <__gmon_start__>
  400ce6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400cf0 <_start>:
  400cf0:	31 ed                	xor    %ebp,%ebp
  400cf2:	49 89 d1             	mov    %rdx,%r9
  400cf5:	5e                   	pop    %rsi
  400cf6:	48 89 e2             	mov    %rsp,%rdx
  400cf9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400cfd:	50                   	push   %rax
  400cfe:	54                   	push   %rsp
  400cff:	49 c7 c0 50 15 40 00 	mov    $0x401550,%r8
  400d06:	48 c7 c1 e0 14 40 00 	mov    $0x4014e0,%rcx
  400d0d:	48 c7 c7 2c 0f 40 00 	mov    $0x400f2c,%rdi
  400d14:	e8 c7 fe ff ff       	callq  400be0 <__libc_start_main@plt>
  400d19:	f4                   	hlt    
  400d1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400d20 <deregister_tm_clones>:
  400d20:	b8 77 21 60 00       	mov    $0x602177,%eax
  400d25:	55                   	push   %rbp
  400d26:	48 2d 70 21 60 00    	sub    $0x602170,%rax
  400d2c:	48 83 f8 0e          	cmp    $0xe,%rax
  400d30:	48 89 e5             	mov    %rsp,%rbp
  400d33:	76 1b                	jbe    400d50 <deregister_tm_clones+0x30>
  400d35:	b8 00 00 00 00       	mov    $0x0,%eax
  400d3a:	48 85 c0             	test   %rax,%rax
  400d3d:	74 11                	je     400d50 <deregister_tm_clones+0x30>
  400d3f:	5d                   	pop    %rbp
  400d40:	bf 70 21 60 00       	mov    $0x602170,%edi
  400d45:	ff e0                	jmpq   *%rax
  400d47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400d4e:	00 00 
  400d50:	5d                   	pop    %rbp
  400d51:	c3                   	retq   
  400d52:	0f 1f 40 00          	nopl   0x0(%rax)
  400d56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400d5d:	00 00 00 

0000000000400d60 <register_tm_clones>:
  400d60:	be 70 21 60 00       	mov    $0x602170,%esi
  400d65:	55                   	push   %rbp
  400d66:	48 81 ee 70 21 60 00 	sub    $0x602170,%rsi
  400d6d:	48 c1 fe 03          	sar    $0x3,%rsi
  400d71:	48 89 e5             	mov    %rsp,%rbp
  400d74:	48 89 f0             	mov    %rsi,%rax
  400d77:	48 c1 e8 3f          	shr    $0x3f,%rax
  400d7b:	48 01 c6             	add    %rax,%rsi
  400d7e:	48 d1 fe             	sar    %rsi
  400d81:	74 15                	je     400d98 <register_tm_clones+0x38>
  400d83:	b8 00 00 00 00       	mov    $0x0,%eax
  400d88:	48 85 c0             	test   %rax,%rax
  400d8b:	74 0b                	je     400d98 <register_tm_clones+0x38>
  400d8d:	5d                   	pop    %rbp
  400d8e:	bf 70 21 60 00       	mov    $0x602170,%edi
  400d93:	ff e0                	jmpq   *%rax
  400d95:	0f 1f 00             	nopl   (%rax)
  400d98:	5d                   	pop    %rbp
  400d99:	c3                   	retq   
  400d9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400da0 <__do_global_dtors_aux>:
  400da0:	80 3d e9 14 20 00 00 	cmpb   $0x0,0x2014e9(%rip)        # 602290 <completed.7594>
  400da7:	75 11                	jne    400dba <__do_global_dtors_aux+0x1a>
  400da9:	55                   	push   %rbp
  400daa:	48 89 e5             	mov    %rsp,%rbp
  400dad:	e8 6e ff ff ff       	callq  400d20 <deregister_tm_clones>
  400db2:	5d                   	pop    %rbp
  400db3:	c6 05 d6 14 20 00 01 	movb   $0x1,0x2014d6(%rip)        # 602290 <completed.7594>
  400dba:	f3 c3                	repz retq 
  400dbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400dc0 <frame_dummy>:
  400dc0:	bf 00 1e 60 00       	mov    $0x601e00,%edi
  400dc5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400dc9:	75 05                	jne    400dd0 <frame_dummy+0x10>
  400dcb:	eb 93                	jmp    400d60 <register_tm_clones>
  400dcd:	0f 1f 00             	nopl   (%rax)
  400dd0:	b8 00 00 00 00       	mov    $0x0,%eax
  400dd5:	48 85 c0             	test   %rax,%rax
  400dd8:	74 f1                	je     400dcb <frame_dummy+0xb>
  400dda:	55                   	push   %rbp
  400ddb:	48 89 e5             	mov    %rsp,%rbp
  400dde:	ff d0                	callq  *%rax
  400de0:	5d                   	pop    %rbp
  400de1:	e9 7a ff ff ff       	jmpq   400d60 <register_tm_clones>

0000000000400de6 <_Z7rahasyaNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_>:
  400de6:	55                   	push   %rbp
  400de7:	48 89 e5             	mov    %rsp,%rbp
  400dea:	53                   	push   %rbx
  400deb:	48 83 ec 38          	sub    $0x38,%rsp
  400def:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400df3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  400df7:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  400dfb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400e02:	00 00 
  400e04:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  400e08:	31 c0                	xor    %eax,%eax
  400e0a:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400e0e:	48 89 c7             	mov    %rax,%rdi
  400e11:	e8 7a fe ff ff       	callq  400c90 <_ZNSaIcEC1Ev@plt>
  400e16:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  400e1a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400e1e:	be 64 15 40 00       	mov    $0x401564,%esi
  400e23:	48 89 c7             	mov    %rax,%rdi
  400e26:	e8 55 fe ff ff       	callq  400c80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
  400e2b:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400e2f:	48 89 c7             	mov    %rax,%rdi
  400e32:	e8 29 fe ff ff       	callq  400c60 <_ZNSaIcED1Ev@plt>
  400e37:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  400e3e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400e41:	48 63 d0             	movslq %eax,%rdx
  400e44:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400e48:	48 89 d6             	mov    %rdx,%rsi
  400e4b:	48 89 c7             	mov    %rax,%rdi
  400e4e:	e8 6d fe ff ff       	callq  400cc0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@plt>
  400e53:	0f b6 00             	movzbl (%rax),%eax
  400e56:	84 c0                	test   %al,%al
  400e58:	0f 95 c0             	setne  %al
  400e5b:	84 c0                	test   %al,%al
  400e5d:	0f 84 a9 00 00 00    	je     400f0c <_Z7rahasyaNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_+0x126>
  400e63:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400e66:	48 63 d0             	movslq %eax,%rdx
  400e69:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400e6d:	48 89 d6             	mov    %rdx,%rsi
  400e70:	48 89 c7             	mov    %rax,%rdi
  400e73:	e8 48 fe ff ff       	callq  400cc0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@plt>
  400e78:	0f b6 00             	movzbl (%rax),%eax
  400e7b:	88 45 e1             	mov    %al,-0x1f(%rbp)
  400e7e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400e81:	48 63 d8             	movslq %eax,%rbx
  400e84:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400e88:	48 89 c7             	mov    %rax,%rdi
  400e8b:	e8 30 fd ff ff       	callq  400bc0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv@plt>
  400e90:	48 89 c1             	mov    %rax,%rcx
  400e93:	48 89 d8             	mov    %rbx,%rax
  400e96:	ba 00 00 00 00       	mov    $0x0,%edx
  400e9b:	48 f7 f1             	div    %rcx
  400e9e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  400ea2:	48 89 d6             	mov    %rdx,%rsi
  400ea5:	48 89 c7             	mov    %rax,%rdi
  400ea8:	e8 13 fe ff ff       	callq  400cc0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@plt>
  400ead:	0f b6 00             	movzbl (%rax),%eax
  400eb0:	88 45 e2             	mov    %al,-0x1e(%rbp)
  400eb3:	0f b6 45 e1          	movzbl -0x1f(%rbp),%eax
  400eb7:	32 45 e2             	xor    -0x1e(%rbp),%al
  400eba:	88 45 e3             	mov    %al,-0x1d(%rbp)
  400ebd:	0f be 55 e3          	movsbl -0x1d(%rbp),%edx
  400ec1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400ec5:	89 d6                	mov    %edx,%esi
  400ec7:	48 89 c7             	mov    %rax,%rdi
  400eca:	e8 01 fe ff ff       	callq  400cd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc@plt>
  400ecf:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
  400ed3:	e9 66 ff ff ff       	jmpq   400e3e <_Z7rahasyaNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_+0x58>
  400ed8:	48 89 c3             	mov    %rax,%rbx
  400edb:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400edf:	48 89 c7             	mov    %rax,%rdi
  400ee2:	e8 79 fd ff ff       	callq  400c60 <_ZNSaIcED1Ev@plt>
  400ee7:	48 89 d8             	mov    %rbx,%rax
  400eea:	48 89 c7             	mov    %rax,%rdi
  400eed:	e8 be fd ff ff       	callq  400cb0 <_Unwind_Resume@plt>
  400ef2:	48 89 c3             	mov    %rax,%rbx
  400ef5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400ef9:	48 89 c7             	mov    %rax,%rdi
  400efc:	e8 1f fd ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  400f01:	48 89 d8             	mov    %rbx,%rax
  400f04:	48 89 c7             	mov    %rax,%rdi
  400f07:	e8 a4 fd ff ff       	callq  400cb0 <_Unwind_Resume@plt>
  400f0c:	90                   	nop
  400f0d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400f11:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  400f15:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  400f1c:	00 00 
  400f1e:	74 05                	je     400f25 <_Z7rahasyaNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_+0x13f>
  400f20:	e8 2b fd ff ff       	callq  400c50 <__stack_chk_fail@plt>
  400f25:	48 83 c4 38          	add    $0x38,%rsp
  400f29:	5b                   	pop    %rbx
  400f2a:	5d                   	pop    %rbp
  400f2b:	c3                   	retq   

0000000000400f2c <main>:
  400f2c:	55                   	push   %rbp
  400f2d:	48 89 e5             	mov    %rsp,%rbp
  400f30:	41 56                	push   %r14
  400f32:	41 55                	push   %r13
  400f34:	41 54                	push   %r12
  400f36:	53                   	push   %rbx
  400f37:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  400f3e:	89 bd cc fe ff ff    	mov    %edi,-0x134(%rbp)
  400f44:	48 89 b5 c0 fe ff ff 	mov    %rsi,-0x140(%rbp)
  400f4b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400f52:	00 00 
  400f54:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  400f58:	31 c0                	xor    %eax,%eax
  400f5a:	48 89 e0             	mov    %rsp,%rax
  400f5d:	49 89 c4             	mov    %rax,%r12
  400f60:	83 bd cc fe ff ff 02 	cmpl   $0x2,-0x134(%rbp)
  400f67:	74 19                	je     400f82 <main+0x56>
  400f69:	be 65 15 40 00       	mov    $0x401565,%esi
  400f6e:	bf 80 21 60 00       	mov    $0x602180,%edi
  400f73:	e8 98 fc ff ff       	callq  400c10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400f78:	bf 00 00 00 00       	mov    $0x0,%edi
  400f7d:	e8 2e fc ff ff       	callq  400bb0 <exit@plt>
  400f82:	c7 85 e0 fe ff ff 00 	movl   $0x0,-0x120(%rbp)
  400f89:	00 00 00 
  400f8c:	b9 00 00 00 00       	mov    $0x0,%ecx
  400f91:	ba 01 00 00 00       	mov    $0x1,%edx
  400f96:	be 00 00 00 00       	mov    $0x0,%esi
  400f9b:	bf 00 00 00 00       	mov    $0x0,%edi
  400fa0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fa5:	e8 96 fc ff ff       	callq  400c40 <ptrace@plt>
  400faa:	48 85 c0             	test   %rax,%rax
  400fad:	0f 94 c0             	sete   %al
  400fb0:	84 c0                	test   %al,%al
  400fb2:	74 0a                	je     400fbe <main+0x92>
  400fb4:	c7 85 e0 fe ff ff 02 	movl   $0x2,-0x120(%rbp)
  400fbb:	00 00 00 
  400fbe:	b9 00 00 00 00       	mov    $0x0,%ecx
  400fc3:	ba 01 00 00 00       	mov    $0x1,%edx
  400fc8:	be 00 00 00 00       	mov    $0x0,%esi
  400fcd:	bf 00 00 00 00       	mov    $0x0,%edi
  400fd2:	b8 00 00 00 00       	mov    $0x0,%eax
  400fd7:	e8 64 fc ff ff       	callq  400c40 <ptrace@plt>
  400fdc:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400fe0:	0f 94 c0             	sete   %al
  400fe3:	84 c0                	test   %al,%al
  400fe5:	74 12                	je     400ff9 <main+0xcd>
  400fe7:	8b 95 e0 fe ff ff    	mov    -0x120(%rbp),%edx
  400fed:	89 d0                	mov    %edx,%eax
  400fef:	01 c0                	add    %eax,%eax
  400ff1:	01 d0                	add    %edx,%eax
  400ff3:	89 85 e0 fe ff ff    	mov    %eax,-0x120(%rbp)
  400ff9:	83 bd e0 fe ff ff 06 	cmpl   $0x6,-0x120(%rbp)
  401000:	74 14                	je     401016 <main+0xea>
  401002:	bf 7c 15 40 00       	mov    $0x40157c,%edi
  401007:	e8 94 fb ff ff       	callq  400ba0 <puts@plt>
  40100c:	bf 00 00 00 00       	mov    $0x0,%edi
  401011:	e8 9a fb ff ff       	callq  400bb0 <exit@plt>
  401016:	48 8d 85 df fe ff ff 	lea    -0x121(%rbp),%rax
  40101d:	48 89 c7             	mov    %rax,%rdi
  401020:	e8 6b fc ff ff       	callq  400c90 <_ZNSaIcEC1Ev@plt>
  401025:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
  40102c:	48 83 c0 08          	add    $0x8,%rax
  401030:	48 8b 08             	mov    (%rax),%rcx
  401033:	48 8d 95 df fe ff ff 	lea    -0x121(%rbp),%rdx
  40103a:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
  401041:	48 89 ce             	mov    %rcx,%rsi
  401044:	48 89 c7             	mov    %rax,%rdi
  401047:	e8 34 fc ff ff       	callq  400c80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
  40104c:	48 8d 85 df fe ff ff 	lea    -0x121(%rbp),%rax
  401053:	48 89 c7             	mov    %rax,%rdi
  401056:	e8 05 fc ff ff       	callq  400c60 <_ZNSaIcED1Ev@plt>
  40105b:	b8 1a 00 00 00       	mov    $0x1a,%eax
  401060:	89 85 ec fe ff ff    	mov    %eax,-0x114(%rbp)
  401066:	8b 85 ec fe ff ff    	mov    -0x114(%rbp),%eax
  40106c:	83 c0 01             	add    $0x1,%eax
  40106f:	48 98                	cltq   
  401071:	48 83 e8 01          	sub    $0x1,%rax
  401075:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
  40107c:	48 89 c2             	mov    %rax,%rdx
  40107f:	48 83 c2 01          	add    $0x1,%rdx
  401083:	48 89 95 b0 fe ff ff 	mov    %rdx,-0x150(%rbp)
  40108a:	48 c7 85 b8 fe ff ff 	movq   $0x0,-0x148(%rbp)
  401091:	00 00 00 00 
  401095:	48 89 c2             	mov    %rax,%rdx
  401098:	48 83 c2 01          	add    $0x1,%rdx
  40109c:	48 89 95 a0 fe ff ff 	mov    %rdx,-0x160(%rbp)
  4010a3:	48 c7 85 a8 fe ff ff 	movq   $0x0,-0x158(%rbp)
  4010aa:	00 00 00 00 
  4010ae:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4010b2:	b8 10 00 00 00       	mov    $0x10,%eax
  4010b7:	48 83 e8 01          	sub    $0x1,%rax
  4010bb:	48 01 d0             	add    %rdx,%rax
  4010be:	b9 10 00 00 00       	mov    $0x10,%ecx
  4010c3:	ba 00 00 00 00       	mov    $0x0,%edx
  4010c8:	48 f7 f1             	div    %rcx
  4010cb:	48 6b c0 10          	imul   $0x10,%rax,%rax
  4010cf:	48 29 c4             	sub    %rax,%rsp
  4010d2:	48 89 e0             	mov    %rsp,%rax
  4010d5:	48 83 c0 00          	add    $0x0,%rax
  4010d9:	48 89 85 f8 fe ff ff 	mov    %rax,-0x108(%rbp)
  4010e0:	c7 85 e4 fe ff ff 00 	movl   $0x0,-0x11c(%rbp)
  4010e7:	00 00 00 
  4010ea:	8b 85 e4 fe ff ff    	mov    -0x11c(%rbp),%eax
  4010f0:	3b 85 ec fe ff ff    	cmp    -0x114(%rbp),%eax
  4010f6:	7d 2c                	jge    401124 <main+0x1f8>
  4010f8:	8b 85 e4 fe ff ff    	mov    -0x11c(%rbp),%eax
  4010fe:	48 98                	cltq   
  401100:	8b 04 85 e0 20 60 00 	mov    0x6020e0(,%rax,4),%eax
  401107:	89 c1                	mov    %eax,%ecx
  401109:	48 8b 95 f8 fe ff ff 	mov    -0x108(%rbp),%rdx
  401110:	8b 85 e4 fe ff ff    	mov    -0x11c(%rbp),%eax
  401116:	48 98                	cltq   
  401118:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
  40111b:	83 85 e4 fe ff ff 01 	addl   $0x1,-0x11c(%rbp)
  401122:	eb c6                	jmp    4010ea <main+0x1be>
  401124:	48 8b 95 f8 fe ff ff 	mov    -0x108(%rbp),%rdx
  40112b:	8b 85 ec fe ff ff    	mov    -0x114(%rbp),%eax
  401131:	48 98                	cltq   
  401133:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401137:	48 8d 85 df fe ff ff 	lea    -0x121(%rbp),%rax
  40113e:	48 89 c7             	mov    %rax,%rdi
  401141:	e8 4a fb ff ff       	callq  400c90 <_ZNSaIcEC1Ev@plt>
  401146:	48 8b 8d f8 fe ff ff 	mov    -0x108(%rbp),%rcx
  40114d:	48 8d 95 df fe ff ff 	lea    -0x121(%rbp),%rdx
  401154:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  40115b:	48 89 ce             	mov    %rcx,%rsi
  40115e:	48 89 c7             	mov    %rax,%rdi
  401161:	e8 1a fb ff ff       	callq  400c80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
  401166:	48 8d 85 df fe ff ff 	lea    -0x121(%rbp),%rax
  40116d:	48 89 c7             	mov    %rax,%rdi
  401170:	e8 eb fa ff ff       	callq  400c60 <_ZNSaIcED1Ev@plt>
  401175:	b8 07 00 00 00       	mov    $0x7,%eax
  40117a:	89 85 ec fe ff ff    	mov    %eax,-0x114(%rbp)
  401180:	8b 85 ec fe ff ff    	mov    -0x114(%rbp),%eax
  401186:	83 c0 01             	add    $0x1,%eax
  401189:	48 98                	cltq   
  40118b:	48 83 e8 01          	sub    $0x1,%rax
  40118f:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
  401196:	48 89 c2             	mov    %rax,%rdx
  401199:	48 83 c2 01          	add    $0x1,%rdx
  40119d:	48 89 95 90 fe ff ff 	mov    %rdx,-0x170(%rbp)
  4011a4:	48 c7 85 98 fe ff ff 	movq   $0x0,-0x168(%rbp)
  4011ab:	00 00 00 00 
  4011af:	48 89 c2             	mov    %rax,%rdx
  4011b2:	48 83 c2 01          	add    $0x1,%rdx
  4011b6:	49 89 d5             	mov    %rdx,%r13
  4011b9:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4011bf:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4011c3:	b8 10 00 00 00       	mov    $0x10,%eax
  4011c8:	48 83 e8 01          	sub    $0x1,%rax
  4011cc:	48 01 d0             	add    %rdx,%rax
  4011cf:	be 10 00 00 00       	mov    $0x10,%esi
  4011d4:	ba 00 00 00 00       	mov    $0x0,%edx
  4011d9:	48 f7 f6             	div    %rsi
  4011dc:	48 6b c0 10          	imul   $0x10,%rax,%rax
  4011e0:	48 29 c4             	sub    %rax,%rsp
  4011e3:	48 89 e0             	mov    %rsp,%rax
  4011e6:	48 83 c0 00          	add    $0x0,%rax
  4011ea:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
  4011f1:	c7 85 e8 fe ff ff 00 	movl   $0x0,-0x118(%rbp)
  4011f8:	00 00 00 
  4011fb:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
  401201:	3b 85 ec fe ff ff    	cmp    -0x114(%rbp),%eax
  401207:	7d 2c                	jge    401235 <main+0x309>
  401209:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
  40120f:	48 98                	cltq   
  401211:	8b 04 85 50 21 60 00 	mov    0x602150(,%rax,4),%eax
  401218:	89 c1                	mov    %eax,%ecx
  40121a:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
  401221:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
  401227:	48 98                	cltq   
  401229:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
  40122c:	83 85 e8 fe ff ff 01 	addl   $0x1,-0x118(%rbp)
  401233:	eb c6                	jmp    4011fb <main+0x2cf>
  401235:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
  40123c:	8b 85 ec fe ff ff    	mov    -0x114(%rbp),%eax
  401242:	48 98                	cltq   
  401244:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401248:	48 8d 85 df fe ff ff 	lea    -0x121(%rbp),%rax
  40124f:	48 89 c7             	mov    %rax,%rdi
  401252:	e8 39 fa ff ff       	callq  400c90 <_ZNSaIcEC1Ev@plt>
  401257:	48 8b 8d 08 ff ff ff 	mov    -0xf8(%rbp),%rcx
  40125e:	48 8d 95 df fe ff ff 	lea    -0x121(%rbp),%rdx
  401265:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  40126c:	48 89 ce             	mov    %rcx,%rsi
  40126f:	48 89 c7             	mov    %rax,%rdi
  401272:	e8 09 fa ff ff       	callq  400c80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@plt>
  401277:	48 8d 85 df fe ff ff 	lea    -0x121(%rbp),%rax
  40127e:	48 89 c7             	mov    %rax,%rdi
  401281:	e8 da f9 ff ff       	callq  400c60 <_ZNSaIcED1Ev@plt>
  401286:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
  40128d:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  401291:	48 89 d6             	mov    %rdx,%rsi
  401294:	48 89 c7             	mov    %rax,%rdi
  401297:	e8 d4 f9 ff ff       	callq  400c70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@plt>
  40129c:	48 8d 95 50 ff ff ff 	lea    -0xb0(%rbp),%rdx
  4012a3:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  4012a7:	48 89 d6             	mov    %rdx,%rsi
  4012aa:	48 89 c7             	mov    %rax,%rdi
  4012ad:	e8 be f9 ff ff       	callq  400c70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_@plt>
  4012b2:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  4012b9:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
  4012bd:	48 8d 4d 90          	lea    -0x70(%rbp),%rcx
  4012c1:	48 89 ce             	mov    %rcx,%rsi
  4012c4:	48 89 c7             	mov    %rax,%rdi
  4012c7:	e8 1a fb ff ff       	callq  400de6 <_Z7rahasyaNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_>
  4012cc:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  4012d0:	48 89 c7             	mov    %rax,%rdi
  4012d3:	e8 48 f9 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  4012d8:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  4012dc:	48 89 c7             	mov    %rax,%rdi
  4012df:	e8 3c f9 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  4012e4:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
  4012eb:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  4012f2:	48 89 d6             	mov    %rdx,%rsi
  4012f5:	48 89 c7             	mov    %rax,%rdi
  4012f8:	e8 33 f9 ff ff       	callq  400c30 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_@plt>
  4012fd:	85 c0                	test   %eax,%eax
  4012ff:	0f 94 c0             	sete   %al
  401302:	84 c0                	test   %al,%al
  401304:	74 11                	je     401317 <main+0x3eb>
  401306:	be 9a 15 40 00       	mov    $0x40159a,%esi
  40130b:	bf 80 21 60 00       	mov    $0x602180,%edi
  401310:	e8 fb f8 ff ff       	callq  400c10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401315:	eb 0f                	jmp    401326 <main+0x3fa>
  401317:	be b0 15 40 00       	mov    $0x4015b0,%esi
  40131c:	bf 80 21 60 00       	mov    $0x602180,%edi
  401321:	e8 ea f8 ff ff       	callq  400c10 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401326:	bb 00 00 00 00       	mov    $0x0,%ebx
  40132b:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  401332:	48 89 c7             	mov    %rax,%rdi
  401335:	e8 e6 f8 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  40133a:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  401341:	48 89 c7             	mov    %rax,%rdi
  401344:	e8 d7 f8 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  401349:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  401350:	48 89 c7             	mov    %rax,%rdi
  401353:	e8 c8 f8 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  401358:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
  40135f:	48 89 c7             	mov    %rax,%rdi
  401362:	e8 b9 f8 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  401367:	4c 89 e4             	mov    %r12,%rsp
  40136a:	89 d8                	mov    %ebx,%eax
  40136c:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  401370:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401377:	00 00 
  401379:	0f 84 f5 00 00 00    	je     401474 <main+0x548>
  40137f:	e9 eb 00 00 00       	jmpq   40146f <main+0x543>
  401384:	48 89 c3             	mov    %rax,%rbx
  401387:	48 8d 85 df fe ff ff 	lea    -0x121(%rbp),%rax
  40138e:	48 89 c7             	mov    %rax,%rdi
  401391:	e8 ca f8 ff ff       	callq  400c60 <_ZNSaIcED1Ev@plt>
  401396:	48 89 d8             	mov    %rbx,%rax
  401399:	48 89 c7             	mov    %rax,%rdi
  40139c:	e8 0f f9 ff ff       	callq  400cb0 <_Unwind_Resume@plt>
  4013a1:	48 89 c3             	mov    %rax,%rbx
  4013a4:	48 8d 85 df fe ff ff 	lea    -0x121(%rbp),%rax
  4013ab:	48 89 c7             	mov    %rax,%rdi
  4013ae:	e8 ad f8 ff ff       	callq  400c60 <_ZNSaIcED1Ev@plt>
  4013b3:	e9 9d 00 00 00       	jmpq   401455 <main+0x529>
  4013b8:	48 89 c3             	mov    %rax,%rbx
  4013bb:	48 8d 85 df fe ff ff 	lea    -0x121(%rbp),%rax
  4013c2:	48 89 c7             	mov    %rax,%rdi
  4013c5:	e8 96 f8 ff ff       	callq  400c60 <_ZNSaIcED1Ev@plt>
  4013ca:	eb 75                	jmp    401441 <main+0x515>
  4013cc:	48 89 c3             	mov    %rax,%rbx
  4013cf:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  4013d3:	48 89 c7             	mov    %rax,%rdi
  4013d6:	e8 45 f8 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  4013db:	eb 17                	jmp    4013f4 <main+0x4c8>
  4013dd:	48 89 c3             	mov    %rax,%rbx
  4013e0:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  4013e7:	48 89 c7             	mov    %rax,%rdi
  4013ea:	e8 31 f8 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  4013ef:	eb 03                	jmp    4013f4 <main+0x4c8>
  4013f1:	48 89 c3             	mov    %rax,%rbx
  4013f4:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  4013f8:	48 89 c7             	mov    %rax,%rdi
  4013fb:	e8 20 f8 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  401400:	eb 2b                	jmp    40142d <main+0x501>
  401402:	48 89 c3             	mov    %rax,%rbx
  401405:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  40140c:	48 89 c7             	mov    %rax,%rdi
  40140f:	e8 0c f8 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  401414:	eb 17                	jmp    40142d <main+0x501>
  401416:	48 89 c3             	mov    %rax,%rbx
  401419:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  401420:	48 89 c7             	mov    %rax,%rdi
  401423:	e8 f8 f7 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  401428:	eb 03                	jmp    40142d <main+0x501>
  40142a:	48 89 c3             	mov    %rax,%rbx
  40142d:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
  401434:	48 89 c7             	mov    %rax,%rdi
  401437:	e8 e4 f7 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  40143c:	eb 03                	jmp    401441 <main+0x515>
  40143e:	48 89 c3             	mov    %rax,%rbx
  401441:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  401448:	48 89 c7             	mov    %rax,%rdi
  40144b:	e8 d0 f7 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  401450:	eb 03                	jmp    401455 <main+0x529>
  401452:	48 89 c3             	mov    %rax,%rbx
  401455:	48 8d 85 10 ff ff ff 	lea    -0xf0(%rbp),%rax
  40145c:	48 89 c7             	mov    %rax,%rdi
  40145f:	e8 bc f7 ff ff       	callq  400c20 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@plt>
  401464:	48 89 d8             	mov    %rbx,%rax
  401467:	48 89 c7             	mov    %rax,%rdi
  40146a:	e8 41 f8 ff ff       	callq  400cb0 <_Unwind_Resume@plt>
  40146f:	e8 dc f7 ff ff       	callq  400c50 <__stack_chk_fail@plt>
  401474:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  401478:	5b                   	pop    %rbx
  401479:	41 5c                	pop    %r12
  40147b:	41 5d                	pop    %r13
  40147d:	41 5e                	pop    %r14
  40147f:	5d                   	pop    %rbp
  401480:	c3                   	retq   

0000000000401481 <_Z41__static_initialization_and_destruction_0ii>:
  401481:	55                   	push   %rbp
  401482:	48 89 e5             	mov    %rsp,%rbp
  401485:	48 83 ec 10          	sub    $0x10,%rsp
  401489:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40148c:	89 75 f8             	mov    %esi,-0x8(%rbp)
  40148f:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  401493:	75 27                	jne    4014bc <_Z41__static_initialization_and_destruction_0ii+0x3b>
  401495:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
  40149c:	75 1e                	jne    4014bc <_Z41__static_initialization_and_destruction_0ii+0x3b>
  40149e:	bf 91 22 60 00       	mov    $0x602291,%edi
  4014a3:	e8 28 f7 ff ff       	callq  400bd0 <_ZNSt8ios_base4InitC1Ev@plt>
  4014a8:	ba c8 20 60 00       	mov    $0x6020c8,%edx
  4014ad:	be 91 22 60 00       	mov    $0x602291,%esi
  4014b2:	bf 00 0c 40 00       	mov    $0x400c00,%edi
  4014b7:	e8 34 f7 ff ff       	callq  400bf0 <__cxa_atexit@plt>
  4014bc:	90                   	nop
  4014bd:	c9                   	leaveq 
  4014be:	c3                   	retq   

00000000004014bf <_GLOBAL__sub_I_enc_int>:
  4014bf:	55                   	push   %rbp
  4014c0:	48 89 e5             	mov    %rsp,%rbp
  4014c3:	be ff ff 00 00       	mov    $0xffff,%esi
  4014c8:	bf 01 00 00 00       	mov    $0x1,%edi
  4014cd:	e8 af ff ff ff       	callq  401481 <_Z41__static_initialization_and_destruction_0ii>
  4014d2:	5d                   	pop    %rbp
  4014d3:	c3                   	retq   
  4014d4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014db:	00 00 00 
  4014de:	66 90                	xchg   %ax,%ax

00000000004014e0 <__libc_csu_init>:
  4014e0:	41 57                	push   %r15
  4014e2:	41 56                	push   %r14
  4014e4:	41 89 ff             	mov    %edi,%r15d
  4014e7:	41 55                	push   %r13
  4014e9:	41 54                	push   %r12
  4014eb:	4c 8d 25 f6 08 20 00 	lea    0x2008f6(%rip),%r12        # 601de8 <__frame_dummy_init_array_entry>
  4014f2:	55                   	push   %rbp
  4014f3:	48 8d 2d fe 08 20 00 	lea    0x2008fe(%rip),%rbp        # 601df8 <__do_global_dtors_aux_fini_array_entry>
  4014fa:	53                   	push   %rbx
  4014fb:	49 89 f6             	mov    %rsi,%r14
  4014fe:	49 89 d5             	mov    %rdx,%r13
  401501:	4c 29 e5             	sub    %r12,%rbp
  401504:	48 83 ec 08          	sub    $0x8,%rsp
  401508:	48 c1 fd 03          	sar    $0x3,%rbp
  40150c:	e8 5f f6 ff ff       	callq  400b70 <_init>
  401511:	48 85 ed             	test   %rbp,%rbp
  401514:	74 20                	je     401536 <__libc_csu_init+0x56>
  401516:	31 db                	xor    %ebx,%ebx
  401518:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40151f:	00 
  401520:	4c 89 ea             	mov    %r13,%rdx
  401523:	4c 89 f6             	mov    %r14,%rsi
  401526:	44 89 ff             	mov    %r15d,%edi
  401529:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40152d:	48 83 c3 01          	add    $0x1,%rbx
  401531:	48 39 eb             	cmp    %rbp,%rbx
  401534:	75 ea                	jne    401520 <__libc_csu_init+0x40>
  401536:	48 83 c4 08          	add    $0x8,%rsp
  40153a:	5b                   	pop    %rbx
  40153b:	5d                   	pop    %rbp
  40153c:	41 5c                	pop    %r12
  40153e:	41 5d                	pop    %r13
  401540:	41 5e                	pop    %r14
  401542:	41 5f                	pop    %r15
  401544:	c3                   	retq   
  401545:	90                   	nop
  401546:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40154d:	00 00 00 

0000000000401550 <__libc_csu_fini>:
  401550:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000401554 <_fini>:
  401554:	48 83 ec 08          	sub    $0x8,%rsp
  401558:	48 83 c4 08          	add    $0x8,%rsp
  40155c:	c3                   	retq   

Disassembly of section .rodata:

0000000000401560 <_IO_stdin_used>:
  401560:	01 00                	add    %eax,(%rax)
  401562:	02 00                	add    (%rax),%al
  401564:	00 55 73             	add    %dl,0x73(%rbp)
  401567:	61                   	(bad)  
  401568:	67 65 3a 20          	cmp    %gs:(%eax),%ah
  40156c:	2e 2f                	cs (bad) 
  40156e:	72 75                	jb     4015e5 <__GNU_EH_FRAME_HDR+0x1d>
  401570:	6e                   	outsb  %ds:(%rsi),(%dx)
  401571:	20 70 61             	and    %dh,0x61(%rax)
  401574:	73 73                	jae    4015e9 <__GNU_EH_FRAME_HDR+0x21>
  401576:	77 6f                	ja     4015e7 <__GNU_EH_FRAME_HDR+0x1f>
  401578:	72 64                	jb     4015de <__GNU_EH_FRAME_HDR+0x16>
  40157a:	0a 00                	or     (%rax),%al
  40157c:	64 65 62             	fs gs (bad) 
  40157f:	75 67                	jne    4015e8 <__GNU_EH_FRAME_HDR+0x20>
  401581:	67 65 72 20          	addr32 gs jb 4015a5 <_IO_stdin_used+0x45>
  401585:	64 65 74 65          	fs gs je 4015ee <__GNU_EH_FRAME_HDR+0x26>
  401589:	63 74 65 64          	movsxd 0x64(%rbp,%riz,2),%esi
  40158d:	21 21                	and    %esp,(%rcx)
  40158f:	20 45 78             	and    %al,0x78(%rbp)
  401592:	69 74 69 6e 67 21 21 	imul   $0x212167,0x6e(%rcx,%rbp,2),%esi
  401599:	00 
  40159a:	5b                   	pop    %rbx
  40159b:	2b 5d 20             	sub    0x20(%rbp),%ebx
  40159e:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
  4015a0:	72 72                	jb     401614 <__GNU_EH_FRAME_HDR+0x4c>
  4015a2:	65 63 74 20 50       	movsxd %gs:0x50(%rax,%riz,1),%esi
  4015a7:	61                   	(bad)  
  4015a8:	73 73                	jae    40161d <__GNU_EH_FRAME_HDR+0x55>
  4015aa:	77 6f                	ja     40161b <__GNU_EH_FRAME_HDR+0x53>
  4015ac:	72 64                	jb     401612 <__GNU_EH_FRAME_HDR+0x4a>
  4015ae:	0a 00                	or     (%rax),%al
  4015b0:	5b                   	pop    %rbx
  4015b1:	2d 5d 20 49 6e       	sub    $0x6e49205d,%eax
  4015b6:	63 6f 72             	movsxd 0x72(%rdi),%ebp
  4015b9:	72 65                	jb     401620 <__GNU_EH_FRAME_HDR+0x58>
  4015bb:	63 74 20 50          	movsxd 0x50(%rax,%riz,1),%esi
  4015bf:	61                   	(bad)  
  4015c0:	73 73                	jae    401635 <__GNU_EH_FRAME_HDR+0x6d>
  4015c2:	77 6f                	ja     401633 <__GNU_EH_FRAME_HDR+0x6b>
  4015c4:	72 64                	jb     40162a <__GNU_EH_FRAME_HDR+0x62>
  4015c6:	0a 00                	or     (%rax),%al

Disassembly of section .eh_frame_hdr:

00000000004015c8 <__GNU_EH_FRAME_HDR>:
  4015c8:	01 1b                	add    %ebx,(%rbx)
  4015ca:	03 3b                	add    (%rbx),%edi
  4015cc:	4c 00 00             	rex.WR add %r8b,(%rax)
  4015cf:	00 08                	add    %cl,(%rax)
  4015d1:	00 00                	add    %al,(%rax)
  4015d3:	00 c8                	add    %cl,%al
  4015d5:	f5                   	cmc    
  4015d6:	ff                   	(bad)  
  4015d7:	ff 98 00 00 00 28    	lcall  *0x28000000(%rax)
  4015dd:	f7 ff                	idiv   %edi
  4015df:	ff 68 00             	ljmp   *0x0(%rax)
  4015e2:	00 00                	add    %al,(%rax)
  4015e4:	1e                   	(bad)  
  4015e5:	f8                   	clc    
  4015e6:	ff                   	(bad)  
  4015e7:	ff e0                	jmpq   *%rax
  4015e9:	00 00                	add    %al,(%rax)
  4015eb:	00 64 f9 ff          	add    %ah,-0x1(%rcx,%rdi,8)
  4015ef:	ff 08                	decl   (%rax)
  4015f1:	01 00                	add    %eax,(%rax)
  4015f3:	00 b9 fe ff ff 38    	add    %bh,0x38fffffe(%rcx)
  4015f9:	01 00                	add    %eax,(%rax)
  4015fb:	00 f7                	add    %dh,%bh
  4015fd:	fe                   	(bad)  
  4015fe:	ff                   	(bad)  
  4015ff:	ff 58 01             	lcall  *0x1(%rax)
  401602:	00 00                	add    %al,(%rax)
  401604:	18 ff                	sbb    %bh,%bh
  401606:	ff                   	(bad)  
  401607:	ff                   	(bad)  
  401608:	78 01                	js     40160b <__GNU_EH_FRAME_HDR+0x43>
  40160a:	00 00                	add    %al,(%rax)
  40160c:	88 ff                	mov    %bh,%bh
  40160e:	ff                   	(bad)  
  40160f:	ff c0                	inc    %eax
  401611:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .eh_frame:

0000000000401618 <__FRAME_END__-0x188>:
  401618:	14 00                	adc    $0x0,%al
  40161a:	00 00                	add    %al,(%rax)
  40161c:	00 00                	add    %al,(%rax)
  40161e:	00 00                	add    %al,(%rax)
  401620:	01 7a 52             	add    %edi,0x52(%rdx)
  401623:	00 01                	add    %al,(%rcx)
  401625:	78 10                	js     401637 <__GNU_EH_FRAME_HDR+0x6f>
  401627:	01 1b                	add    %ebx,(%rbx)
  401629:	0c 07                	or     $0x7,%al
  40162b:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  401631:	00 00                	add    %al,(%rax)
  401633:	00 1c 00             	add    %bl,(%rax,%rax,1)
  401636:	00 00                	add    %al,(%rax)
  401638:	b8 f6 ff ff 2a       	mov    $0x2afffff6,%eax
	...
  401645:	00 00                	add    %al,(%rax)
  401647:	00 14 00             	add    %dl,(%rax,%rax,1)
  40164a:	00 00                	add    %al,(%rax)
  40164c:	00 00                	add    %al,(%rax)
  40164e:	00 00                	add    %al,(%rax)
  401650:	01 7a 52             	add    %edi,0x52(%rdx)
  401653:	00 01                	add    %al,(%rcx)
  401655:	78 10                	js     401667 <__GNU_EH_FRAME_HDR+0x9f>
  401657:	01 1b                	add    %ebx,(%rbx)
  401659:	0c 07                	or     $0x7,%al
  40165b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  401661:	00 00                	add    %al,(%rax)
  401663:	00 1c 00             	add    %bl,(%rax,%rax,1)
  401666:	00 00                	add    %al,(%rax)
  401668:	28 f5                	sub    %dh,%ch
  40166a:	ff                   	(bad)  
  40166b:	ff 50 01             	callq  *0x1(%rax)
  40166e:	00 00                	add    %al,(%rax)
  401670:	00 0e                	add    %cl,(%rsi)
  401672:	10 46 0e             	adc    %al,0xe(%rsi)
  401675:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  401678:	0b 77 08             	or     0x8(%rdi),%esi
  40167b:	80 00 3f             	addb   $0x3f,(%rax)
  40167e:	1a 3b                	sbb    (%rbx),%bh
  401680:	2a 33                	sub    (%rbx),%dh
  401682:	24 22                	and    $0x22,%al
  401684:	00 00                	add    %al,(%rax)
  401686:	00 00                	add    %al,(%rax)
  401688:	1c 00                	sbb    $0x0,%al
  40168a:	00 00                	add    %al,(%rax)
  40168c:	00 00                	add    %al,(%rax)
  40168e:	00 00                	add    %al,(%rax)
  401690:	01 7a 50             	add    %edi,0x50(%rdx)
  401693:	4c 52                	rex.WR push %rdx
  401695:	00 01                	add    %al,(%rcx)
  401697:	78 10                	js     4016a9 <__GNU_EH_FRAME_HDR+0xe1>
  401699:	07                   	(bad)  
  40169a:	03 a0 0c 40 00 03    	add    0x300400c(%rax),%esp
  4016a0:	1b 0c 07             	sbb    (%rdi,%rax,1),%ecx
  4016a3:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  4016a9:	00 00                	add    %al,(%rax)
  4016ab:	00 24 00             	add    %ah,(%rax,%rax,1)
  4016ae:	00 00                	add    %al,(%rax)
  4016b0:	36 f7 ff             	ss idiv %edi
  4016b3:	ff 46 01             	incl   0x1(%rsi)
  4016b6:	00 00                	add    %al,(%rax)
  4016b8:	04 a4                	add    $0xa4,%al
  4016ba:	17                   	(bad)  
  4016bb:	40 00 41 0e          	add    %al,0xe(%rcx)
  4016bf:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4016c5:	45 83 03 03          	rex.RB addl $0x3,(%r11)
  4016c9:	3c 01                	cmp    $0x1,%al
  4016cb:	0c 07                	or     $0x7,%al
  4016cd:	08 00                	or     %al,(%rax)
  4016cf:	00 2c 00             	add    %ch,(%rax,%rax,1)
  4016d2:	00 00                	add    %al,(%rax)
  4016d4:	4c 00 00             	rex.WR add %r8b,(%rax)
  4016d7:	00 54 f8 ff          	add    %dl,-0x1(%rax,%rdi,8)
  4016db:	ff 55 05             	callq  *0x5(%rbp)
  4016de:	00 00                	add    %al,(%rax)
  4016e0:	04 bd                	add    $0xbd,%al
  4016e2:	17                   	(bad)  
  4016e3:	40 00 41 0e          	add    %al,0xe(%rcx)
  4016e7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4016ed:	4e 8e 03             	rex.WRX mov (%rbx),%es
  4016f0:	8d 04 8c             	lea    (%rsp,%rcx,4),%eax
  4016f3:	05 83 06 03 42       	add    $0x42030683,%eax
  4016f8:	05 0c 07 08 00       	add    $0x8070c,%eax
  4016fd:	00 00                	add    %al,(%rax)
  4016ff:	00 1c 00             	add    %bl,(%rax,%rax,1)
  401702:	00 00                	add    %al,(%rax)
  401704:	bc 00 00 00 79       	mov    $0x79000000,%esp
  401709:	fd                   	std    
  40170a:	ff                   	(bad)  
  40170b:	ff                   	(bad)  
  40170c:	3e 00 00             	add    %al,%ds:(%rax)
  40170f:	00 00                	add    %al,(%rax)
  401711:	41 0e                	rex.B (bad) 
  401713:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  401719:	79 0c                	jns    401727 <__GNU_EH_FRAME_HDR+0x15f>
  40171b:	07                   	(bad)  
  40171c:	08 00                	or     %al,(%rax)
  40171e:	00 00                	add    %al,(%rax)
  401720:	1c 00                	sbb    $0x0,%al
  401722:	00 00                	add    %al,(%rax)
  401724:	dc 00                	faddl  (%rax)
  401726:	00 00                	add    %al,(%rax)
  401728:	97                   	xchg   %eax,%edi
  401729:	fd                   	std    
  40172a:	ff                   	(bad)  
  40172b:	ff 15 00 00 00 00    	callq  *0x0(%rip)        # 401731 <__GNU_EH_FRAME_HDR+0x169>
  401731:	41 0e                	rex.B (bad) 
  401733:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  401739:	50                   	push   %rax
  40173a:	0c 07                	or     $0x7,%al
  40173c:	08 00                	or     %al,(%rax)
  40173e:	00 00                	add    %al,(%rax)
  401740:	44 00 00             	add    %r8b,(%rax)
  401743:	00 fc                	add    %bh,%ah
  401745:	00 00                	add    %al,(%rax)
  401747:	00 98 fd ff ff 65    	add    %bl,0x65fffffd(%rax)
  40174d:	00 00                	add    %al,(%rax)
  40174f:	00 00                	add    %al,(%rax)
  401751:	42 0e                	rex.X (bad) 
  401753:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  401759:	8e 03                	mov    (%rbx),%es
  40175b:	45 0e                	rex.RB (bad) 
  40175d:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  401763:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff867025b1 <_end+0xffffffff86100319>
  401769:	06                   	(bad)  
  40176a:	48 0e                	rex.W (bad) 
  40176c:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  401772:	72 0e                	jb     401782 <__GNU_EH_FRAME_HDR+0x1ba>
  401774:	38 41 0e             	cmp    %al,0xe(%rcx)
  401777:	30 41 0e             	xor    %al,0xe(%rcx)
  40177a:	28 42 0e             	sub    %al,0xe(%rdx)
  40177d:	20 42 0e             	and    %al,0xe(%rdx)
  401780:	18 42 0e             	sbb    %al,0xe(%rdx)
  401783:	10 42 0e             	adc    %al,0xe(%rdx)
  401786:	08 00                	or     %al,(%rax)
  401788:	14 00                	adc    $0x0,%al
  40178a:	00 00                	add    %al,(%rax)
  40178c:	44 01 00             	add    %r8d,(%rax)
  40178f:	00 c0                	add    %al,%al
  401791:	fd                   	std    
  401792:	ff                   	(bad)  
  401793:	ff 02                	incl   (%rdx)
	...

00000000004017a0 <__FRAME_END__>:
  4017a0:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gcc_except_table:

00000000004017a4 <.gcc_except_table>:
  4017a4:	ff                   	(bad)  
  4017a5:	ff 01                	incl   (%rcx)
  4017a7:	15 40 05 f2 01       	adc    $0x1f20540,%eax
  4017ac:	00 68 81             	add    %ch,-0x7f(%rax)
  4017af:	01 8c 02 00 87 02 05 	add    %ecx,0x5028700(%rdx,%rax,1)
  4017b6:	00 00                	add    %al,(%rax)
  4017b8:	a1 02 05 00 00 ff ff 	movabs 0x5701ffff00000502,%eax
  4017bf:	01 57 
  4017c1:	47 99                	rex.RXB cltd 
  4017c3:	01 00                	add    %eax,(%rax)
  4017c5:	00 9b 02 05 d8 08    	add    %bl,0x8d80502(%rbx)
  4017cb:	00 b5 04 05 f5 08    	add    %dh,0x8f50504(%rbp)
  4017d1:	00 c6                	add    %al,%dh
  4017d3:	06                   	(bad)  
  4017d4:	05 8c 09 00 eb       	add    $0xeb00098c,%eax
  4017d9:	06                   	(bad)  
  4017da:	05 fe 09 00 81       	add    $0x810009fe,%eax
  4017df:	07                   	(bad)  
  4017e0:	05 c5 09 00 9b       	add    $0x9b0009c5,%eax
  4017e5:	07                   	(bad)  
  4017e6:	05 a0 09 00 a7       	add    $0xa70009a0,%eax
  4017eb:	07                   	(bad)  
  4017ec:	05 b1 09 00 b3       	add    $0xb30009b1,%eax
  4017f1:	07                   	(bad)  
  4017f2:	05 d6 09 00 cc       	add    $0xcc0009d6,%eax
  4017f7:	07                   	(bad)  
  4017f8:	2e ea                	cs (bad) 
  4017fa:	09 00                	or     %eax,(%rax)
  4017fc:	89 08                	mov    %ecx,(%rax)
  4017fe:	05 fe 09 00 98       	add    $0x980009fe,%eax
  401803:	08 05 92 0a 00 a7    	or     %al,-0x58fff56e(%rip)        # ffffffffa740229b <_end+0xffffffffa6e00003>
  401809:	08 05 a6 0a 00 b6    	or     %al,-0x49fff55a(%rip)        # ffffffffb64022b5 <_end+0xffffffffb5e0001d>
  40180f:	08 3f                	or     %bh,(%rdi)
  401811:	00 00                	add    %al,(%rax)
  401813:	be 0a 05 00 00       	mov    $0x50a,%esi

Disassembly of section .init_array:

0000000000601de8 <__frame_dummy_init_array_entry>:
  601de8:	c0 0d 40 00 00 00 00 	rorb   $0x0,0x40(%rip)        # 601e2f <_DYNAMIC+0x27>
  601def:	00 bf 14 40 00 00    	add    %bh,0x4014(%rdi)
  601df5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000601df8 <__do_global_dtors_aux_fini_array_entry>:
  601df8:	a0                   	.byte 0xa0
  601df9:	0d 40 00 00 00       	or     $0x40,%eax
	...

Disassembly of section .jcr:

0000000000601e00 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000601e08 <_DYNAMIC>:
  601e08:	01 00                	add    %eax,(%rax)
  601e0a:	00 00                	add    %al,(%rax)
  601e0c:	00 00                	add    %al,(%rax)
  601e0e:	00 00                	add    %al,(%rax)
  601e10:	01 00                	add    %eax,(%rax)
  601e12:	00 00                	add    %al,(%rax)
  601e14:	00 00                	add    %al,(%rax)
  601e16:	00 00                	add    %al,(%rax)
  601e18:	01 00                	add    %eax,(%rax)
  601e1a:	00 00                	add    %al,(%rax)
  601e1c:	00 00                	add    %al,(%rax)
  601e1e:	00 00                	add    %al,(%rax)
  601e20:	bc 02 00 00 00       	mov    $0x2,%esp
  601e25:	00 00                	add    %al,(%rax)
  601e27:	00 01                	add    %al,(%rcx)
  601e29:	00 00                	add    %al,(%rax)
  601e2b:	00 00                	add    %al,(%rax)
  601e2d:	00 00                	add    %al,(%rax)
  601e2f:	00 d9                	add    %bl,%cl
  601e31:	02 00                	add    (%rax),%al
  601e33:	00 00                	add    %al,(%rax)
  601e35:	00 00                	add    %al,(%rax)
  601e37:	00 0c 00             	add    %cl,(%rax,%rax,1)
  601e3a:	00 00                	add    %al,(%rax)
  601e3c:	00 00                	add    %al,(%rax)
  601e3e:	00 00                	add    %al,(%rax)
  601e40:	70 0b                	jo     601e4d <_DYNAMIC+0x45>
  601e42:	40 00 00             	add    %al,(%rax)
  601e45:	00 00                	add    %al,(%rax)
  601e47:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 601e4d <_DYNAMIC+0x45>
  601e4d:	00 00                	add    %al,(%rax)
  601e4f:	00 54 15 40          	add    %dl,0x40(%rbp,%rdx,1)
  601e53:	00 00                	add    %al,(%rax)
  601e55:	00 00                	add    %al,(%rax)
  601e57:	00 19                	add    %bl,(%rcx)
  601e59:	00 00                	add    %al,(%rax)
  601e5b:	00 00                	add    %al,(%rax)
  601e5d:	00 00                	add    %al,(%rax)
  601e5f:	00 e8                	add    %ch,%al
  601e61:	1d 60 00 00 00       	sbb    $0x60,%eax
  601e66:	00 00                	add    %al,(%rax)
  601e68:	1b 00                	sbb    (%rax),%eax
  601e6a:	00 00                	add    %al,(%rax)
  601e6c:	00 00                	add    %al,(%rax)
  601e6e:	00 00                	add    %al,(%rax)
  601e70:	10 00                	adc    %al,(%rax)
  601e72:	00 00                	add    %al,(%rax)
  601e74:	00 00                	add    %al,(%rax)
  601e76:	00 00                	add    %al,(%rax)
  601e78:	1a 00                	sbb    (%rax),%al
  601e7a:	00 00                	add    %al,(%rax)
  601e7c:	00 00                	add    %al,(%rax)
  601e7e:	00 00                	add    %al,(%rax)
  601e80:	f8                   	clc    
  601e81:	1d 60 00 00 00       	sbb    $0x60,%eax
  601e86:	00 00                	add    %al,(%rax)
  601e88:	1c 00                	sbb    $0x0,%al
  601e8a:	00 00                	add    %al,(%rax)
  601e8c:	00 00                	add    %al,(%rax)
  601e8e:	00 00                	add    %al,(%rax)
  601e90:	08 00                	or     %al,(%rax)
  601e92:	00 00                	add    %al,(%rax)
  601e94:	00 00                	add    %al,(%rax)
  601e96:	00 00                	add    %al,(%rax)
  601e98:	f5                   	cmc    
  601e99:	fe                   	(bad)  
  601e9a:	ff 6f 00             	ljmp   *0x0(%rdi)
  601e9d:	00 00                	add    %al,(%rax)
  601e9f:	00 98 02 40 00 00    	add    %bl,0x4002(%rax)
  601ea5:	00 00                	add    %al,(%rax)
  601ea7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 601ead <_DYNAMIC+0xa5>
  601ead:	00 00                	add    %al,(%rax)
  601eaf:	00 38                	add    %bh,(%rax)
  601eb1:	05 40 00 00 00       	add    $0x40,%eax
  601eb6:	00 00                	add    %al,(%rax)
  601eb8:	06                   	(bad)  
  601eb9:	00 00                	add    %al,(%rax)
  601ebb:	00 00                	add    %al,(%rax)
  601ebd:	00 00                	add    %al,(%rax)
  601ebf:	00 c8                	add    %cl,%al
  601ec1:	02 40 00             	add    0x0(%rax),%al
  601ec4:	00 00                	add    %al,(%rax)
  601ec6:	00 00                	add    %al,(%rax)
  601ec8:	0a 00                	or     (%rax),%al
  601eca:	00 00                	add    %al,(%rax)
  601ecc:	00 00                	add    %al,(%rax)
  601ece:	00 00                	add    %al,(%rax)
  601ed0:	63 03                	movsxd (%rbx),%eax
  601ed2:	00 00                	add    %al,(%rax)
  601ed4:	00 00                	add    %al,(%rax)
  601ed6:	00 00                	add    %al,(%rax)
  601ed8:	0b 00                	or     (%rax),%eax
  601eda:	00 00                	add    %al,(%rax)
  601edc:	00 00                	add    %al,(%rax)
  601ede:	00 00                	add    %al,(%rax)
  601ee0:	18 00                	sbb    %al,(%rax)
  601ee2:	00 00                	add    %al,(%rax)
  601ee4:	00 00                	add    %al,(%rax)
  601ee6:	00 00                	add    %al,(%rax)
  601ee8:	15 00 00 00 00       	adc    $0x0,%eax
	...
  601ef5:	00 00                	add    %al,(%rax)
  601ef7:	00 03                	add    %al,(%rbx)
	...
  601f01:	20 60 00             	and    %ah,0x0(%rax)
  601f04:	00 00                	add    %al,(%rax)
  601f06:	00 00                	add    %al,(%rax)
  601f08:	02 00                	add    (%rax),%al
  601f0a:	00 00                	add    %al,(%rax)
  601f0c:	00 00                	add    %al,(%rax)
  601f0e:	00 00                	add    %al,(%rax)
  601f10:	e0 01                	loopne 601f13 <_DYNAMIC+0x10b>
  601f12:	00 00                	add    %al,(%rax)
  601f14:	00 00                	add    %al,(%rax)
  601f16:	00 00                	add    %al,(%rax)
  601f18:	14 00                	adc    $0x0,%al
  601f1a:	00 00                	add    %al,(%rax)
  601f1c:	00 00                	add    %al,(%rax)
  601f1e:	00 00                	add    %al,(%rax)
  601f20:	07                   	(bad)  
  601f21:	00 00                	add    %al,(%rax)
  601f23:	00 00                	add    %al,(%rax)
  601f25:	00 00                	add    %al,(%rax)
  601f27:	00 17                	add    %dl,(%rdi)
  601f29:	00 00                	add    %al,(%rax)
  601f2b:	00 00                	add    %al,(%rax)
  601f2d:	00 00                	add    %al,(%rax)
  601f2f:	00 90 09 40 00 00    	add    %dl,0x4009(%rax)
  601f35:	00 00                	add    %al,(%rax)
  601f37:	00 07                	add    %al,(%rdi)
  601f39:	00 00                	add    %al,(%rax)
  601f3b:	00 00                	add    %al,(%rax)
  601f3d:	00 00                	add    %al,(%rax)
  601f3f:	00 60 09             	add    %ah,0x9(%rax)
  601f42:	40 00 00             	add    %al,(%rax)
  601f45:	00 00                	add    %al,(%rax)
  601f47:	00 08                	add    %cl,(%rax)
  601f49:	00 00                	add    %al,(%rax)
  601f4b:	00 00                	add    %al,(%rax)
  601f4d:	00 00                	add    %al,(%rax)
  601f4f:	00 30                	add    %dh,(%rax)
  601f51:	00 00                	add    %al,(%rax)
  601f53:	00 00                	add    %al,(%rax)
  601f55:	00 00                	add    %al,(%rax)
  601f57:	00 09                	add    %cl,(%rcx)
  601f59:	00 00                	add    %al,(%rax)
  601f5b:	00 00                	add    %al,(%rax)
  601f5d:	00 00                	add    %al,(%rax)
  601f5f:	00 18                	add    %bl,(%rax)
  601f61:	00 00                	add    %al,(%rax)
  601f63:	00 00                	add    %al,(%rax)
  601f65:	00 00                	add    %al,(%rax)
  601f67:	00 fe                	add    %bh,%dh
  601f69:	ff                   	(bad)  
  601f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
  601f6d:	00 00                	add    %al,(%rax)
  601f6f:	00 d0                	add    %dl,%al
  601f71:	08 40 00             	or     %al,0x0(%rax)
  601f74:	00 00                	add    %al,(%rax)
  601f76:	00 00                	add    %al,(%rax)
  601f78:	ff                   	(bad)  
  601f79:	ff                   	(bad)  
  601f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
  601f7d:	00 00                	add    %al,(%rax)
  601f7f:	00 03                	add    %al,(%rbx)
  601f81:	00 00                	add    %al,(%rax)
  601f83:	00 00                	add    %al,(%rax)
  601f85:	00 00                	add    %al,(%rax)
  601f87:	00 f0                	add    %dh,%al
  601f89:	ff                   	(bad)  
  601f8a:	ff 6f 00             	ljmp   *0x0(%rdi)
  601f8d:	00 00                	add    %al,(%rax)
  601f8f:	00 9c 08 40 00 00 00 	add    %bl,0x40(%rax,%rcx,1)
	...

Disassembly of section .got:

0000000000601ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000602000 <_GLOBAL_OFFSET_TABLE_>:
  602000:	08 1e                	or     %bl,(%rsi)
  602002:	60                   	(bad)  
	...
  602017:	00 a6 0b 40 00 00    	add    %ah,0x400b(%rsi)
  60201d:	00 00                	add    %al,(%rax)
  60201f:	00 b6 0b 40 00 00    	add    %dh,0x400b(%rsi)
  602025:	00 00                	add    %al,(%rax)
  602027:	00 c6                	add    %al,%dh
  602029:	0b 40 00             	or     0x0(%rax),%eax
  60202c:	00 00                	add    %al,(%rax)
  60202e:	00 00                	add    %al,(%rax)
  602030:	d6                   	(bad)  
  602031:	0b 40 00             	or     0x0(%rax),%eax
  602034:	00 00                	add    %al,(%rax)
  602036:	00 00                	add    %al,(%rax)
  602038:	e6 0b                	out    %al,$0xb
  60203a:	40 00 00             	add    %al,(%rax)
  60203d:	00 00                	add    %al,(%rax)
  60203f:	00 f6                	add    %dh,%dh
  602041:	0b 40 00             	or     0x0(%rax),%eax
  602044:	00 00                	add    %al,(%rax)
  602046:	00 00                	add    %al,(%rax)
  602048:	06                   	(bad)  
  602049:	0c 40                	or     $0x40,%al
  60204b:	00 00                	add    %al,(%rax)
  60204d:	00 00                	add    %al,(%rax)
  60204f:	00 16                	add    %dl,(%rsi)
  602051:	0c 40                	or     $0x40,%al
  602053:	00 00                	add    %al,(%rax)
  602055:	00 00                	add    %al,(%rax)
  602057:	00 26                	add    %ah,(%rsi)
  602059:	0c 40                	or     $0x40,%al
  60205b:	00 00                	add    %al,(%rax)
  60205d:	00 00                	add    %al,(%rax)
  60205f:	00 36                	add    %dh,(%rsi)
  602061:	0c 40                	or     $0x40,%al
  602063:	00 00                	add    %al,(%rax)
  602065:	00 00                	add    %al,(%rax)
  602067:	00 46 0c             	add    %al,0xc(%rsi)
  60206a:	40 00 00             	add    %al,(%rax)
  60206d:	00 00                	add    %al,(%rax)
  60206f:	00 56 0c             	add    %dl,0xc(%rsi)
  602072:	40 00 00             	add    %al,(%rax)
  602075:	00 00                	add    %al,(%rax)
  602077:	00 66 0c             	add    %ah,0xc(%rsi)
  60207a:	40 00 00             	add    %al,(%rax)
  60207d:	00 00                	add    %al,(%rax)
  60207f:	00 76 0c             	add    %dh,0xc(%rsi)
  602082:	40 00 00             	add    %al,(%rax)
  602085:	00 00                	add    %al,(%rax)
  602087:	00 86 0c 40 00 00    	add    %al,0x400c(%rsi)
  60208d:	00 00                	add    %al,(%rax)
  60208f:	00 96 0c 40 00 00    	add    %dl,0x400c(%rsi)
  602095:	00 00                	add    %al,(%rax)
  602097:	00 a6 0c 40 00 00    	add    %ah,0x400c(%rsi)
  60209d:	00 00                	add    %al,(%rax)
  60209f:	00 b6 0c 40 00 00    	add    %dh,0x400c(%rsi)
  6020a5:	00 00                	add    %al,(%rax)
  6020a7:	00 c6                	add    %al,%dh
  6020a9:	0c 40                	or     $0x40,%al
  6020ab:	00 00                	add    %al,(%rax)
  6020ad:	00 00                	add    %al,(%rax)
  6020af:	00 d6                	add    %dl,%dh
  6020b1:	0c 40                	or     $0x40,%al
  6020b3:	00 00                	add    %al,(%rax)
  6020b5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

00000000006020c0 <__data_start>:
	...

00000000006020c8 <__dso_handle>:
	...

00000000006020e0 <enc_int>:
  6020e0:	50                   	push   %rax
  6020e1:	00 00                	add    %al,(%rax)
  6020e3:	00 5d 00             	add    %bl,0x0(%rbp)
  6020e6:	00 00                	add    %al,(%rax)
  6020e8:	03 00                	add    (%rax),%eax
  6020ea:	00 00                	add    %al,(%rax)
  6020ec:	43 00 00             	rex.XB add %al,(%r8)
  6020ef:	00 03                	add    %al,(%rbx)
  6020f1:	00 00                	add    %al,(%rax)
  6020f3:	00 56 00             	add    %dl,0x0(%rsi)
  6020f6:	00 00                	add    %al,(%rax)
  6020f8:	0b 00                	or     (%rax),%eax
  6020fa:	00 00                	add    %al,(%rax)
  6020fc:	6e                   	outsb  %ds:(%rsi),(%dx)
  6020fd:	00 00                	add    %al,(%rax)
  6020ff:	00 40 00             	add    %al,0x0(%rax)
  602102:	00 00                	add    %al,(%rax)
  602104:	02 00                	add    (%rax),%al
  602106:	00 00                	add    %al,(%rax)
  602108:	5a                   	pop    %rdx
  602109:	00 00                	add    %al,(%rax)
  60210b:	00 1b                	add    %bl,(%rbx)
  60210d:	00 00                	add    %al,(%rax)
  60210f:	00 54 00 00          	add    %dl,0x0(%rax,%rax,1)
  602113:	00 1c 00             	add    %bl,(%rax,%rax,1)
  602116:	00 00                	add    %al,(%rax)
  602118:	6e                   	outsb  %ds:(%rsi),(%dx)
  602119:	00 00                	add    %al,(%rax)
  60211b:	00 4b 00             	add    %cl,0x0(%rbx)
  60211e:	00 00                	add    %al,(%rax)
  602120:	03 00                	add    (%rax),%eax
  602122:	00 00                	add    %al,(%rax)
  602124:	45 00 00             	add    %r8b,(%r8)
  602127:	00 34 00             	add    %dh,(%rax,%rax,1)
  60212a:	00 00                	add    %al,(%rax)
  60212c:	06                   	(bad)  
  60212d:	00 00                	add    %al,(%rax)
  60212f:	00 0b                	add    %cl,(%rbx)
  602131:	00 00                	add    %al,(%rax)
  602133:	00 05 00 00 00 50    	add    %al,0x50000000(%rip)        # 50602139 <_end+0x4ffffea1>
  602139:	00 00                	add    %al,(%rax)
  60213b:	00 58 00             	add    %bl,0x0(%rax)
  60213e:	00 00                	add    %al,(%rax)
  602140:	5a                   	pop    %rdx
  602141:	00 00                	add    %al,(%rax)
  602143:	00 58 00             	add    %bl,0x0(%rax)
	...

0000000000602150 <key_int>:
  602150:	31 00                	xor    %eax,(%rax)
  602152:	00 00                	add    %al,(%rax)
  602154:	33 00                	xor    (%rax),%eax
  602156:	00 00                	add    %al,(%rax)
  602158:	33 00                	xor    (%rax),%eax
  60215a:	00 00                	add    %al,(%rax)
  60215c:	37                   	(bad)  
  60215d:	00 00                	add    %al,(%rax)
  60215f:	00 6b 00             	add    %ch,0x0(%rbx)
  602162:	00 00                	add    %al,(%rax)
  602164:	65 00 00             	add    %al,%gs:(%rax)
  602167:	00 79 00             	add    %bh,0x0(%rcx)
	...

Disassembly of section .bss:

0000000000602180 <_ZSt4cout@@GLIBCXX_3.4>:
	...

0000000000602290 <completed.7594>:
	...

0000000000602291 <_ZStL8__ioinit>:
  602291:	00 00                	add    %al,(%rax)
  602293:	00 00                	add    %al,(%rax)
  602295:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x400af8>
   a:	74 75                	je     81 <_init-0x400aef>
   c:	20 35 2e 34 2e 30    	and    %dh,0x302e342e(%rip)        # 302e3440 <_end+0x2fce11a8>
  12:	2d 36 75 62 75       	sub    $0x75627536,%eax
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <_init-0x400ae1>
  1a:	31 7e 31             	xor    %edi,0x31(%rsi)
  1d:	36 2e 30 34 2e       	ss xor %dh,%cs:(%rsi,%rbp,1)
  22:	31 30                	xor    %esi,(%rax)
  24:	29 20                	sub    %esp,(%rax)
  26:	35 2e 34 2e 30       	xor    $0x302e342e,%eax
  2b:	20 32                	and    %dh,(%rdx)
  2d:	30 31                	xor    %dh,(%rcx)
  2f:	36 30 36             	xor    %dh,%ss:(%rsi)
  32:	30 39                	xor    %bh,(%rcx)
	...
