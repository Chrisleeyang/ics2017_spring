
kernel：     文件格式 elf32-i386


Disassembly of section .text:

c0030000 <start>:
c0030000:	fa                   	cli    
c0030001:	0f 01 15 4c 00 03 00 	lgdtl  0x3004c
c0030008:	0f 20 c0             	mov    %cr0,%eax
c003000b:	83 c8 01             	or     $0x1,%eax
c003000e:	0f 22 c0             	mov    %eax,%cr0
c0030011:	ea 18 00 03 00 08 00 	ljmp   $0x8,$0x30018

c0030018 <start_cond>:
c0030018:	66 b8 10 00          	mov    $0x10,%ax
c003001c:	8e d8                	mov    %eax,%ds
c003001e:	8e c0                	mov    %eax,%es
c0030020:	8e d0                	mov    %eax,%ss
c0030022:	bd 00 00 00 00       	mov    $0x0,%ebp
c0030027:	bc 00 00 00 08       	mov    $0x8000000,%esp
c003002c:	83 ec 10             	sub    $0x10,%esp
c003002f:	e9 82 0f 00 00       	jmp    c0030fb6 <init>

c0030034 <gdt>:
	...
c003003c:	ff                   	(bad)  
c003003d:	ff 00                	incl   (%eax)
c003003f:	00 00                	add    %al,(%eax)
c0030041:	9a cf 00 ff ff 00 00 	lcall  $0x0,$0xffff00cf
c0030048:	00                   	.byte 0x0
c0030049:	92                   	xchg   %eax,%edx
c003004a:	cf                   	iret   
	...

c003004c <gdtdesc>:
c003004c:	17                   	pop    %ss
c003004d:	00 34 00             	add    %dh,(%eax,%eax,1)
c0030050:	03 00                	add    (%eax),%eax

c0030052 <vec0>:
c0030052:	6a 00                	push   $0x0
c0030054:	6a 00                	push   $0x0
c0030056:	eb 72                	jmp    c00300ca <asm_do_irq>

c0030058 <vec1>:
c0030058:	6a 00                	push   $0x0
c003005a:	6a 01                	push   $0x1
c003005c:	eb 6c                	jmp    c00300ca <asm_do_irq>

c003005e <vec2>:
c003005e:	6a 00                	push   $0x0
c0030060:	6a 02                	push   $0x2
c0030062:	eb 66                	jmp    c00300ca <asm_do_irq>

c0030064 <vec3>:
c0030064:	6a 00                	push   $0x0
c0030066:	6a 03                	push   $0x3
c0030068:	eb 60                	jmp    c00300ca <asm_do_irq>

c003006a <vec4>:
c003006a:	6a 00                	push   $0x0
c003006c:	6a 04                	push   $0x4
c003006e:	eb 5a                	jmp    c00300ca <asm_do_irq>

c0030070 <vec5>:
c0030070:	6a 00                	push   $0x0
c0030072:	6a 05                	push   $0x5
c0030074:	eb 54                	jmp    c00300ca <asm_do_irq>

c0030076 <vec6>:
c0030076:	6a 00                	push   $0x0
c0030078:	6a 06                	push   $0x6
c003007a:	eb 4e                	jmp    c00300ca <asm_do_irq>

c003007c <vec7>:
c003007c:	6a 00                	push   $0x0
c003007e:	6a 07                	push   $0x7
c0030080:	eb 48                	jmp    c00300ca <asm_do_irq>

c0030082 <vec8>:
c0030082:	6a 08                	push   $0x8
c0030084:	eb 44                	jmp    c00300ca <asm_do_irq>

c0030086 <vec9>:
c0030086:	6a 00                	push   $0x0
c0030088:	6a 09                	push   $0x9
c003008a:	eb 3e                	jmp    c00300ca <asm_do_irq>

c003008c <vec10>:
c003008c:	6a 0a                	push   $0xa
c003008e:	eb 3a                	jmp    c00300ca <asm_do_irq>

c0030090 <vec11>:
c0030090:	6a 0b                	push   $0xb
c0030092:	eb 36                	jmp    c00300ca <asm_do_irq>

c0030094 <vec12>:
c0030094:	6a 0c                	push   $0xc
c0030096:	eb 32                	jmp    c00300ca <asm_do_irq>

c0030098 <vec13>:
c0030098:	6a 0d                	push   $0xd
c003009a:	eb 2e                	jmp    c00300ca <asm_do_irq>

c003009c <vec14>:
c003009c:	6a 0e                	push   $0xe
c003009e:	eb 2a                	jmp    c00300ca <asm_do_irq>

c00300a0 <vecsys>:
c00300a0:	6a 00                	push   $0x0
c00300a2:	68 80 00 00 00       	push   $0x80
c00300a7:	eb 21                	jmp    c00300ca <asm_do_irq>

c00300a9 <irq0>:
c00300a9:	6a 00                	push   $0x0
c00300ab:	68 e8 03 00 00       	push   $0x3e8
c00300b0:	eb 18                	jmp    c00300ca <asm_do_irq>

c00300b2 <irq1>:
c00300b2:	6a 00                	push   $0x0
c00300b4:	68 e9 03 00 00       	push   $0x3e9
c00300b9:	eb 0f                	jmp    c00300ca <asm_do_irq>

c00300bb <irq14>:
c00300bb:	6a 00                	push   $0x0
c00300bd:	68 f6 03 00 00       	push   $0x3f6
c00300c2:	eb 06                	jmp    c00300ca <asm_do_irq>

c00300c4 <irq_empty>:
c00300c4:	6a 00                	push   $0x0
c00300c6:	6a ff                	push   $0xffffffff
c00300c8:	eb 00                	jmp    c00300ca <asm_do_irq>

c00300ca <asm_do_irq>:
c00300ca:	60                   	pusha  
c00300cb:	54                   	push   %esp
c00300cc:	e8 05 02 00 00       	call   c00302d6 <irq_handle>
c00300d1:	83 c4 04             	add    $0x4,%esp
c00300d4:	61                   	popa   
c00300d5:	83 c4 08             	add    $0x8,%esp
c00300d8:	cf                   	iret   

c00300d9 <in_byte>:
c00300d9:	55                   	push   %ebp
c00300da:	89 e5                	mov    %esp,%ebp
c00300dc:	83 ec 14             	sub    $0x14,%esp
c00300df:	e8 7d 00 00 00       	call   c0030161 <__x86.get_pc_thunk.ax>
c00300e4:	05 1c bf 00 00       	add    $0xbf1c,%eax
c00300e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00300ec:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c00300f0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00300f3:	89 c2                	mov    %eax,%edx
c00300f5:	ec                   	in     (%dx),%al
c00300f6:	88 45 ff             	mov    %al,-0x1(%ebp)
c00300f9:	8a 45 ff             	mov    -0x1(%ebp),%al
c00300fc:	c9                   	leave  
c00300fd:	c3                   	ret    

c00300fe <init_serial>:
c00300fe:	55                   	push   %ebp
c00300ff:	89 e5                	mov    %esp,%ebp
c0030101:	e8 5b 00 00 00       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030106:	05 fa be 00 00       	add    $0xbefa,%eax
c003010b:	90                   	nop
c003010c:	5d                   	pop    %ebp
c003010d:	c3                   	ret    

c003010e <serial_idle>:
c003010e:	55                   	push   %ebp
c003010f:	89 e5                	mov    %esp,%ebp
c0030111:	e8 4b 00 00 00       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030116:	05 ea be 00 00       	add    $0xbeea,%eax
c003011b:	68 fd 03 00 00       	push   $0x3fd
c0030120:	e8 b4 ff ff ff       	call   c00300d9 <in_byte>
c0030125:	83 c4 04             	add    $0x4,%esp
c0030128:	0f b6 c0             	movzbl %al,%eax
c003012b:	83 e0 20             	and    $0x20,%eax
c003012e:	85 c0                	test   %eax,%eax
c0030130:	0f 95 c0             	setne  %al
c0030133:	0f b6 c0             	movzbl %al,%eax
c0030136:	c9                   	leave  
c0030137:	c3                   	ret    

c0030138 <serial_printc>:
c0030138:	55                   	push   %ebp
c0030139:	89 e5                	mov    %esp,%ebp
c003013b:	83 ec 04             	sub    $0x4,%esp
c003013e:	e8 1e 00 00 00       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030143:	05 bd be 00 00       	add    $0xbebd,%eax
c0030148:	8b 45 08             	mov    0x8(%ebp),%eax
c003014b:	88 45 fc             	mov    %al,-0x4(%ebp)
c003014e:	90                   	nop
c003014f:	e8 ba ff ff ff       	call   c003010e <serial_idle>
c0030154:	85 c0                	test   %eax,%eax
c0030156:	74 f7                	je     c003014f <serial_printc+0x17>
c0030158:	b8 01 00 00 00       	mov    $0x1,%eax
c003015d:	82                   	.byte 0x82
c003015e:	90                   	nop
c003015f:	c9                   	leave  
c0030160:	c3                   	ret    

c0030161 <__x86.get_pc_thunk.ax>:
c0030161:	8b 04 24             	mov    (%esp),%eax
c0030164:	c3                   	ret    

c0030165 <printk>:
c0030165:	55                   	push   %ebp
c0030166:	89 e5                	mov    %esp,%ebp
c0030168:	53                   	push   %ebx
c0030169:	83 ec 14             	sub    $0x14,%esp
c003016c:	e8 48 00 00 00       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0030171:	81 c3 8f be 00 00    	add    $0xbe8f,%ebx
c0030177:	8d 45 0c             	lea    0xc(%ebp),%eax
c003017a:	89 45 f4             	mov    %eax,-0xc(%ebp)
c003017d:	8b 45 08             	mov    0x8(%ebp),%eax
c0030180:	ff 75 f4             	pushl  -0xc(%ebp)
c0030183:	50                   	push   %eax
c0030184:	68 00 01 00 00       	push   $0x100
c0030189:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
c003018f:	50                   	push   %eax
c0030190:	e8 6b 1d 00 00       	call   c0031f00 <vsnprintf>
c0030195:	83 c4 10             	add    $0x10,%esp
c0030198:	89 45 f0             	mov    %eax,-0x10(%ebp)
c003019b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003019e:	83 ec 04             	sub    $0x4,%esp
c00301a1:	50                   	push   %eax
c00301a2:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
c00301a8:	50                   	push   %eax
c00301a9:	6a 01                	push   $0x1
c00301ab:	e8 4d 0f 00 00       	call   c00310fd <fs_write>
c00301b0:	83 c4 10             	add    $0x10,%esp
c00301b3:	90                   	nop
c00301b4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00301b7:	c9                   	leave  
c00301b8:	c3                   	ret    

c00301b9 <__x86.get_pc_thunk.bx>:
c00301b9:	8b 1c 24             	mov    (%esp),%ebx
c00301bc:	c3                   	ret    

c00301bd <sbrk>:
c00301bd:	55                   	push   %ebp
c00301be:	89 e5                	mov    %esp,%ebp
c00301c0:	53                   	push   %ebx
c00301c1:	83 ec 04             	sub    $0x4,%esp
c00301c4:	e8 98 ff ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00301c9:	05 37 be 00 00       	add    $0xbe37,%eax
c00301ce:	83 ec 0c             	sub    $0xc,%esp
c00301d1:	8d 90 60 c6 ff ff    	lea    -0x39a0(%eax),%edx
c00301d7:	52                   	push   %edx
c00301d8:	8d 90 c0 c6 ff ff    	lea    -0x3940(%eax),%edx
c00301de:	52                   	push   %edx
c00301df:	6a 08                	push   $0x8
c00301e1:	8d 90 62 c6 ff ff    	lea    -0x399e(%eax),%edx
c00301e7:	52                   	push   %edx
c00301e8:	8d 90 74 c6 ff ff    	lea    -0x398c(%eax),%edx
c00301ee:	52                   	push   %edx
c00301ef:	89 c3                	mov    %eax,%ebx
c00301f1:	e8 6f ff ff ff       	call   c0030165 <printk>
c00301f6:	83 c4 20             	add    $0x20,%esp
c00301f9:	b8 01 00 00 00       	mov    $0x1,%eax
c00301fe:	82 b8 00 00 00 00 8b 	cmpb   $0x8b,0x0(%eax)
c0030205:	5d                   	pop    %ebp
c0030206:	fc                   	cld    
c0030207:	c9                   	leave  
c0030208:	c3                   	ret    

c0030209 <add_irq_handle>:
c0030209:	55                   	push   %ebp
c003020a:	89 e5                	mov    %esp,%ebp
c003020c:	53                   	push   %ebx
c003020d:	83 ec 14             	sub    $0x14,%esp
c0030210:	e8 a4 ff ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0030215:	81 c3 eb bd 00 00    	add    $0xbdeb,%ebx
c003021b:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
c003021f:	7e 2f                	jle    c0030250 <add_irq_handle+0x47>
c0030221:	83 ec 0c             	sub    $0xc,%esp
c0030224:	8d 83 c8 c6 ff ff    	lea    -0x3938(%ebx),%eax
c003022a:	50                   	push   %eax
c003022b:	8d 83 14 c8 ff ff    	lea    -0x37ec(%ebx),%eax
c0030231:	50                   	push   %eax
c0030232:	6a 16                	push   $0x16
c0030234:	8d 83 db c6 ff ff    	lea    -0x3925(%ebx),%eax
c003023a:	50                   	push   %eax
c003023b:	8d 83 f0 c6 ff ff    	lea    -0x3910(%ebx),%eax
c0030241:	50                   	push   %eax
c0030242:	e8 1e ff ff ff       	call   c0030165 <printk>
c0030247:	83 c4 20             	add    $0x20,%esp
c003024a:	b8 01 00 00 00       	mov    $0x1,%eax
c003024f:	82 8b 83 40 12 00 00 	orb    $0x0,0x124083(%ebx)
c0030256:	83 f8 20             	cmp    $0x20,%eax
c0030259:	7e 2f                	jle    c003028a <add_irq_handle+0x81>
c003025b:	83 ec 0c             	sub    $0xc,%esp
c003025e:	8d 83 3a c7 ff ff    	lea    -0x38c6(%ebx),%eax
c0030264:	50                   	push   %eax
c0030265:	8d 83 14 c8 ff ff    	lea    -0x37ec(%ebx),%eax
c003026b:	50                   	push   %eax
c003026c:	6a 17                	push   $0x17
c003026e:	8d 83 db c6 ff ff    	lea    -0x3925(%ebx),%eax
c0030274:	50                   	push   %eax
c0030275:	8d 83 f0 c6 ff ff    	lea    -0x3910(%ebx),%eax
c003027b:	50                   	push   %eax
c003027c:	e8 e4 fe ff ff       	call   c0030165 <printk>
c0030281:	83 c4 20             	add    $0x20,%esp
c0030284:	b8 01 00 00 00       	mov    $0x1,%eax
c0030289:	82 8b 83 40 12 00 00 	orb    $0x0,0x124083(%ebx)
c0030290:	8d 50 01             	lea    0x1(%eax),%edx
c0030293:	89 93 40 12 00 00    	mov    %edx,0x1240(%ebx)
c0030299:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
c00302a0:	8d 83 00 11 00 00    	lea    0x1100(%ebx),%eax
c00302a6:	01 d0                	add    %edx,%eax
c00302a8:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00302ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302ae:	8b 55 0c             	mov    0xc(%ebp),%edx
c00302b1:	89 10                	mov    %edx,(%eax)
c00302b3:	8b 45 08             	mov    0x8(%ebp),%eax
c00302b6:	8b 94 83 00 12 00 00 	mov    0x1200(%ebx,%eax,4),%edx
c00302bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00302c0:	89 50 04             	mov    %edx,0x4(%eax)
c00302c3:	8b 45 08             	mov    0x8(%ebp),%eax
c00302c6:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00302c9:	89 94 83 00 12 00 00 	mov    %edx,0x1200(%ebx,%eax,4)
c00302d0:	90                   	nop
c00302d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00302d4:	c9                   	leave  
c00302d5:	c3                   	ret    

c00302d6 <irq_handle>:
c00302d6:	55                   	push   %ebp
c00302d7:	89 e5                	mov    %esp,%ebp
c00302d9:	53                   	push   %ebx
c00302da:	83 ec 14             	sub    $0x14,%esp
c00302dd:	e8 d7 fe ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c00302e2:	81 c3 1e bd 00 00    	add    $0xbd1e,%ebx
c00302e8:	8b 45 08             	mov    0x8(%ebp),%eax
c00302eb:	8b 40 20             	mov    0x20(%eax),%eax
c00302ee:	89 45 f0             	mov    %eax,-0x10(%ebp)
c00302f1:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
c00302f5:	79 2a                	jns    c0030321 <irq_handle+0x4b>
c00302f7:	8d 83 24 c8 ff ff    	lea    -0x37dc(%ebx),%eax
c00302fd:	50                   	push   %eax
c00302fe:	6a 23                	push   $0x23
c0030300:	8d 83 db c6 ff ff    	lea    -0x3925(%ebx),%eax
c0030306:	50                   	push   %eax
c0030307:	8d 83 58 c7 ff ff    	lea    -0x38a8(%ebx),%eax
c003030d:	50                   	push   %eax
c003030e:	e8 52 fe ff ff       	call   c0030165 <printk>
c0030313:	83 c4 10             	add    $0x10,%esp
c0030316:	b8 01 00 00 00       	mov    $0x1,%eax
c003031b:	82 e9 c7             	sub    $0xc7,%cl
c003031e:	00 00                	add    %al,(%eax)
c0030320:	00 81 7d f0 80 00    	add    %al,0x80f07d(%ecx)
c0030326:	00 00                	add    %al,(%eax)
c0030328:	75 13                	jne    c003033d <irq_handle+0x67>
c003032a:	83 ec 0c             	sub    $0xc,%esp
c003032d:	ff 75 08             	pushl  0x8(%ebp)
c0030330:	e8 d3 16 00 00       	call   c0031a08 <do_syscall>
c0030335:	83 c4 10             	add    $0x10,%esp
c0030338:	e9 ab 00 00 00       	jmp    c00303e8 <irq_handle+0x112>
c003033d:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030344:	7f 34                	jg     c003037a <irq_handle+0xa4>
c0030346:	8b 45 08             	mov    0x8(%ebp),%eax
c0030349:	8b 40 28             	mov    0x28(%eax),%eax
c003034c:	83 ec 08             	sub    $0x8,%esp
c003034f:	50                   	push   %eax
c0030350:	ff 75 f0             	pushl  -0x10(%ebp)
c0030353:	8d 83 24 c8 ff ff    	lea    -0x37dc(%ebx),%eax
c0030359:	50                   	push   %eax
c003035a:	6a 27                	push   $0x27
c003035c:	8d 83 db c6 ff ff    	lea    -0x3925(%ebx),%eax
c0030362:	50                   	push   %eax
c0030363:	8d 83 a4 c7 ff ff    	lea    -0x385c(%ebx),%eax
c0030369:	50                   	push   %eax
c003036a:	e8 f6 fd ff ff       	call   c0030165 <printk>
c003036f:	83 c4 20             	add    $0x20,%esp
c0030372:	b8 01 00 00 00       	mov    $0x1,%eax
c0030377:	82 eb 6e             	sub    $0x6e,%bl
c003037a:	81 7d f0 e7 03 00 00 	cmpl   $0x3e7,-0x10(%ebp)
c0030381:	7e 65                	jle    c00303e8 <irq_handle+0x112>
c0030383:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030386:	2d e8 03 00 00       	sub    $0x3e8,%eax
c003038b:	89 45 ec             	mov    %eax,-0x14(%ebp)
c003038e:	83 7d ec 0f          	cmpl   $0xf,-0x14(%ebp)
c0030392:	7e 2f                	jle    c00303c3 <irq_handle+0xed>
c0030394:	83 ec 0c             	sub    $0xc,%esp
c0030397:	8d 83 fe c7 ff ff    	lea    -0x3802(%ebx),%eax
c003039d:	50                   	push   %eax
c003039e:	8d 83 24 c8 ff ff    	lea    -0x37dc(%ebx),%eax
c00303a4:	50                   	push   %eax
c00303a5:	6a 2a                	push   $0x2a
c00303a7:	8d 83 db c6 ff ff    	lea    -0x3925(%ebx),%eax
c00303ad:	50                   	push   %eax
c00303ae:	8d 83 f0 c6 ff ff    	lea    -0x3910(%ebx),%eax
c00303b4:	50                   	push   %eax
c00303b5:	e8 ab fd ff ff       	call   c0030165 <printk>
c00303ba:	83 c4 20             	add    $0x20,%esp
c00303bd:	b8 01 00 00 00       	mov    $0x1,%eax
c00303c2:	82 8b 45 ec 8b 84 83 	orb    $0x83,-0x7b7413bb(%ebx)
c00303c9:	00 12                	add    %dl,(%edx)
c00303cb:	00 00                	add    %al,(%eax)
c00303cd:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00303d0:	eb 10                	jmp    c00303e2 <irq_handle+0x10c>
c00303d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00303d5:	8b 00                	mov    (%eax),%eax
c00303d7:	ff d0                	call   *%eax
c00303d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00303dc:	8b 40 04             	mov    0x4(%eax),%eax
c00303df:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00303e2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
c00303e6:	75 ea                	jne    c00303d2 <irq_handle+0xfc>
c00303e8:	90                   	nop
c00303e9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00303ec:	c9                   	leave  
c00303ed:	c3                   	ret    

c00303ee <write_idtr>:
c00303ee:	55                   	push   %ebp
c00303ef:	89 e5                	mov    %esp,%ebp
c00303f1:	e8 6b fd ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00303f6:	05 0a bc 00 00       	add    $0xbc0a,%eax
c00303fb:	8b 55 0c             	mov    0xc(%ebp),%edx
c00303fe:	4a                   	dec    %edx
c00303ff:	66 89 90 60 1a 00 00 	mov    %dx,0x1a60(%eax)
c0030406:	8b 55 08             	mov    0x8(%ebp),%edx
c0030409:	66 89 90 62 1a 00 00 	mov    %dx,0x1a62(%eax)
c0030410:	8b 55 08             	mov    0x8(%ebp),%edx
c0030413:	c1 ea 10             	shr    $0x10,%edx
c0030416:	66 89 90 64 1a 00 00 	mov    %dx,0x1a64(%eax)
c003041d:	8d 80 60 1a 00 00    	lea    0x1a60(%eax),%eax
c0030423:	0f 01 18             	lidtl  (%eax)
c0030426:	90                   	nop
c0030427:	5d                   	pop    %ebp
c0030428:	c3                   	ret    

c0030429 <sti>:
c0030429:	55                   	push   %ebp
c003042a:	89 e5                	mov    %esp,%ebp
c003042c:	e8 30 fd ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030431:	05 cf bb 00 00       	add    $0xbbcf,%eax
c0030436:	fb                   	sti    
c0030437:	90                   	nop
c0030438:	5d                   	pop    %ebp
c0030439:	c3                   	ret    

c003043a <set_intr>:
c003043a:	55                   	push   %ebp
c003043b:	89 e5                	mov    %esp,%ebp
c003043d:	e8 1f fd ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030442:	05 be bb 00 00       	add    $0xbbbe,%eax
c0030447:	8b 45 10             	mov    0x10(%ebp),%eax
c003044a:	8b 55 08             	mov    0x8(%ebp),%edx
c003044d:	66 89 02             	mov    %ax,(%edx)
c0030450:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030453:	8b 55 08             	mov    0x8(%ebp),%edx
c0030456:	66 89 42 02          	mov    %ax,0x2(%edx)
c003045a:	8b 45 08             	mov    0x8(%ebp),%eax
c003045d:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c0030461:	8b 45 08             	mov    0x8(%ebp),%eax
c0030464:	8a 50 05             	mov    0x5(%eax),%dl
c0030467:	83 e2 f0             	and    $0xfffffff0,%edx
c003046a:	83 ca 0e             	or     $0xe,%edx
c003046d:	88 50 05             	mov    %dl,0x5(%eax)
c0030470:	8b 45 08             	mov    0x8(%ebp),%eax
c0030473:	8a 50 05             	mov    0x5(%eax),%dl
c0030476:	83 e2 ef             	and    $0xffffffef,%edx
c0030479:	88 50 05             	mov    %dl,0x5(%eax)
c003047c:	8b 45 14             	mov    0x14(%ebp),%eax
c003047f:	83 e0 03             	and    $0x3,%eax
c0030482:	88 c2                	mov    %al,%dl
c0030484:	8b 45 08             	mov    0x8(%ebp),%eax
c0030487:	83 e2 03             	and    $0x3,%edx
c003048a:	88 d1                	mov    %dl,%cl
c003048c:	c1 e1 05             	shl    $0x5,%ecx
c003048f:	8a 50 05             	mov    0x5(%eax),%dl
c0030492:	83 e2 9f             	and    $0xffffff9f,%edx
c0030495:	09 ca                	or     %ecx,%edx
c0030497:	88 50 05             	mov    %dl,0x5(%eax)
c003049a:	8b 45 08             	mov    0x8(%ebp),%eax
c003049d:	8a 50 05             	mov    0x5(%eax),%dl
c00304a0:	83 ca 80             	or     $0xffffff80,%edx
c00304a3:	88 50 05             	mov    %dl,0x5(%eax)
c00304a6:	8b 45 10             	mov    0x10(%ebp),%eax
c00304a9:	c1 e8 10             	shr    $0x10,%eax
c00304ac:	8b 55 08             	mov    0x8(%ebp),%edx
c00304af:	66 89 42 06          	mov    %ax,0x6(%edx)
c00304b3:	90                   	nop
c00304b4:	5d                   	pop    %ebp
c00304b5:	c3                   	ret    

c00304b6 <set_trap>:
c00304b6:	55                   	push   %ebp
c00304b7:	89 e5                	mov    %esp,%ebp
c00304b9:	e8 a3 fc ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00304be:	05 42 bb 00 00       	add    $0xbb42,%eax
c00304c3:	8b 45 10             	mov    0x10(%ebp),%eax
c00304c6:	8b 55 08             	mov    0x8(%ebp),%edx
c00304c9:	66 89 02             	mov    %ax,(%edx)
c00304cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00304cf:	8b 55 08             	mov    0x8(%ebp),%edx
c00304d2:	66 89 42 02          	mov    %ax,0x2(%edx)
c00304d6:	8b 45 08             	mov    0x8(%ebp),%eax
c00304d9:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c00304dd:	8b 45 08             	mov    0x8(%ebp),%eax
c00304e0:	8a 50 05             	mov    0x5(%eax),%dl
c00304e3:	83 ca 0f             	or     $0xf,%edx
c00304e6:	88 50 05             	mov    %dl,0x5(%eax)
c00304e9:	8b 45 08             	mov    0x8(%ebp),%eax
c00304ec:	8a 50 05             	mov    0x5(%eax),%dl
c00304ef:	83 e2 ef             	and    $0xffffffef,%edx
c00304f2:	88 50 05             	mov    %dl,0x5(%eax)
c00304f5:	8b 45 14             	mov    0x14(%ebp),%eax
c00304f8:	83 e0 03             	and    $0x3,%eax
c00304fb:	88 c2                	mov    %al,%dl
c00304fd:	8b 45 08             	mov    0x8(%ebp),%eax
c0030500:	83 e2 03             	and    $0x3,%edx
c0030503:	88 d1                	mov    %dl,%cl
c0030505:	c1 e1 05             	shl    $0x5,%ecx
c0030508:	8a 50 05             	mov    0x5(%eax),%dl
c003050b:	83 e2 9f             	and    $0xffffff9f,%edx
c003050e:	09 ca                	or     %ecx,%edx
c0030510:	88 50 05             	mov    %dl,0x5(%eax)
c0030513:	8b 45 08             	mov    0x8(%ebp),%eax
c0030516:	8a 50 05             	mov    0x5(%eax),%dl
c0030519:	83 ca 80             	or     $0xffffff80,%edx
c003051c:	88 50 05             	mov    %dl,0x5(%eax)
c003051f:	8b 45 10             	mov    0x10(%ebp),%eax
c0030522:	c1 e8 10             	shr    $0x10,%eax
c0030525:	8b 55 08             	mov    0x8(%ebp),%edx
c0030528:	66 89 42 06          	mov    %ax,0x6(%edx)
c003052c:	90                   	nop
c003052d:	5d                   	pop    %ebp
c003052e:	c3                   	ret    

c003052f <init_idt>:
c003052f:	55                   	push   %ebp
c0030530:	89 e5                	mov    %esp,%ebp
c0030532:	53                   	push   %ebx
c0030533:	83 ec 10             	sub    $0x10,%esp
c0030536:	e8 7e fc ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c003053b:	81 c3 c5 ba 00 00    	add    $0xbac5,%ebx
c0030541:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0030548:	eb 2b                	jmp    c0030575 <init_idt+0x46>
c003054a:	c7 c0 c4 00 03 c0    	mov    $0xc00300c4,%eax
c0030550:	89 c2                	mov    %eax,%edx
c0030552:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0030555:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
c003055c:	8d 83 60 12 00 00    	lea    0x1260(%ebx),%eax
c0030562:	01 c8                	add    %ecx,%eax
c0030564:	6a 00                	push   $0x0
c0030566:	52                   	push   %edx
c0030567:	6a 08                	push   $0x8
c0030569:	50                   	push   %eax
c003056a:	e8 47 ff ff ff       	call   c00304b6 <set_trap>
c003056f:	83 c4 10             	add    $0x10,%esp
c0030572:	ff 45 f8             	incl   -0x8(%ebp)
c0030575:	81 7d f8 ff 00 00 00 	cmpl   $0xff,-0x8(%ebp)
c003057c:	7e cc                	jle    c003054a <init_idt+0x1b>
c003057e:	c7 c0 52 00 03 c0    	mov    $0xc0030052,%eax
c0030584:	6a 00                	push   $0x0
c0030586:	50                   	push   %eax
c0030587:	6a 08                	push   $0x8
c0030589:	8d 83 60 12 00 00    	lea    0x1260(%ebx),%eax
c003058f:	50                   	push   %eax
c0030590:	e8 21 ff ff ff       	call   c00304b6 <set_trap>
c0030595:	83 c4 10             	add    $0x10,%esp
c0030598:	c7 c0 58 00 03 c0    	mov    $0xc0030058,%eax
c003059e:	89 c2                	mov    %eax,%edx
c00305a0:	8d 83 68 12 00 00    	lea    0x1268(%ebx),%eax
c00305a6:	6a 00                	push   $0x0
c00305a8:	52                   	push   %edx
c00305a9:	6a 08                	push   $0x8
c00305ab:	50                   	push   %eax
c00305ac:	e8 05 ff ff ff       	call   c00304b6 <set_trap>
c00305b1:	83 c4 10             	add    $0x10,%esp
c00305b4:	c7 c0 5e 00 03 c0    	mov    $0xc003005e,%eax
c00305ba:	89 c2                	mov    %eax,%edx
c00305bc:	8d 83 70 12 00 00    	lea    0x1270(%ebx),%eax
c00305c2:	6a 00                	push   $0x0
c00305c4:	52                   	push   %edx
c00305c5:	6a 08                	push   $0x8
c00305c7:	50                   	push   %eax
c00305c8:	e8 e9 fe ff ff       	call   c00304b6 <set_trap>
c00305cd:	83 c4 10             	add    $0x10,%esp
c00305d0:	c7 c0 64 00 03 c0    	mov    $0xc0030064,%eax
c00305d6:	89 c2                	mov    %eax,%edx
c00305d8:	8d 83 78 12 00 00    	lea    0x1278(%ebx),%eax
c00305de:	6a 00                	push   $0x0
c00305e0:	52                   	push   %edx
c00305e1:	6a 08                	push   $0x8
c00305e3:	50                   	push   %eax
c00305e4:	e8 cd fe ff ff       	call   c00304b6 <set_trap>
c00305e9:	83 c4 10             	add    $0x10,%esp
c00305ec:	c7 c0 6a 00 03 c0    	mov    $0xc003006a,%eax
c00305f2:	89 c2                	mov    %eax,%edx
c00305f4:	8d 83 80 12 00 00    	lea    0x1280(%ebx),%eax
c00305fa:	6a 00                	push   $0x0
c00305fc:	52                   	push   %edx
c00305fd:	6a 08                	push   $0x8
c00305ff:	50                   	push   %eax
c0030600:	e8 b1 fe ff ff       	call   c00304b6 <set_trap>
c0030605:	83 c4 10             	add    $0x10,%esp
c0030608:	c7 c0 70 00 03 c0    	mov    $0xc0030070,%eax
c003060e:	89 c2                	mov    %eax,%edx
c0030610:	8d 83 88 12 00 00    	lea    0x1288(%ebx),%eax
c0030616:	6a 00                	push   $0x0
c0030618:	52                   	push   %edx
c0030619:	6a 08                	push   $0x8
c003061b:	50                   	push   %eax
c003061c:	e8 95 fe ff ff       	call   c00304b6 <set_trap>
c0030621:	83 c4 10             	add    $0x10,%esp
c0030624:	c7 c0 76 00 03 c0    	mov    $0xc0030076,%eax
c003062a:	89 c2                	mov    %eax,%edx
c003062c:	8d 83 90 12 00 00    	lea    0x1290(%ebx),%eax
c0030632:	6a 00                	push   $0x0
c0030634:	52                   	push   %edx
c0030635:	6a 08                	push   $0x8
c0030637:	50                   	push   %eax
c0030638:	e8 79 fe ff ff       	call   c00304b6 <set_trap>
c003063d:	83 c4 10             	add    $0x10,%esp
c0030640:	c7 c0 7c 00 03 c0    	mov    $0xc003007c,%eax
c0030646:	89 c2                	mov    %eax,%edx
c0030648:	8d 83 98 12 00 00    	lea    0x1298(%ebx),%eax
c003064e:	6a 00                	push   $0x0
c0030650:	52                   	push   %edx
c0030651:	6a 08                	push   $0x8
c0030653:	50                   	push   %eax
c0030654:	e8 5d fe ff ff       	call   c00304b6 <set_trap>
c0030659:	83 c4 10             	add    $0x10,%esp
c003065c:	c7 c0 82 00 03 c0    	mov    $0xc0030082,%eax
c0030662:	89 c2                	mov    %eax,%edx
c0030664:	8d 83 a0 12 00 00    	lea    0x12a0(%ebx),%eax
c003066a:	6a 00                	push   $0x0
c003066c:	52                   	push   %edx
c003066d:	6a 08                	push   $0x8
c003066f:	50                   	push   %eax
c0030670:	e8 41 fe ff ff       	call   c00304b6 <set_trap>
c0030675:	83 c4 10             	add    $0x10,%esp
c0030678:	c7 c0 86 00 03 c0    	mov    $0xc0030086,%eax
c003067e:	89 c2                	mov    %eax,%edx
c0030680:	8d 83 a8 12 00 00    	lea    0x12a8(%ebx),%eax
c0030686:	6a 00                	push   $0x0
c0030688:	52                   	push   %edx
c0030689:	6a 08                	push   $0x8
c003068b:	50                   	push   %eax
c003068c:	e8 25 fe ff ff       	call   c00304b6 <set_trap>
c0030691:	83 c4 10             	add    $0x10,%esp
c0030694:	c7 c0 8c 00 03 c0    	mov    $0xc003008c,%eax
c003069a:	89 c2                	mov    %eax,%edx
c003069c:	8d 83 b0 12 00 00    	lea    0x12b0(%ebx),%eax
c00306a2:	6a 00                	push   $0x0
c00306a4:	52                   	push   %edx
c00306a5:	6a 08                	push   $0x8
c00306a7:	50                   	push   %eax
c00306a8:	e8 09 fe ff ff       	call   c00304b6 <set_trap>
c00306ad:	83 c4 10             	add    $0x10,%esp
c00306b0:	c7 c0 90 00 03 c0    	mov    $0xc0030090,%eax
c00306b6:	89 c2                	mov    %eax,%edx
c00306b8:	8d 83 b8 12 00 00    	lea    0x12b8(%ebx),%eax
c00306be:	6a 00                	push   $0x0
c00306c0:	52                   	push   %edx
c00306c1:	6a 08                	push   $0x8
c00306c3:	50                   	push   %eax
c00306c4:	e8 ed fd ff ff       	call   c00304b6 <set_trap>
c00306c9:	83 c4 10             	add    $0x10,%esp
c00306cc:	c7 c0 94 00 03 c0    	mov    $0xc0030094,%eax
c00306d2:	89 c2                	mov    %eax,%edx
c00306d4:	8d 83 c0 12 00 00    	lea    0x12c0(%ebx),%eax
c00306da:	6a 00                	push   $0x0
c00306dc:	52                   	push   %edx
c00306dd:	6a 08                	push   $0x8
c00306df:	50                   	push   %eax
c00306e0:	e8 d1 fd ff ff       	call   c00304b6 <set_trap>
c00306e5:	83 c4 10             	add    $0x10,%esp
c00306e8:	c7 c0 98 00 03 c0    	mov    $0xc0030098,%eax
c00306ee:	89 c2                	mov    %eax,%edx
c00306f0:	8d 83 c8 12 00 00    	lea    0x12c8(%ebx),%eax
c00306f6:	6a 00                	push   $0x0
c00306f8:	52                   	push   %edx
c00306f9:	6a 08                	push   $0x8
c00306fb:	50                   	push   %eax
c00306fc:	e8 b5 fd ff ff       	call   c00304b6 <set_trap>
c0030701:	83 c4 10             	add    $0x10,%esp
c0030704:	c7 c0 9c 00 03 c0    	mov    $0xc003009c,%eax
c003070a:	89 c2                	mov    %eax,%edx
c003070c:	8d 83 d0 12 00 00    	lea    0x12d0(%ebx),%eax
c0030712:	6a 00                	push   $0x0
c0030714:	52                   	push   %edx
c0030715:	6a 08                	push   $0x8
c0030717:	50                   	push   %eax
c0030718:	e8 99 fd ff ff       	call   c00304b6 <set_trap>
c003071d:	83 c4 10             	add    $0x10,%esp
c0030720:	c7 c0 a0 00 03 c0    	mov    $0xc00300a0,%eax
c0030726:	89 c2                	mov    %eax,%edx
c0030728:	8d 83 60 16 00 00    	lea    0x1660(%ebx),%eax
c003072e:	6a 03                	push   $0x3
c0030730:	52                   	push   %edx
c0030731:	6a 08                	push   $0x8
c0030733:	50                   	push   %eax
c0030734:	e8 7d fd ff ff       	call   c00304b6 <set_trap>
c0030739:	83 c4 10             	add    $0x10,%esp
c003073c:	c7 c0 a9 00 03 c0    	mov    $0xc00300a9,%eax
c0030742:	89 c2                	mov    %eax,%edx
c0030744:	8d 83 60 13 00 00    	lea    0x1360(%ebx),%eax
c003074a:	6a 00                	push   $0x0
c003074c:	52                   	push   %edx
c003074d:	6a 08                	push   $0x8
c003074f:	50                   	push   %eax
c0030750:	e8 e5 fc ff ff       	call   c003043a <set_intr>
c0030755:	83 c4 10             	add    $0x10,%esp
c0030758:	c7 c0 b2 00 03 c0    	mov    $0xc00300b2,%eax
c003075e:	89 c2                	mov    %eax,%edx
c0030760:	8d 83 68 13 00 00    	lea    0x1368(%ebx),%eax
c0030766:	6a 00                	push   $0x0
c0030768:	52                   	push   %edx
c0030769:	6a 08                	push   $0x8
c003076b:	50                   	push   %eax
c003076c:	e8 c9 fc ff ff       	call   c003043a <set_intr>
c0030771:	83 c4 10             	add    $0x10,%esp
c0030774:	c7 c0 bb 00 03 c0    	mov    $0xc00300bb,%eax
c003077a:	89 c2                	mov    %eax,%edx
c003077c:	8d 83 d0 13 00 00    	lea    0x13d0(%ebx),%eax
c0030782:	6a 00                	push   $0x0
c0030784:	52                   	push   %edx
c0030785:	6a 08                	push   $0x8
c0030787:	50                   	push   %eax
c0030788:	e8 ad fc ff ff       	call   c003043a <set_intr>
c003078d:	83 c4 10             	add    $0x10,%esp
c0030790:	68 00 08 00 00       	push   $0x800
c0030795:	8d 83 60 12 00 00    	lea    0x1260(%ebx),%eax
c003079b:	50                   	push   %eax
c003079c:	e8 4d fc ff ff       	call   c00303ee <write_idtr>
c00307a1:	83 c4 08             	add    $0x8,%esp
c00307a4:	e8 80 fc ff ff       	call   c0030429 <sti>
c00307a9:	90                   	nop
c00307aa:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00307ad:	c9                   	leave  
c00307ae:	c3                   	ret    

c00307af <out_byte>:
c00307af:	55                   	push   %ebp
c00307b0:	89 e5                	mov    %esp,%ebp
c00307b2:	83 ec 08             	sub    $0x8,%esp
c00307b5:	e8 a7 f9 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00307ba:	05 46 b8 00 00       	add    $0xb846,%eax
c00307bf:	8b 45 08             	mov    0x8(%ebp),%eax
c00307c2:	8b 55 0c             	mov    0xc(%ebp),%edx
c00307c5:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c00307c9:	88 55 f8             	mov    %dl,-0x8(%ebp)
c00307cc:	8a 45 f8             	mov    -0x8(%ebp),%al
c00307cf:	8b 55 fc             	mov    -0x4(%ebp),%edx
c00307d2:	ee                   	out    %al,(%dx)
c00307d3:	90                   	nop
c00307d4:	c9                   	leave  
c00307d5:	c3                   	ret    

c00307d6 <init_i8259>:
c00307d6:	55                   	push   %ebp
c00307d7:	89 e5                	mov    %esp,%ebp
c00307d9:	e8 83 f9 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00307de:	05 22 b8 00 00       	add    $0xb822,%eax
c00307e3:	68 ff 00 00 00       	push   $0xff
c00307e8:	6a 21                	push   $0x21
c00307ea:	e8 c0 ff ff ff       	call   c00307af <out_byte>
c00307ef:	83 c4 08             	add    $0x8,%esp
c00307f2:	68 ff 00 00 00       	push   $0xff
c00307f7:	68 a1 00 00 00       	push   $0xa1
c00307fc:	e8 ae ff ff ff       	call   c00307af <out_byte>
c0030801:	83 c4 08             	add    $0x8,%esp
c0030804:	6a 11                	push   $0x11
c0030806:	6a 20                	push   $0x20
c0030808:	e8 a2 ff ff ff       	call   c00307af <out_byte>
c003080d:	83 c4 08             	add    $0x8,%esp
c0030810:	6a 20                	push   $0x20
c0030812:	6a 21                	push   $0x21
c0030814:	e8 96 ff ff ff       	call   c00307af <out_byte>
c0030819:	83 c4 08             	add    $0x8,%esp
c003081c:	6a 04                	push   $0x4
c003081e:	6a 21                	push   $0x21
c0030820:	e8 8a ff ff ff       	call   c00307af <out_byte>
c0030825:	83 c4 08             	add    $0x8,%esp
c0030828:	6a 03                	push   $0x3
c003082a:	6a 21                	push   $0x21
c003082c:	e8 7e ff ff ff       	call   c00307af <out_byte>
c0030831:	83 c4 08             	add    $0x8,%esp
c0030834:	6a 11                	push   $0x11
c0030836:	68 a0 00 00 00       	push   $0xa0
c003083b:	e8 6f ff ff ff       	call   c00307af <out_byte>
c0030840:	83 c4 08             	add    $0x8,%esp
c0030843:	6a 28                	push   $0x28
c0030845:	68 a1 00 00 00       	push   $0xa1
c003084a:	e8 60 ff ff ff       	call   c00307af <out_byte>
c003084f:	83 c4 08             	add    $0x8,%esp
c0030852:	6a 02                	push   $0x2
c0030854:	68 a1 00 00 00       	push   $0xa1
c0030859:	e8 51 ff ff ff       	call   c00307af <out_byte>
c003085e:	83 c4 08             	add    $0x8,%esp
c0030861:	6a 03                	push   $0x3
c0030863:	68 a1 00 00 00       	push   $0xa1
c0030868:	e8 42 ff ff ff       	call   c00307af <out_byte>
c003086d:	83 c4 08             	add    $0x8,%esp
c0030870:	6a 68                	push   $0x68
c0030872:	6a 20                	push   $0x20
c0030874:	e8 36 ff ff ff       	call   c00307af <out_byte>
c0030879:	83 c4 08             	add    $0x8,%esp
c003087c:	6a 0a                	push   $0xa
c003087e:	6a 20                	push   $0x20
c0030880:	e8 2a ff ff ff       	call   c00307af <out_byte>
c0030885:	83 c4 08             	add    $0x8,%esp
c0030888:	6a 68                	push   $0x68
c003088a:	68 a0 00 00 00       	push   $0xa0
c003088f:	e8 1b ff ff ff       	call   c00307af <out_byte>
c0030894:	83 c4 08             	add    $0x8,%esp
c0030897:	6a 0a                	push   $0xa
c0030899:	68 a0 00 00 00       	push   $0xa0
c003089e:	e8 0c ff ff ff       	call   c00307af <out_byte>
c00308a3:	83 c4 08             	add    $0x8,%esp
c00308a6:	90                   	nop
c00308a7:	c9                   	leave  
c00308a8:	c3                   	ret    

c00308a9 <cache_init>:
c00308a9:	55                   	push   %ebp
c00308aa:	89 e5                	mov    %esp,%ebp
c00308ac:	53                   	push   %ebx
c00308ad:	83 ec 10             	sub    $0x10,%esp
c00308b0:	e8 fd 01 00 00       	call   c0030ab2 <__x86.get_pc_thunk.dx>
c00308b5:	81 c2 4b b7 00 00    	add    $0xb74b,%edx
c00308bb:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c00308c2:	eb 1b                	jmp    c00308df <cache_init+0x36>
c00308c4:	8b 4d f8             	mov    -0x8(%ebp),%ecx
c00308c7:	8d 9a 84 1a 00 00    	lea    0x1a84(%edx),%ebx
c00308cd:	89 c8                	mov    %ecx,%eax
c00308cf:	c1 e0 06             	shl    $0x6,%eax
c00308d2:	01 c8                	add    %ecx,%eax
c00308d4:	c1 e0 03             	shl    $0x3,%eax
c00308d7:	01 d8                	add    %ebx,%eax
c00308d9:	c6 00 00             	movb   $0x0,(%eax)
c00308dc:	ff 45 f8             	incl   -0x8(%ebp)
c00308df:	83 7d f8 7f          	cmpl   $0x7f,-0x8(%ebp)
c00308e3:	7e df                	jle    c00308c4 <cache_init+0x1b>
c00308e5:	90                   	nop
c00308e6:	83 c4 10             	add    $0x10,%esp
c00308e9:	5b                   	pop    %ebx
c00308ea:	5d                   	pop    %ebp
c00308eb:	c3                   	ret    

c00308ec <cache_writeback>:
c00308ec:	55                   	push   %ebp
c00308ed:	89 e5                	mov    %esp,%ebp
c00308ef:	53                   	push   %ebx
c00308f0:	83 ec 14             	sub    $0x14,%esp
c00308f3:	e8 c1 f8 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c00308f8:	81 c3 08 b7 00 00    	add    $0xb708,%ebx
c00308fe:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030905:	eb 72                	jmp    c0030979 <cache_writeback+0x8d>
c0030907:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003090a:	8d 8b 85 1a 00 00    	lea    0x1a85(%ebx),%ecx
c0030910:	89 d0                	mov    %edx,%eax
c0030912:	c1 e0 06             	shl    $0x6,%eax
c0030915:	01 d0                	add    %edx,%eax
c0030917:	c1 e0 03             	shl    $0x3,%eax
c003091a:	01 c8                	add    %ecx,%eax
c003091c:	8a 00                	mov    (%eax),%al
c003091e:	3c 01                	cmp    $0x1,%al
c0030920:	75 54                	jne    c0030976 <cache_writeback+0x8a>
c0030922:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030925:	8d 8b 80 1a 00 00    	lea    0x1a80(%ebx),%ecx
c003092b:	89 d0                	mov    %edx,%eax
c003092d:	c1 e0 06             	shl    $0x6,%eax
c0030930:	01 d0                	add    %edx,%eax
c0030932:	c1 e0 03             	shl    $0x3,%eax
c0030935:	01 c8                	add    %ecx,%eax
c0030937:	8b 10                	mov    (%eax),%edx
c0030939:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c003093c:	89 c8                	mov    %ecx,%eax
c003093e:	c1 e0 06             	shl    $0x6,%eax
c0030941:	01 c8                	add    %ecx,%eax
c0030943:	c1 e0 03             	shl    $0x3,%eax
c0030946:	8d 8b 80 1a 00 00    	lea    0x1a80(%ebx),%ecx
c003094c:	01 c8                	add    %ecx,%eax
c003094e:	83 c0 06             	add    $0x6,%eax
c0030951:	83 ec 08             	sub    $0x8,%esp
c0030954:	52                   	push   %edx
c0030955:	50                   	push   %eax
c0030956:	e8 f4 05 00 00       	call   c0030f4f <disk_do_write>
c003095b:	83 c4 10             	add    $0x10,%esp
c003095e:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030961:	8d 8b 85 1a 00 00    	lea    0x1a85(%ebx),%ecx
c0030967:	89 d0                	mov    %edx,%eax
c0030969:	c1 e0 06             	shl    $0x6,%eax
c003096c:	01 d0                	add    %edx,%eax
c003096e:	c1 e0 03             	shl    $0x3,%eax
c0030971:	01 c8                	add    %ecx,%eax
c0030973:	c6 00 00             	movb   $0x0,(%eax)
c0030976:	ff 45 f4             	incl   -0xc(%ebp)
c0030979:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
c003097d:	7e 88                	jle    c0030907 <cache_writeback+0x1b>
c003097f:	90                   	nop
c0030980:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030983:	c9                   	leave  
c0030984:	c3                   	ret    

c0030985 <cache_fetch>:
c0030985:	55                   	push   %ebp
c0030986:	89 e5                	mov    %esp,%ebp
c0030988:	53                   	push   %ebx
c0030989:	83 ec 14             	sub    $0x14,%esp
c003098c:	e8 28 f8 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0030991:	81 c3 6f b6 00 00    	add    $0xb66f,%ebx
c0030997:	8b 45 08             	mov    0x8(%ebp),%eax
c003099a:	83 e0 7f             	and    $0x7f,%eax
c003099d:	89 c2                	mov    %eax,%edx
c003099f:	89 d0                	mov    %edx,%eax
c00309a1:	c1 e0 06             	shl    $0x6,%eax
c00309a4:	01 d0                	add    %edx,%eax
c00309a6:	c1 e0 03             	shl    $0x3,%eax
c00309a9:	8d 93 80 1a 00 00    	lea    0x1a80(%ebx),%edx
c00309af:	01 d0                	add    %edx,%eax
c00309b1:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00309b4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309b7:	8a 40 04             	mov    0x4(%eax),%al
c00309ba:	3c 01                	cmp    $0x1,%al
c00309bc:	75 0a                	jne    c00309c8 <cache_fetch+0x43>
c00309be:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309c1:	8b 00                	mov    (%eax),%eax
c00309c3:	3b 45 08             	cmp    0x8(%ebp),%eax
c00309c6:	74 57                	je     c0030a1f <cache_fetch+0x9a>
c00309c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309cb:	8a 40 04             	mov    0x4(%eax),%al
c00309ce:	3c 01                	cmp    $0x1,%al
c00309d0:	75 22                	jne    c00309f4 <cache_fetch+0x6f>
c00309d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309d5:	8a 40 05             	mov    0x5(%eax),%al
c00309d8:	3c 01                	cmp    $0x1,%al
c00309da:	75 18                	jne    c00309f4 <cache_fetch+0x6f>
c00309dc:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309df:	8b 00                	mov    (%eax),%eax
c00309e1:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00309e4:	83 c2 06             	add    $0x6,%edx
c00309e7:	83 ec 08             	sub    $0x8,%esp
c00309ea:	50                   	push   %eax
c00309eb:	52                   	push   %edx
c00309ec:	e8 5e 05 00 00       	call   c0030f4f <disk_do_write>
c00309f1:	83 c4 10             	add    $0x10,%esp
c00309f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00309f7:	83 c0 06             	add    $0x6,%eax
c00309fa:	83 ec 08             	sub    $0x8,%esp
c00309fd:	ff 75 08             	pushl  0x8(%ebp)
c0030a00:	50                   	push   %eax
c0030a01:	e8 de 04 00 00       	call   c0030ee4 <disk_do_read>
c0030a06:	83 c4 10             	add    $0x10,%esp
c0030a09:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a0c:	c6 40 04 01          	movb   $0x1,0x4(%eax)
c0030a10:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a13:	8b 55 08             	mov    0x8(%ebp),%edx
c0030a16:	89 10                	mov    %edx,(%eax)
c0030a18:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a1b:	c6 40 05 00          	movb   $0x0,0x5(%eax)
c0030a1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030a22:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030a25:	c9                   	leave  
c0030a26:	c3                   	ret    

c0030a27 <read_byte>:
c0030a27:	55                   	push   %ebp
c0030a28:	89 e5                	mov    %esp,%ebp
c0030a2a:	83 ec 18             	sub    $0x18,%esp
c0030a2d:	e8 2f f7 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030a32:	05 ce b5 00 00       	add    $0xb5ce,%eax
c0030a37:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a3a:	c1 e8 09             	shr    $0x9,%eax
c0030a3d:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030a40:	83 ec 0c             	sub    $0xc,%esp
c0030a43:	ff 75 f4             	pushl  -0xc(%ebp)
c0030a46:	e8 3a ff ff ff       	call   c0030985 <cache_fetch>
c0030a4b:	83 c4 10             	add    $0x10,%esp
c0030a4e:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030a51:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a54:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030a59:	89 c2                	mov    %eax,%edx
c0030a5b:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030a5e:	8a 44 10 06          	mov    0x6(%eax,%edx,1),%al
c0030a62:	c9                   	leave  
c0030a63:	c3                   	ret    

c0030a64 <write_byte>:
c0030a64:	55                   	push   %ebp
c0030a65:	89 e5                	mov    %esp,%ebp
c0030a67:	83 ec 28             	sub    $0x28,%esp
c0030a6a:	e8 f2 f6 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030a6f:	05 91 b5 00 00       	add    $0xb591,%eax
c0030a74:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030a77:	88 45 e4             	mov    %al,-0x1c(%ebp)
c0030a7a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a7d:	c1 e8 09             	shr    $0x9,%eax
c0030a80:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0030a83:	83 ec 0c             	sub    $0xc,%esp
c0030a86:	ff 75 f4             	pushl  -0xc(%ebp)
c0030a89:	e8 f7 fe ff ff       	call   c0030985 <cache_fetch>
c0030a8e:	83 c4 10             	add    $0x10,%esp
c0030a91:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0030a94:	8b 45 08             	mov    0x8(%ebp),%eax
c0030a97:	25 ff 01 00 00       	and    $0x1ff,%eax
c0030a9c:	89 c1                	mov    %eax,%ecx
c0030a9e:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030aa1:	8a 55 e4             	mov    -0x1c(%ebp),%dl
c0030aa4:	88 54 08 06          	mov    %dl,0x6(%eax,%ecx,1)
c0030aa8:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0030aab:	c6 40 05 01          	movb   $0x1,0x5(%eax)
c0030aaf:	90                   	nop
c0030ab0:	c9                   	leave  
c0030ab1:	c3                   	ret    

c0030ab2 <__x86.get_pc_thunk.dx>:
c0030ab2:	8b 14 24             	mov    (%esp),%edx
c0030ab5:	c3                   	ret    

c0030ab6 <wait_intr>:
c0030ab6:	55                   	push   %ebp
c0030ab7:	89 e5                	mov    %esp,%ebp
c0030ab9:	e8 a3 f6 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030abe:	05 42 b5 00 00       	add    $0xb542,%eax
c0030ac3:	f4                   	hlt    
c0030ac4:	90                   	nop
c0030ac5:	5d                   	pop    %ebp
c0030ac6:	c3                   	ret    

c0030ac7 <ide_read>:
c0030ac7:	55                   	push   %ebp
c0030ac8:	89 e5                	mov    %esp,%ebp
c0030aca:	56                   	push   %esi
c0030acb:	53                   	push   %ebx
c0030acc:	83 ec 10             	sub    $0x10,%esp
c0030acf:	e8 e5 f6 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0030ad4:	81 c3 2c b5 00 00    	add    $0xb52c,%ebx
c0030ada:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030ae1:	eb 22                	jmp    c0030b05 <ide_read+0x3e>
c0030ae3:	8b 55 08             	mov    0x8(%ebp),%edx
c0030ae6:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030ae9:	8d 34 02             	lea    (%edx,%eax,1),%esi
c0030aec:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030aef:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030af2:	01 d0                	add    %edx,%eax
c0030af4:	83 ec 0c             	sub    $0xc,%esp
c0030af7:	50                   	push   %eax
c0030af8:	e8 2a ff ff ff       	call   c0030a27 <read_byte>
c0030afd:	83 c4 10             	add    $0x10,%esp
c0030b00:	88 06                	mov    %al,(%esi)
c0030b02:	ff 45 f4             	incl   -0xc(%ebp)
c0030b05:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030b08:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030b0b:	72 d6                	jb     c0030ae3 <ide_read+0x1c>
c0030b0d:	90                   	nop
c0030b0e:	8d 65 f8             	lea    -0x8(%ebp),%esp
c0030b11:	5b                   	pop    %ebx
c0030b12:	5e                   	pop    %esi
c0030b13:	5d                   	pop    %ebp
c0030b14:	c3                   	ret    

c0030b15 <ide_write>:
c0030b15:	55                   	push   %ebp
c0030b16:	89 e5                	mov    %esp,%ebp
c0030b18:	53                   	push   %ebx
c0030b19:	83 ec 14             	sub    $0x14,%esp
c0030b1c:	e8 98 f6 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0030b21:	81 c3 df b4 00 00    	add    $0xb4df,%ebx
c0030b27:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030b2e:	eb 25                	jmp    c0030b55 <ide_write+0x40>
c0030b30:	8b 55 08             	mov    0x8(%ebp),%edx
c0030b33:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030b36:	01 d0                	add    %edx,%eax
c0030b38:	8a 00                	mov    (%eax),%al
c0030b3a:	0f b6 c0             	movzbl %al,%eax
c0030b3d:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0030b40:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0030b43:	01 ca                	add    %ecx,%edx
c0030b45:	83 ec 08             	sub    $0x8,%esp
c0030b48:	50                   	push   %eax
c0030b49:	52                   	push   %edx
c0030b4a:	e8 15 ff ff ff       	call   c0030a64 <write_byte>
c0030b4f:	83 c4 10             	add    $0x10,%esp
c0030b52:	ff 45 f4             	incl   -0xc(%ebp)
c0030b55:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030b58:	3b 45 10             	cmp    0x10(%ebp),%eax
c0030b5b:	72 d3                	jb     c0030b30 <ide_write+0x1b>
c0030b5d:	90                   	nop
c0030b5e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030b61:	c9                   	leave  
c0030b62:	c3                   	ret    

c0030b63 <ide_writeback>:
c0030b63:	55                   	push   %ebp
c0030b64:	89 e5                	mov    %esp,%ebp
c0030b66:	53                   	push   %ebx
c0030b67:	83 ec 04             	sub    $0x4,%esp
c0030b6a:	e8 4a f6 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0030b6f:	81 c3 91 b4 00 00    	add    $0xb491,%ebx
c0030b75:	8b 83 84 1e 01 00    	mov    0x11e84(%ebx),%eax
c0030b7b:	40                   	inc    %eax
c0030b7c:	89 83 84 1e 01 00    	mov    %eax,0x11e84(%ebx)
c0030b82:	8b 83 84 1e 01 00    	mov    0x11e84(%ebx),%eax
c0030b88:	83 f8 64             	cmp    $0x64,%eax
c0030b8b:	75 0f                	jne    c0030b9c <ide_writeback+0x39>
c0030b8d:	e8 5a fd ff ff       	call   c00308ec <cache_writeback>
c0030b92:	c7 83 84 1e 01 00 00 	movl   $0x0,0x11e84(%ebx)
c0030b99:	00 00 00 
c0030b9c:	90                   	nop
c0030b9d:	83 c4 04             	add    $0x4,%esp
c0030ba0:	5b                   	pop    %ebx
c0030ba1:	5d                   	pop    %ebp
c0030ba2:	c3                   	ret    

c0030ba3 <ide_intr>:
c0030ba3:	55                   	push   %ebp
c0030ba4:	89 e5                	mov    %esp,%ebp
c0030ba6:	e8 b6 f5 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030bab:	05 55 b4 00 00       	add    $0xb455,%eax
c0030bb0:	c7 80 80 1e 01 00 01 	movl   $0x1,0x11e80(%eax)
c0030bb7:	00 00 00 
c0030bba:	90                   	nop
c0030bbb:	5d                   	pop    %ebp
c0030bbc:	c3                   	ret    

c0030bbd <clear_ide_intr>:
c0030bbd:	55                   	push   %ebp
c0030bbe:	89 e5                	mov    %esp,%ebp
c0030bc0:	e8 9c f5 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030bc5:	05 3b b4 00 00       	add    $0xb43b,%eax
c0030bca:	c7 80 80 1e 01 00 00 	movl   $0x0,0x11e80(%eax)
c0030bd1:	00 00 00 
c0030bd4:	90                   	nop
c0030bd5:	5d                   	pop    %ebp
c0030bd6:	c3                   	ret    

c0030bd7 <wait_ide_intr>:
c0030bd7:	55                   	push   %ebp
c0030bd8:	89 e5                	mov    %esp,%ebp
c0030bda:	53                   	push   %ebx
c0030bdb:	e8 d9 f5 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0030be0:	81 c3 20 b4 00 00    	add    $0xb420,%ebx
c0030be6:	eb 05                	jmp    c0030bed <wait_ide_intr+0x16>
c0030be8:	e8 c9 fe ff ff       	call   c0030ab6 <wait_intr>
c0030bed:	8b 83 80 1e 01 00    	mov    0x11e80(%ebx),%eax
c0030bf3:	85 c0                	test   %eax,%eax
c0030bf5:	74 f1                	je     c0030be8 <wait_ide_intr+0x11>
c0030bf7:	e8 c1 ff ff ff       	call   c0030bbd <clear_ide_intr>
c0030bfc:	90                   	nop
c0030bfd:	5b                   	pop    %ebx
c0030bfe:	5d                   	pop    %ebp
c0030bff:	c3                   	ret    

c0030c00 <init_ide>:
c0030c00:	55                   	push   %ebp
c0030c01:	89 e5                	mov    %esp,%ebp
c0030c03:	53                   	push   %ebx
c0030c04:	83 ec 04             	sub    $0x4,%esp
c0030c07:	e8 ad f5 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0030c0c:	81 c3 f4 b3 00 00    	add    $0xb3f4,%ebx
c0030c12:	e8 92 fc ff ff       	call   c00308a9 <cache_init>
c0030c17:	83 ec 08             	sub    $0x8,%esp
c0030c1a:	8d 83 63 4b ff ff    	lea    -0xb49d(%ebx),%eax
c0030c20:	50                   	push   %eax
c0030c21:	6a 00                	push   $0x0
c0030c23:	e8 e1 f5 ff ff       	call   c0030209 <add_irq_handle>
c0030c28:	83 c4 10             	add    $0x10,%esp
c0030c2b:	83 ec 08             	sub    $0x8,%esp
c0030c2e:	8d 83 a3 4b ff ff    	lea    -0xb45d(%ebx),%eax
c0030c34:	50                   	push   %eax
c0030c35:	6a 0e                	push   $0xe
c0030c37:	e8 cd f5 ff ff       	call   c0030209 <add_irq_handle>
c0030c3c:	83 c4 10             	add    $0x10,%esp
c0030c3f:	90                   	nop
c0030c40:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030c43:	c9                   	leave  
c0030c44:	c3                   	ret    

c0030c45 <in_byte>:
c0030c45:	55                   	push   %ebp
c0030c46:	89 e5                	mov    %esp,%ebp
c0030c48:	83 ec 14             	sub    $0x14,%esp
c0030c4b:	e8 11 f5 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030c50:	05 b0 b3 00 00       	add    $0xb3b0,%eax
c0030c55:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c58:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030c5c:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030c5f:	89 c2                	mov    %eax,%edx
c0030c61:	ec                   	in     (%dx),%al
c0030c62:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030c65:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030c68:	c9                   	leave  
c0030c69:	c3                   	ret    

c0030c6a <out_byte>:
c0030c6a:	55                   	push   %ebp
c0030c6b:	89 e5                	mov    %esp,%ebp
c0030c6d:	83 ec 08             	sub    $0x8,%esp
c0030c70:	e8 ec f4 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030c75:	05 8b b3 00 00       	add    $0xb38b,%eax
c0030c7a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030c7d:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030c80:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030c84:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030c87:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030c8a:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030c8d:	ee                   	out    %al,(%dx)
c0030c8e:	90                   	nop
c0030c8f:	c9                   	leave  
c0030c90:	c3                   	ret    

c0030c91 <out_long>:
c0030c91:	55                   	push   %ebp
c0030c92:	89 e5                	mov    %esp,%ebp
c0030c94:	83 ec 04             	sub    $0x4,%esp
c0030c97:	e8 c5 f4 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030c9c:	05 64 b3 00 00       	add    $0xb364,%eax
c0030ca1:	8b 45 08             	mov    0x8(%ebp),%eax
c0030ca4:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030ca8:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030cab:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030cae:	ef                   	out    %eax,(%dx)
c0030caf:	90                   	nop
c0030cb0:	c9                   	leave  
c0030cb1:	c3                   	ret    

c0030cb2 <dma_prepare>:
c0030cb2:	55                   	push   %ebp
c0030cb3:	89 e5                	mov    %esp,%ebp
c0030cb5:	83 ec 10             	sub    $0x10,%esp
c0030cb8:	e8 a4 f4 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030cbd:	05 43 b3 00 00       	add    $0xb343,%eax
c0030cc2:	8b 55 08             	mov    0x8(%ebp),%edx
c0030cc5:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c0030ccb:	89 55 fc             	mov    %edx,-0x4(%ebp)
c0030cce:	c7 c2 54 f0 06 c0    	mov    $0xc006f054,%edx
c0030cd4:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c0030cd7:	89 0a                	mov    %ecx,(%edx)
c0030cd9:	c7 c2 54 f0 06 c0    	mov    $0xc006f054,%edx
c0030cdf:	66 c7 42 04 00 02    	movw   $0x200,0x4(%edx)
c0030ce5:	c7 c2 54 f0 06 c0    	mov    $0xc006f054,%edx
c0030ceb:	8a 4a 07             	mov    0x7(%edx),%cl
c0030cee:	83 c9 80             	or     $0xffffff80,%ecx
c0030cf1:	88 4a 07             	mov    %cl,0x7(%edx)
c0030cf4:	c7 c1 54 f0 06 c0    	mov    $0xc006f054,%ecx
c0030cfa:	66 8b 51 06          	mov    0x6(%ecx),%dx
c0030cfe:	81 e2 00 80 ff ff    	and    $0xffff8000,%edx
c0030d04:	66 89 51 06          	mov    %dx,0x6(%ecx)
c0030d08:	c7 c0 54 f0 06 c0    	mov    $0xc006f054,%eax
c0030d0e:	05 00 00 00 40       	add    $0x40000000,%eax
c0030d13:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0030d16:	ff 75 f8             	pushl  -0x8(%ebp)
c0030d19:	68 44 c0 00 00       	push   $0xc044
c0030d1e:	e8 6e ff ff ff       	call   c0030c91 <out_long>
c0030d23:	83 c4 08             	add    $0x8,%esp
c0030d26:	90                   	nop
c0030d27:	c9                   	leave  
c0030d28:	c3                   	ret    

c0030d29 <dma_issue_read>:
c0030d29:	55                   	push   %ebp
c0030d2a:	89 e5                	mov    %esp,%ebp
c0030d2c:	e8 30 f4 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030d31:	05 cf b2 00 00       	add    $0xb2cf,%eax
c0030d36:	68 40 c0 00 00       	push   $0xc040
c0030d3b:	e8 05 ff ff ff       	call   c0030c45 <in_byte>
c0030d40:	83 c4 04             	add    $0x4,%esp
c0030d43:	83 c8 09             	or     $0x9,%eax
c0030d46:	0f b6 c0             	movzbl %al,%eax
c0030d49:	50                   	push   %eax
c0030d4a:	68 40 c0 00 00       	push   $0xc040
c0030d4f:	e8 16 ff ff ff       	call   c0030c6a <out_byte>
c0030d54:	83 c4 08             	add    $0x8,%esp
c0030d57:	90                   	nop
c0030d58:	c9                   	leave  
c0030d59:	c3                   	ret    

c0030d5a <in_byte>:
c0030d5a:	55                   	push   %ebp
c0030d5b:	89 e5                	mov    %esp,%ebp
c0030d5d:	83 ec 14             	sub    $0x14,%esp
c0030d60:	e8 fc f3 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030d65:	05 9b b2 00 00       	add    $0xb29b,%eax
c0030d6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d6d:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030d71:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030d74:	89 c2                	mov    %eax,%edx
c0030d76:	ec                   	in     (%dx),%al
c0030d77:	88 45 ff             	mov    %al,-0x1(%ebp)
c0030d7a:	8a 45 ff             	mov    -0x1(%ebp),%al
c0030d7d:	c9                   	leave  
c0030d7e:	c3                   	ret    

c0030d7f <in_long>:
c0030d7f:	55                   	push   %ebp
c0030d80:	89 e5                	mov    %esp,%ebp
c0030d82:	83 ec 14             	sub    $0x14,%esp
c0030d85:	e8 d7 f3 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030d8a:	05 76 b2 00 00       	add    $0xb276,%eax
c0030d8f:	8b 45 08             	mov    0x8(%ebp),%eax
c0030d92:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
c0030d96:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0030d99:	89 c2                	mov    %eax,%edx
c0030d9b:	ed                   	in     (%dx),%eax
c0030d9c:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0030d9f:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030da2:	c9                   	leave  
c0030da3:	c3                   	ret    

c0030da4 <out_byte>:
c0030da4:	55                   	push   %ebp
c0030da5:	89 e5                	mov    %esp,%ebp
c0030da7:	83 ec 08             	sub    $0x8,%esp
c0030daa:	e8 b2 f3 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030daf:	05 51 b2 00 00       	add    $0xb251,%eax
c0030db4:	8b 45 08             	mov    0x8(%ebp),%eax
c0030db7:	8b 55 0c             	mov    0xc(%ebp),%edx
c0030dba:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030dbe:	88 55 f8             	mov    %dl,-0x8(%ebp)
c0030dc1:	8a 45 f8             	mov    -0x8(%ebp),%al
c0030dc4:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030dc7:	ee                   	out    %al,(%dx)
c0030dc8:	90                   	nop
c0030dc9:	c9                   	leave  
c0030dca:	c3                   	ret    

c0030dcb <out_long>:
c0030dcb:	55                   	push   %ebp
c0030dcc:	89 e5                	mov    %esp,%ebp
c0030dce:	83 ec 04             	sub    $0x4,%esp
c0030dd1:	e8 8b f3 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030dd6:	05 2a b2 00 00       	add    $0xb22a,%eax
c0030ddb:	8b 45 08             	mov    0x8(%ebp),%eax
c0030dde:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
c0030de2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0030de5:	8b 55 fc             	mov    -0x4(%ebp),%edx
c0030de8:	ef                   	out    %eax,(%dx)
c0030de9:	90                   	nop
c0030dea:	c9                   	leave  
c0030deb:	c3                   	ret    

c0030dec <waitdisk>:
c0030dec:	55                   	push   %ebp
c0030ded:	89 e5                	mov    %esp,%ebp
c0030def:	e8 6d f3 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030df4:	05 0c b2 00 00       	add    $0xb20c,%eax
c0030df9:	90                   	nop
c0030dfa:	68 f7 01 00 00       	push   $0x1f7
c0030dff:	e8 56 ff ff ff       	call   c0030d5a <in_byte>
c0030e04:	83 c4 04             	add    $0x4,%esp
c0030e07:	0f b6 c0             	movzbl %al,%eax
c0030e0a:	25 c0 00 00 00       	and    $0xc0,%eax
c0030e0f:	83 f8 40             	cmp    $0x40,%eax
c0030e12:	75 e6                	jne    c0030dfa <waitdisk+0xe>
c0030e14:	90                   	nop
c0030e15:	c9                   	leave  
c0030e16:	c3                   	ret    

c0030e17 <ide_prepare>:
c0030e17:	55                   	push   %ebp
c0030e18:	89 e5                	mov    %esp,%ebp
c0030e1a:	e8 42 f3 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030e1f:	05 e1 b1 00 00       	add    $0xb1e1,%eax
c0030e24:	e8 c3 ff ff ff       	call   c0030dec <waitdisk>
c0030e29:	6a 00                	push   $0x0
c0030e2b:	68 f1 01 00 00       	push   $0x1f1
c0030e30:	e8 6f ff ff ff       	call   c0030da4 <out_byte>
c0030e35:	83 c4 08             	add    $0x8,%esp
c0030e38:	6a 01                	push   $0x1
c0030e3a:	68 f2 01 00 00       	push   $0x1f2
c0030e3f:	e8 60 ff ff ff       	call   c0030da4 <out_byte>
c0030e44:	83 c4 08             	add    $0x8,%esp
c0030e47:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e4a:	0f b6 c0             	movzbl %al,%eax
c0030e4d:	50                   	push   %eax
c0030e4e:	68 f3 01 00 00       	push   $0x1f3
c0030e53:	e8 4c ff ff ff       	call   c0030da4 <out_byte>
c0030e58:	83 c4 08             	add    $0x8,%esp
c0030e5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e5e:	c1 e8 08             	shr    $0x8,%eax
c0030e61:	0f b6 c0             	movzbl %al,%eax
c0030e64:	50                   	push   %eax
c0030e65:	68 f4 01 00 00       	push   $0x1f4
c0030e6a:	e8 35 ff ff ff       	call   c0030da4 <out_byte>
c0030e6f:	83 c4 08             	add    $0x8,%esp
c0030e72:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e75:	c1 e8 10             	shr    $0x10,%eax
c0030e78:	0f b6 c0             	movzbl %al,%eax
c0030e7b:	50                   	push   %eax
c0030e7c:	68 f5 01 00 00       	push   $0x1f5
c0030e81:	e8 1e ff ff ff       	call   c0030da4 <out_byte>
c0030e86:	83 c4 08             	add    $0x8,%esp
c0030e89:	8b 45 08             	mov    0x8(%ebp),%eax
c0030e8c:	c1 e8 18             	shr    $0x18,%eax
c0030e8f:	83 c8 e0             	or     $0xffffffe0,%eax
c0030e92:	0f b6 c0             	movzbl %al,%eax
c0030e95:	50                   	push   %eax
c0030e96:	68 f6 01 00 00       	push   $0x1f6
c0030e9b:	e8 04 ff ff ff       	call   c0030da4 <out_byte>
c0030ea0:	83 c4 08             	add    $0x8,%esp
c0030ea3:	90                   	nop
c0030ea4:	c9                   	leave  
c0030ea5:	c3                   	ret    

c0030ea6 <issue_read>:
c0030ea6:	55                   	push   %ebp
c0030ea7:	89 e5                	mov    %esp,%ebp
c0030ea9:	e8 b3 f2 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030eae:	05 52 b1 00 00       	add    $0xb152,%eax
c0030eb3:	6a 20                	push   $0x20
c0030eb5:	68 f7 01 00 00       	push   $0x1f7
c0030eba:	e8 e5 fe ff ff       	call   c0030da4 <out_byte>
c0030ebf:	83 c4 08             	add    $0x8,%esp
c0030ec2:	90                   	nop
c0030ec3:	c9                   	leave  
c0030ec4:	c3                   	ret    

c0030ec5 <issue_write>:
c0030ec5:	55                   	push   %ebp
c0030ec6:	89 e5                	mov    %esp,%ebp
c0030ec8:	e8 94 f2 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030ecd:	05 33 b1 00 00       	add    $0xb133,%eax
c0030ed2:	6a 30                	push   $0x30
c0030ed4:	68 f7 01 00 00       	push   $0x1f7
c0030ed9:	e8 c6 fe ff ff       	call   c0030da4 <out_byte>
c0030ede:	83 c4 08             	add    $0x8,%esp
c0030ee1:	90                   	nop
c0030ee2:	c9                   	leave  
c0030ee3:	c3                   	ret    

c0030ee4 <disk_do_read>:
c0030ee4:	55                   	push   %ebp
c0030ee5:	89 e5                	mov    %esp,%ebp
c0030ee7:	53                   	push   %ebx
c0030ee8:	83 ec 14             	sub    $0x14,%esp
c0030eeb:	e8 c9 f2 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0030ef0:	81 c3 10 b1 00 00    	add    $0xb110,%ebx
c0030ef6:	e8 c2 fc ff ff       	call   c0030bbd <clear_ide_intr>
c0030efb:	83 ec 0c             	sub    $0xc,%esp
c0030efe:	ff 75 0c             	pushl  0xc(%ebp)
c0030f01:	e8 11 ff ff ff       	call   c0030e17 <ide_prepare>
c0030f06:	83 c4 10             	add    $0x10,%esp
c0030f09:	e8 98 ff ff ff       	call   c0030ea6 <issue_read>
c0030f0e:	e8 c4 fc ff ff       	call   c0030bd7 <wait_ide_intr>
c0030f13:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0030f1a:	eb 25                	jmp    c0030f41 <disk_do_read+0x5d>
c0030f1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030f1f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030f26:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f29:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
c0030f2c:	83 ec 0c             	sub    $0xc,%esp
c0030f2f:	68 f0 01 00 00       	push   $0x1f0
c0030f34:	e8 46 fe ff ff       	call   c0030d7f <in_long>
c0030f39:	83 c4 10             	add    $0x10,%esp
c0030f3c:	89 03                	mov    %eax,(%ebx)
c0030f3e:	ff 45 f4             	incl   -0xc(%ebp)
c0030f41:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0030f44:	83 f8 7f             	cmp    $0x7f,%eax
c0030f47:	76 d3                	jbe    c0030f1c <disk_do_read+0x38>
c0030f49:	90                   	nop
c0030f4a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0030f4d:	c9                   	leave  
c0030f4e:	c3                   	ret    

c0030f4f <disk_do_write>:
c0030f4f:	55                   	push   %ebp
c0030f50:	89 e5                	mov    %esp,%ebp
c0030f52:	83 ec 10             	sub    $0x10,%esp
c0030f55:	e8 07 f2 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030f5a:	05 a6 b0 00 00       	add    $0xb0a6,%eax
c0030f5f:	ff 75 0c             	pushl  0xc(%ebp)
c0030f62:	e8 b0 fe ff ff       	call   c0030e17 <ide_prepare>
c0030f67:	83 c4 04             	add    $0x4,%esp
c0030f6a:	e8 56 ff ff ff       	call   c0030ec5 <issue_write>
c0030f6f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0030f76:	eb 22                	jmp    c0030f9a <disk_do_write+0x4b>
c0030f78:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030f7b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0030f82:	8b 45 08             	mov    0x8(%ebp),%eax
c0030f85:	01 d0                	add    %edx,%eax
c0030f87:	8b 00                	mov    (%eax),%eax
c0030f89:	50                   	push   %eax
c0030f8a:	68 f0 01 00 00       	push   $0x1f0
c0030f8f:	e8 37 fe ff ff       	call   c0030dcb <out_long>
c0030f94:	83 c4 08             	add    $0x8,%esp
c0030f97:	ff 45 fc             	incl   -0x4(%ebp)
c0030f9a:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0030f9d:	83 f8 7f             	cmp    $0x7f,%eax
c0030fa0:	76 d6                	jbe    c0030f78 <disk_do_write+0x29>
c0030fa2:	90                   	nop
c0030fa3:	c9                   	leave  
c0030fa4:	c3                   	ret    

c0030fa5 <sti>:
c0030fa5:	55                   	push   %ebp
c0030fa6:	89 e5                	mov    %esp,%ebp
c0030fa8:	e8 b4 f1 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0030fad:	05 53 b0 00 00       	add    $0xb053,%eax
c0030fb2:	fb                   	sti    
c0030fb3:	90                   	nop
c0030fb4:	5d                   	pop    %ebp
c0030fb5:	c3                   	ret    

c0030fb6 <init>:
c0030fb6:	55                   	push   %ebp
c0030fb7:	89 e5                	mov    %esp,%ebp
c0030fb9:	53                   	push   %ebx
c0030fba:	83 ec 04             	sub    $0x4,%esp
c0030fbd:	e8 f7 f1 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0030fc2:	81 c3 3e b0 00 00    	add    $0xb03e,%ebx
c0030fc8:	e8 c7 02 00 00       	call   c0031294 <init_page>
c0030fcd:	81 c4 00 00 00 c0    	add    $0xc0000000,%esp
c0030fd3:	8d 83 e8 4f ff bf    	lea    -0x4000b018(%ebx),%eax
c0030fd9:	ff e0                	jmp    *%eax
c0030fdb:	b8 01 00 00 00       	mov    $0x1,%eax
c0030fe0:	82 90 83 c4 04 5b 5d 	adcb   $0x5d,0x5b04c483(%eax)
c0030fe7:	c3                   	ret    

c0030fe8 <init_cond>:
c0030fe8:	55                   	push   %ebp
c0030fe9:	89 e5                	mov    %esp,%ebp
c0030feb:	53                   	push   %ebx
c0030fec:	83 ec 14             	sub    $0x14,%esp
c0030fef:	e8 c5 f1 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0030ff4:	81 c3 0c b0 00 00    	add    $0xb00c,%ebx
c0030ffa:	e8 74 04 00 00       	call   c0031473 <init_segment>
c0030fff:	e8 2b f5 ff ff       	call   c003052f <init_idt>
c0031004:	e8 9c ff ff ff       	call   c0030fa5 <sti>
c0031009:	e8 7f 06 00 00       	call   c003168d <init_mm>
c003100e:	8d 83 70 c8 ff ff    	lea    -0x3790(%ebx),%eax
c0031014:	50                   	push   %eax
c0031015:	6a 4d                	push   $0x4d
c0031017:	8d 83 30 c8 ff ff    	lea    -0x37d0(%ebx),%eax
c003101d:	50                   	push   %eax
c003101e:	8d 83 3c c8 ff ff    	lea    -0x37c4(%ebx),%eax
c0031024:	50                   	push   %eax
c0031025:	e8 3b f1 ff ff       	call   c0030165 <printk>
c003102a:	83 c4 10             	add    $0x10,%esp
c003102d:	e8 ea 06 00 00       	call   c003171c <loader>
c0031032:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031035:	bc 00 00 00 c0       	mov    $0xc0000000,%esp
c003103a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003103d:	ff d0                	call   *%eax
c003103f:	90                   	nop
c0031040:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031043:	c9                   	leave  
c0031044:	c3                   	ret    

c0031045 <fs_open>:
c0031045:	55                   	push   %ebp
c0031046:	89 e5                	mov    %esp,%ebp
c0031048:	53                   	push   %ebx
c0031049:	83 ec 04             	sub    $0x4,%esp
c003104c:	e8 10 f1 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0031051:	05 af af 00 00       	add    $0xafaf,%eax
c0031056:	8d 90 08 cb ff ff    	lea    -0x34f8(%eax),%edx
c003105c:	52                   	push   %edx
c003105d:	6a 2c                	push   $0x2c
c003105f:	8d 90 3f c9 ff ff    	lea    -0x36c1(%eax),%edx
c0031065:	52                   	push   %edx
c0031066:	8d 90 4c c9 ff ff    	lea    -0x36b4(%eax),%edx
c003106c:	52                   	push   %edx
c003106d:	89 c3                	mov    %eax,%ebx
c003106f:	e8 f1 f0 ff ff       	call   c0030165 <printk>
c0031074:	83 c4 10             	add    $0x10,%esp
c0031077:	b8 01 00 00 00       	mov    $0x1,%eax
c003107c:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c0031083:	5d                   	pop    %ebp
c0031084:	fc                   	cld    
c0031085:	c9                   	leave  
c0031086:	c3                   	ret    

c0031087 <fs_read>:
c0031087:	55                   	push   %ebp
c0031088:	89 e5                	mov    %esp,%ebp
c003108a:	53                   	push   %ebx
c003108b:	83 ec 04             	sub    $0x4,%esp
c003108e:	e8 26 f1 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0031093:	81 c3 6d af 00 00    	add    $0xaf6d,%ebx
c0031099:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c003109d:	7f 2f                	jg     c00310ce <fs_read+0x47>
c003109f:	83 ec 0c             	sub    $0xc,%esp
c00310a2:	8d 83 a2 c9 ff ff    	lea    -0x365e(%ebx),%eax
c00310a8:	50                   	push   %eax
c00310a9:	8d 83 10 cb ff ff    	lea    -0x34f0(%ebx),%eax
c00310af:	50                   	push   %eax
c00310b0:	6a 31                	push   $0x31
c00310b2:	8d 83 3f c9 ff ff    	lea    -0x36c1(%ebx),%eax
c00310b8:	50                   	push   %eax
c00310b9:	8d 83 ac c9 ff ff    	lea    -0x3654(%ebx),%eax
c00310bf:	50                   	push   %eax
c00310c0:	e8 a0 f0 ff ff       	call   c0030165 <printk>
c00310c5:	83 c4 20             	add    $0x20,%esp
c00310c8:	b8 01 00 00 00       	mov    $0x1,%eax
c00310cd:	82 8d 83 10 cb ff ff 	orb    $0xff,-0x34ef7d(%ebp)
c00310d4:	50                   	push   %eax
c00310d5:	6a 32                	push   $0x32
c00310d7:	8d 83 3f c9 ff ff    	lea    -0x36c1(%ebx),%eax
c00310dd:	50                   	push   %eax
c00310de:	8d 83 f8 c9 ff ff    	lea    -0x3608(%ebx),%eax
c00310e4:	50                   	push   %eax
c00310e5:	e8 7b f0 ff ff       	call   c0030165 <printk>
c00310ea:	83 c4 10             	add    $0x10,%esp
c00310ed:	b8 01 00 00 00       	mov    $0x1,%eax
c00310f2:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c00310f9:	5d                   	pop    %ebp
c00310fa:	fc                   	cld    
c00310fb:	c9                   	leave  
c00310fc:	c3                   	ret    

c00310fd <fs_write>:
c00310fd:	55                   	push   %ebp
c00310fe:	89 e5                	mov    %esp,%ebp
c0031100:	53                   	push   %ebx
c0031101:	83 ec 14             	sub    $0x14,%esp
c0031104:	e8 b0 f0 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0031109:	81 c3 f7 ae 00 00    	add    $0xaef7,%ebx
c003110f:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
c0031113:	7e 2f                	jle    c0031144 <fs_write+0x47>
c0031115:	83 ec 0c             	sub    $0xc,%esp
c0031118:	8d 83 4e ca ff ff    	lea    -0x35b2(%ebx),%eax
c003111e:	50                   	push   %eax
c003111f:	8d 83 18 cb ff ff    	lea    -0x34e8(%ebx),%eax
c0031125:	50                   	push   %eax
c0031126:	6a 37                	push   $0x37
c0031128:	8d 83 3f c9 ff ff    	lea    -0x36c1(%ebx),%eax
c003112e:	50                   	push   %eax
c003112f:	8d 83 ac c9 ff ff    	lea    -0x3654(%ebx),%eax
c0031135:	50                   	push   %eax
c0031136:	e8 2a f0 ff ff       	call   c0030165 <printk>
c003113b:	83 c4 20             	add    $0x20,%esp
c003113e:	b8 01 00 00 00       	mov    $0x1,%eax
c0031143:	82 c7 45             	add    $0x45,%bh
c0031146:	f4                   	hlt    
c0031147:	00 00                	add    %al,(%eax)
c0031149:	00 00                	add    %al,(%eax)
c003114b:	eb 1c                	jmp    c0031169 <fs_write+0x6c>
c003114d:	8b 55 f4             	mov    -0xc(%ebp),%edx
c0031150:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031153:	01 d0                	add    %edx,%eax
c0031155:	8a 00                	mov    (%eax),%al
c0031157:	0f be c0             	movsbl %al,%eax
c003115a:	83 ec 0c             	sub    $0xc,%esp
c003115d:	50                   	push   %eax
c003115e:	e8 d5 ef ff ff       	call   c0030138 <serial_printc>
c0031163:	83 c4 10             	add    $0x10,%esp
c0031166:	ff 45 f4             	incl   -0xc(%ebp)
c0031169:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003116c:	3b 45 10             	cmp    0x10(%ebp),%eax
c003116f:	72 dc                	jb     c003114d <fs_write+0x50>
c0031171:	8b 45 10             	mov    0x10(%ebp),%eax
c0031174:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031177:	c9                   	leave  
c0031178:	c3                   	ret    

c0031179 <fs_lseek>:
c0031179:	55                   	push   %ebp
c003117a:	89 e5                	mov    %esp,%ebp
c003117c:	53                   	push   %ebx
c003117d:	83 ec 04             	sub    $0x4,%esp
c0031180:	e8 dc ef ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0031185:	05 7b ae 00 00       	add    $0xae7b,%eax
c003118a:	8d 90 24 cb ff ff    	lea    -0x34dc(%eax),%edx
c0031190:	52                   	push   %edx
c0031191:	6a 46                	push   $0x46
c0031193:	8d 90 3f c9 ff ff    	lea    -0x36c1(%eax),%edx
c0031199:	52                   	push   %edx
c003119a:	8d 90 58 ca ff ff    	lea    -0x35a8(%eax),%edx
c00311a0:	52                   	push   %edx
c00311a1:	89 c3                	mov    %eax,%ebx
c00311a3:	e8 bd ef ff ff       	call   c0030165 <printk>
c00311a8:	83 c4 10             	add    $0x10,%esp
c00311ab:	b8 01 00 00 00       	mov    $0x1,%eax
c00311b0:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c00311b7:	5d                   	pop    %ebp
c00311b8:	fc                   	cld    
c00311b9:	c9                   	leave  
c00311ba:	c3                   	ret    

c00311bb <fs_close>:
c00311bb:	55                   	push   %ebp
c00311bc:	89 e5                	mov    %esp,%ebp
c00311be:	53                   	push   %ebx
c00311bf:	83 ec 04             	sub    $0x4,%esp
c00311c2:	e8 9a ef ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00311c7:	05 39 ae 00 00       	add    $0xae39,%eax
c00311cc:	8d 90 30 cb ff ff    	lea    -0x34d0(%eax),%edx
c00311d2:	52                   	push   %edx
c00311d3:	6a 4b                	push   $0x4b
c00311d5:	8d 90 3f c9 ff ff    	lea    -0x36c1(%eax),%edx
c00311db:	52                   	push   %edx
c00311dc:	8d 90 b0 ca ff ff    	lea    -0x3550(%eax),%edx
c00311e2:	52                   	push   %edx
c00311e3:	89 c3                	mov    %eax,%ebx
c00311e5:	e8 7b ef ff ff       	call   c0030165 <printk>
c00311ea:	83 c4 10             	add    $0x10,%esp
c00311ed:	b8 01 00 00 00       	mov    $0x1,%eax
c00311f2:	82 b8 ff ff ff ff 8b 	cmpb   $0x8b,-0x1(%eax)
c00311f9:	5d                   	pop    %ebp
c00311fa:	fc                   	cld    
c00311fb:	c9                   	leave  
c00311fc:	c3                   	ret    

c00311fd <read_cr0>:
c00311fd:	55                   	push   %ebp
c00311fe:	89 e5                	mov    %esp,%ebp
c0031200:	83 ec 10             	sub    $0x10,%esp
c0031203:	e8 59 ef ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0031208:	05 f8 ad 00 00       	add    $0xadf8,%eax
c003120d:	0f 20 c0             	mov    %cr0,%eax
c0031210:	89 45 fc             	mov    %eax,-0x4(%ebp)
c0031213:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031216:	c9                   	leave  
c0031217:	c3                   	ret    

c0031218 <write_cr0>:
c0031218:	55                   	push   %ebp
c0031219:	89 e5                	mov    %esp,%ebp
c003121b:	e8 41 ef ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0031220:	05 e0 ad 00 00       	add    $0xade0,%eax
c0031225:	8b 45 08             	mov    0x8(%ebp),%eax
c0031228:	0f 22 c0             	mov    %eax,%cr0
c003122b:	90                   	nop
c003122c:	5d                   	pop    %ebp
c003122d:	c3                   	ret    

c003122e <write_cr3>:
c003122e:	55                   	push   %ebp
c003122f:	89 e5                	mov    %esp,%ebp
c0031231:	e8 2b ef ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0031236:	05 ca ad 00 00       	add    $0xadca,%eax
c003123b:	8b 45 08             	mov    0x8(%ebp),%eax
c003123e:	0f 22 d8             	mov    %eax,%cr3
c0031241:	90                   	nop
c0031242:	5d                   	pop    %ebp
c0031243:	c3                   	ret    

c0031244 <write_gdtr>:
c0031244:	55                   	push   %ebp
c0031245:	89 e5                	mov    %esp,%ebp
c0031247:	e8 15 ef ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c003124c:	05 b4 ad 00 00       	add    $0xadb4,%eax
c0031251:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031254:	4a                   	dec    %edx
c0031255:	66 89 90 88 1e 01 00 	mov    %dx,0x11e88(%eax)
c003125c:	8b 55 08             	mov    0x8(%ebp),%edx
c003125f:	66 89 90 8a 1e 01 00 	mov    %dx,0x11e8a(%eax)
c0031266:	8b 55 08             	mov    0x8(%ebp),%edx
c0031269:	c1 ea 10             	shr    $0x10,%edx
c003126c:	66 89 90 8c 1e 01 00 	mov    %dx,0x11e8c(%eax)
c0031273:	8d 80 88 1e 01 00    	lea    0x11e88(%eax),%eax
c0031279:	0f 01 10             	lgdtl  (%eax)
c003127c:	90                   	nop
c003127d:	5d                   	pop    %ebp
c003127e:	c3                   	ret    

c003127f <get_kpdir>:
c003127f:	55                   	push   %ebp
c0031280:	89 e5                	mov    %esp,%ebp
c0031282:	e8 da ee ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0031287:	05 79 ad 00 00       	add    $0xad79,%eax
c003128c:	c7 c0 00 10 07 c0    	mov    $0xc0071000,%eax
c0031292:	5d                   	pop    %ebp
c0031293:	c3                   	ret    

c0031294 <init_page>:
c0031294:	55                   	push   %ebp
c0031295:	89 e5                	mov    %esp,%ebp
c0031297:	53                   	push   %ebx
c0031298:	83 ec 24             	sub    $0x24,%esp
c003129b:	e8 c1 ee ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00312a0:	05 60 ad 00 00       	add    $0xad60,%eax
c00312a5:	c7 c2 00 10 07 c0    	mov    $0xc0071000,%edx
c00312ab:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00312b1:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c00312b4:	c7 c2 00 20 07 c0    	mov    $0xc0072000,%edx
c00312ba:	81 c2 00 00 00 40    	add    $0x40000000,%edx
c00312c0:	89 55 f4             	mov    %edx,-0xc(%ebp)
c00312c3:	83 ec 04             	sub    $0x4,%esp
c00312c6:	68 00 10 00 00       	push   $0x1000
c00312cb:	6a 00                	push   $0x0
c00312cd:	ff 75 e4             	pushl  -0x1c(%ebp)
c00312d0:	89 c3                	mov    %eax,%ebx
c00312d2:	e8 05 0b 00 00       	call   c0031ddc <memset>
c00312d7:	83 c4 10             	add    $0x10,%esp
c00312da:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00312e1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
c00312e8:	eb 6e                	jmp    c0031358 <init_page+0xc4>
c00312ea:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00312ed:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c00312f4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00312f7:	01 d0                	add    %edx,%eax
c00312f9:	8b 55 f4             	mov    -0xc(%ebp),%edx
c00312fc:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031302:	83 ca 07             	or     $0x7,%edx
c0031305:	89 10                	mov    %edx,(%eax)
c0031307:	8b 45 f0             	mov    -0x10(%ebp),%eax
c003130a:	05 00 03 00 00       	add    $0x300,%eax
c003130f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031316:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031319:	01 d0                	add    %edx,%eax
c003131b:	8b 55 f4             	mov    -0xc(%ebp),%edx
c003131e:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031324:	83 ca 07             	or     $0x7,%edx
c0031327:	89 10                	mov    %edx,(%eax)
c0031329:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
c0031330:	eb 1a                	jmp    c003134c <init_page+0xb8>
c0031332:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031335:	c1 e0 0c             	shl    $0xc,%eax
c0031338:	83 c8 07             	or     $0x7,%eax
c003133b:	89 c2                	mov    %eax,%edx
c003133d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031340:	89 10                	mov    %edx,(%eax)
c0031342:	ff 45 e8             	incl   -0x18(%ebp)
c0031345:	83 45 f4 04          	addl   $0x4,-0xc(%ebp)
c0031349:	ff 45 ec             	incl   -0x14(%ebp)
c003134c:	81 7d ec ff 03 00 00 	cmpl   $0x3ff,-0x14(%ebp)
c0031353:	76 dd                	jbe    c0031332 <init_page+0x9e>
c0031355:	ff 45 f0             	incl   -0x10(%ebp)
c0031358:	83 7d f0 1f          	cmpl   $0x1f,-0x10(%ebp)
c003135c:	76 8c                	jbe    c00312ea <init_page+0x56>
c003135e:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0031365:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0031368:	c1 e8 0c             	shr    $0xc,%eax
c003136b:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0031370:	c1 e0 0c             	shl    $0xc,%eax
c0031373:	89 c2                	mov    %eax,%edx
c0031375:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0031378:	25 ff 0f 00 00       	and    $0xfff,%eax
c003137d:	09 d0                	or     %edx,%eax
c003137f:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031382:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0031385:	83 ec 0c             	sub    $0xc,%esp
c0031388:	50                   	push   %eax
c0031389:	e8 a0 fe ff ff       	call   c003122e <write_cr3>
c003138e:	83 c4 10             	add    $0x10,%esp
c0031391:	e8 67 fe ff ff       	call   c00311fd <read_cr0>
c0031396:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0031399:	8a 45 e3             	mov    -0x1d(%ebp),%al
c003139c:	83 c8 80             	or     $0xffffff80,%eax
c003139f:	88 45 e3             	mov    %al,-0x1d(%ebp)
c00313a2:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00313a5:	83 ec 0c             	sub    $0xc,%esp
c00313a8:	50                   	push   %eax
c00313a9:	e8 6a fe ff ff       	call   c0031218 <write_cr0>
c00313ae:	83 c4 10             	add    $0x10,%esp
c00313b1:	90                   	nop
c00313b2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00313b5:	c9                   	leave  
c00313b6:	c3                   	ret    

c00313b7 <set_segment>:
c00313b7:	55                   	push   %ebp
c00313b8:	89 e5                	mov    %esp,%ebp
c00313ba:	e8 a2 ed ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00313bf:	05 41 ac 00 00       	add    $0xac41,%eax
c00313c4:	8b 45 08             	mov    0x8(%ebp),%eax
c00313c7:	66 c7 00 ff ff       	movw   $0xffff,(%eax)
c00313cc:	8b 45 08             	mov    0x8(%ebp),%eax
c00313cf:	66 c7 40 02 00 00    	movw   $0x0,0x2(%eax)
c00313d5:	8b 45 08             	mov    0x8(%ebp),%eax
c00313d8:	c6 40 04 00          	movb   $0x0,0x4(%eax)
c00313dc:	8b 45 10             	mov    0x10(%ebp),%eax
c00313df:	83 e0 0f             	and    $0xf,%eax
c00313e2:	88 c2                	mov    %al,%dl
c00313e4:	8b 45 08             	mov    0x8(%ebp),%eax
c00313e7:	88 d1                	mov    %dl,%cl
c00313e9:	83 e1 0f             	and    $0xf,%ecx
c00313ec:	8a 50 05             	mov    0x5(%eax),%dl
c00313ef:	83 e2 f0             	and    $0xfffffff0,%edx
c00313f2:	09 ca                	or     %ecx,%edx
c00313f4:	88 50 05             	mov    %dl,0x5(%eax)
c00313f7:	8b 45 08             	mov    0x8(%ebp),%eax
c00313fa:	8a 50 05             	mov    0x5(%eax),%dl
c00313fd:	83 ca 10             	or     $0x10,%edx
c0031400:	88 50 05             	mov    %dl,0x5(%eax)
c0031403:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031406:	83 e0 03             	and    $0x3,%eax
c0031409:	88 c2                	mov    %al,%dl
c003140b:	8b 45 08             	mov    0x8(%ebp),%eax
c003140e:	83 e2 03             	and    $0x3,%edx
c0031411:	88 d1                	mov    %dl,%cl
c0031413:	c1 e1 05             	shl    $0x5,%ecx
c0031416:	8a 50 05             	mov    0x5(%eax),%dl
c0031419:	83 e2 9f             	and    $0xffffff9f,%edx
c003141c:	09 ca                	or     %ecx,%edx
c003141e:	88 50 05             	mov    %dl,0x5(%eax)
c0031421:	8b 45 08             	mov    0x8(%ebp),%eax
c0031424:	8a 50 05             	mov    0x5(%eax),%dl
c0031427:	83 ca 80             	or     $0xffffff80,%edx
c003142a:	88 50 05             	mov    %dl,0x5(%eax)
c003142d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031430:	8a 50 06             	mov    0x6(%eax),%dl
c0031433:	83 ca 0f             	or     $0xf,%edx
c0031436:	88 50 06             	mov    %dl,0x6(%eax)
c0031439:	8b 45 08             	mov    0x8(%ebp),%eax
c003143c:	8a 50 06             	mov    0x6(%eax),%dl
c003143f:	83 e2 ef             	and    $0xffffffef,%edx
c0031442:	88 50 06             	mov    %dl,0x6(%eax)
c0031445:	8b 45 08             	mov    0x8(%ebp),%eax
c0031448:	8a 50 06             	mov    0x6(%eax),%dl
c003144b:	83 e2 df             	and    $0xffffffdf,%edx
c003144e:	88 50 06             	mov    %dl,0x6(%eax)
c0031451:	8b 45 08             	mov    0x8(%ebp),%eax
c0031454:	8a 50 06             	mov    0x6(%eax),%dl
c0031457:	83 ca 40             	or     $0x40,%edx
c003145a:	88 50 06             	mov    %dl,0x6(%eax)
c003145d:	8b 45 08             	mov    0x8(%ebp),%eax
c0031460:	8a 50 06             	mov    0x6(%eax),%dl
c0031463:	83 ca 80             	or     $0xffffff80,%edx
c0031466:	88 50 06             	mov    %dl,0x6(%eax)
c0031469:	8b 45 08             	mov    0x8(%ebp),%eax
c003146c:	c6 40 07 00          	movb   $0x0,0x7(%eax)
c0031470:	90                   	nop
c0031471:	5d                   	pop    %ebp
c0031472:	c3                   	ret    

c0031473 <init_segment>:
c0031473:	55                   	push   %ebp
c0031474:	89 e5                	mov    %esp,%ebp
c0031476:	53                   	push   %ebx
c0031477:	83 ec 04             	sub    $0x4,%esp
c003147a:	e8 3a ed ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c003147f:	81 c3 81 ab 00 00    	add    $0xab81,%ebx
c0031485:	83 ec 04             	sub    $0x4,%esp
c0031488:	6a 18                	push   $0x18
c003148a:	6a 00                	push   $0x0
c003148c:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c0031492:	50                   	push   %eax
c0031493:	e8 44 09 00 00       	call   c0031ddc <memset>
c0031498:	83 c4 10             	add    $0x10,%esp
c003149b:	83 ec 04             	sub    $0x4,%esp
c003149e:	6a 0a                	push   $0xa
c00314a0:	6a 00                	push   $0x0
c00314a2:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c00314a8:	8d 40 08             	lea    0x8(%eax),%eax
c00314ab:	50                   	push   %eax
c00314ac:	e8 06 ff ff ff       	call   c00313b7 <set_segment>
c00314b1:	83 c4 10             	add    $0x10,%esp
c00314b4:	83 ec 04             	sub    $0x4,%esp
c00314b7:	6a 02                	push   $0x2
c00314b9:	6a 00                	push   $0x0
c00314bb:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c00314c1:	8d 40 10             	lea    0x10(%eax),%eax
c00314c4:	50                   	push   %eax
c00314c5:	e8 ed fe ff ff       	call   c00313b7 <set_segment>
c00314ca:	83 c4 10             	add    $0x10,%esp
c00314cd:	83 ec 08             	sub    $0x8,%esp
c00314d0:	6a 18                	push   $0x18
c00314d2:	c7 c0 00 00 07 c0    	mov    $0xc0070000,%eax
c00314d8:	50                   	push   %eax
c00314d9:	e8 66 fd ff ff       	call   c0031244 <write_gdtr>
c00314de:	83 c4 10             	add    $0x10,%esp
c00314e1:	90                   	nop
c00314e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00314e5:	c9                   	leave  
c00314e6:	c3                   	ret    

c00314e7 <create_video_mapping>:
c00314e7:	55                   	push   %ebp
c00314e8:	89 e5                	mov    %esp,%ebp
c00314ea:	53                   	push   %ebx
c00314eb:	83 ec 04             	sub    $0x4,%esp
c00314ee:	e8 6e ec ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00314f3:	05 0d ab 00 00       	add    $0xab0d,%eax
c00314f8:	8d 90 f4 cb ff ff    	lea    -0x340c(%eax),%edx
c00314fe:	52                   	push   %edx
c00314ff:	6a 13                	push   $0x13
c0031501:	8d 90 3c cb ff ff    	lea    -0x34c4(%eax),%edx
c0031507:	52                   	push   %edx
c0031508:	8d 90 50 cb ff ff    	lea    -0x34b0(%eax),%edx
c003150e:	52                   	push   %edx
c003150f:	89 c3                	mov    %eax,%ebx
c0031511:	e8 4f ec ff ff       	call   c0030165 <printk>
c0031516:	83 c4 10             	add    $0x10,%esp
c0031519:	b8 01 00 00 00       	mov    $0x1,%eax
c003151e:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)

c0031525 <video_mapping_write_test>:
c0031525:	55                   	push   %ebp
c0031526:	89 e5                	mov    %esp,%ebp
c0031528:	83 ec 10             	sub    $0x10,%esp
c003152b:	e8 31 ec ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0031530:	05 d0 aa 00 00       	add    $0xaad0,%eax
c0031535:	c7 45 f8 00 00 0a 00 	movl   $0xa0000,-0x8(%ebp)
c003153c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0031543:	eb 17                	jmp    c003155c <video_mapping_write_test+0x37>
c0031545:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031548:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c003154f:	8b 45 f8             	mov    -0x8(%ebp),%eax
c0031552:	01 c2                	add    %eax,%edx
c0031554:	8b 45 fc             	mov    -0x4(%ebp),%eax
c0031557:	89 02                	mov    %eax,(%edx)
c0031559:	ff 45 fc             	incl   -0x4(%ebp)
c003155c:	81 7d fc 7f 3e 00 00 	cmpl   $0x3e7f,-0x4(%ebp)
c0031563:	7e e0                	jle    c0031545 <video_mapping_write_test+0x20>
c0031565:	90                   	nop
c0031566:	c9                   	leave  
c0031567:	c3                   	ret    

c0031568 <video_mapping_read_test>:
c0031568:	55                   	push   %ebp
c0031569:	89 e5                	mov    %esp,%ebp
c003156b:	53                   	push   %ebx
c003156c:	83 ec 14             	sub    $0x14,%esp
c003156f:	e8 45 ec ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0031574:	81 c3 8c aa 00 00    	add    $0xaa8c,%ebx
c003157a:	c7 45 f0 00 00 0a 00 	movl   $0xa0000,-0x10(%ebp)
c0031581:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
c0031588:	eb 4a                	jmp    c00315d4 <video_mapping_read_test+0x6c>
c003158a:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003158d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
c0031594:	8b 45 f0             	mov    -0x10(%ebp),%eax
c0031597:	01 d0                	add    %edx,%eax
c0031599:	8b 10                	mov    (%eax),%edx
c003159b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003159e:	39 c2                	cmp    %eax,%edx
c00315a0:	74 2f                	je     c00315d1 <video_mapping_read_test+0x69>
c00315a2:	83 ec 0c             	sub    $0xc,%esp
c00315a5:	8d 83 99 cb ff ff    	lea    -0x3467(%ebx),%eax
c00315ab:	50                   	push   %eax
c00315ac:	8d 83 0c cc ff ff    	lea    -0x33f4(%ebx),%eax
c00315b2:	50                   	push   %eax
c00315b3:	6a 22                	push   $0x22
c00315b5:	8d 83 3c cb ff ff    	lea    -0x34c4(%ebx),%eax
c00315bb:	50                   	push   %eax
c00315bc:	8d 83 a8 cb ff ff    	lea    -0x3458(%ebx),%eax
c00315c2:	50                   	push   %eax
c00315c3:	e8 9d eb ff ff       	call   c0030165 <printk>
c00315c8:	83 c4 20             	add    $0x20,%esp
c00315cb:	b8 01 00 00 00       	mov    $0x1,%eax
c00315d0:	82 ff 45             	cmp    $0x45,%bh
c00315d3:	f4                   	hlt    
c00315d4:	81 7d f4 7f 3e 00 00 	cmpl   $0x3e7f,-0xc(%ebp)
c00315db:	7e ad                	jle    c003158a <video_mapping_read_test+0x22>
c00315dd:	90                   	nop
c00315de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00315e1:	c9                   	leave  
c00315e2:	c3                   	ret    

c00315e3 <video_mapping_clear>:
c00315e3:	55                   	push   %ebp
c00315e4:	89 e5                	mov    %esp,%ebp
c00315e6:	53                   	push   %ebx
c00315e7:	83 ec 04             	sub    $0x4,%esp
c00315ea:	e8 72 eb ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00315ef:	05 11 aa 00 00       	add    $0xaa11,%eax
c00315f4:	83 ec 04             	sub    $0x4,%esp
c00315f7:	68 00 fa 00 00       	push   $0xfa00
c00315fc:	6a 00                	push   $0x0
c00315fe:	68 00 00 0a 00       	push   $0xa0000
c0031603:	89 c3                	mov    %eax,%ebx
c0031605:	e8 d2 07 00 00       	call   c0031ddc <memset>
c003160a:	83 c4 10             	add    $0x10,%esp
c003160d:	90                   	nop
c003160e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031611:	c9                   	leave  
c0031612:	c3                   	ret    

c0031613 <get_updir>:
c0031613:	55                   	push   %ebp
c0031614:	89 e5                	mov    %esp,%ebp
c0031616:	e8 46 eb ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c003161b:	05 e5 a9 00 00       	add    $0xa9e5,%eax
c0031620:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c0031626:	5d                   	pop    %ebp
c0031627:	c3                   	ret    

c0031628 <get_ucr3>:
c0031628:	55                   	push   %ebp
c0031629:	89 e5                	mov    %esp,%ebp
c003162b:	e8 31 eb ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0031630:	05 d0 a9 00 00       	add    $0xa9d0,%eax
c0031635:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c003163b:	8b 00                	mov    (%eax),%eax
c003163d:	5d                   	pop    %ebp
c003163e:	c3                   	ret    

c003163f <mm_brk>:
c003163f:	55                   	push   %ebp
c0031640:	89 e5                	mov    %esp,%ebp
c0031642:	53                   	push   %ebx
c0031643:	83 ec 04             	sub    $0x4,%esp
c0031646:	e8 6e eb ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c003164b:	81 c3 b5 a9 00 00    	add    $0xa9b5,%ebx
c0031651:	8b 83 90 1e 01 00    	mov    0x11e90(%ebx),%eax
c0031657:	39 45 08             	cmp    %eax,0x8(%ebp)
c003165a:	76 22                	jbe    c003167e <mm_brk+0x3f>
c003165c:	8b 83 90 1e 01 00    	mov    0x11e90(%ebx),%eax
c0031662:	8b 55 08             	mov    0x8(%ebp),%edx
c0031665:	29 c2                	sub    %eax,%edx
c0031667:	89 d0                	mov    %edx,%eax
c0031669:	89 c2                	mov    %eax,%edx
c003166b:	8b 83 90 1e 01 00    	mov    0x11e90(%ebx),%eax
c0031671:	83 ec 08             	sub    $0x8,%esp
c0031674:	52                   	push   %edx
c0031675:	50                   	push   %eax
c0031676:	e8 85 04 00 00       	call   c0031b00 <mm_malloc>
c003167b:	83 c4 10             	add    $0x10,%esp
c003167e:	8b 45 08             	mov    0x8(%ebp),%eax
c0031681:	89 83 90 1e 01 00    	mov    %eax,0x11e90(%ebx)
c0031687:	90                   	nop
c0031688:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003168b:	c9                   	leave  
c003168c:	c3                   	ret    

c003168d <init_mm>:
c003168d:	55                   	push   %ebp
c003168e:	89 e5                	mov    %esp,%ebp
c0031690:	53                   	push   %ebx
c0031691:	83 ec 14             	sub    $0x14,%esp
c0031694:	e8 20 eb ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0031699:	81 c3 67 a9 00 00    	add    $0xa967,%ebx
c003169f:	e8 db fb ff ff       	call   c003127f <get_kpdir>
c00316a4:	89 45 f4             	mov    %eax,-0xc(%ebp)
c00316a7:	83 ec 04             	sub    $0x4,%esp
c00316aa:	68 00 10 00 00       	push   $0x1000
c00316af:	6a 00                	push   $0x0
c00316b1:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c00316b7:	50                   	push   %eax
c00316b8:	e8 1f 07 00 00       	call   c0031ddc <memset>
c00316bd:	83 c4 10             	add    $0x10,%esp
c00316c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00316c3:	05 00 0c 00 00       	add    $0xc00,%eax
c00316c8:	83 ec 04             	sub    $0x4,%esp
c00316cb:	68 80 00 00 00       	push   $0x80
c00316d0:	50                   	push   %eax
c00316d1:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c00316d7:	8d 80 00 0c 00 00    	lea    0xc00(%eax),%eax
c00316dd:	50                   	push   %eax
c00316de:	e8 b1 06 00 00       	call   c0031d94 <memcpy>
c00316e3:	83 c4 10             	add    $0x10,%esp
c00316e6:	c7 c0 00 20 09 c0    	mov    $0xc0092000,%eax
c00316ec:	05 00 00 00 40       	add    $0x40000000,%eax
c00316f1:	25 00 fc ff ff       	and    $0xfffffc00,%eax
c00316f6:	89 c2                	mov    %eax,%edx
c00316f8:	c7 c0 00 30 09 c0    	mov    $0xc0093000,%eax
c00316fe:	89 10                	mov    %edx,(%eax)
c0031700:	90                   	nop
c0031701:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031704:	c9                   	leave  
c0031705:	c3                   	ret    

c0031706 <write_cr3>:
c0031706:	55                   	push   %ebp
c0031707:	89 e5                	mov    %esp,%ebp
c0031709:	e8 53 ea ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c003170e:	05 f2 a8 00 00       	add    $0xa8f2,%eax
c0031713:	8b 45 08             	mov    0x8(%ebp),%eax
c0031716:	0f 22 d8             	mov    %eax,%cr3
c0031719:	90                   	nop
c003171a:	5d                   	pop    %ebp
c003171b:	c3                   	ret    

c003171c <loader>:
c003171c:	55                   	push   %ebp
c003171d:	89 e5                	mov    %esp,%ebp
c003171f:	53                   	push   %ebx
c0031720:	83 ec 34             	sub    $0x34,%esp
c0031723:	e8 91 ea ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0031728:	81 c3 d8 a8 00 00    	add    $0xa8d8,%ebx
c003172e:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0031735:	8d 83 70 cc ff ff    	lea    -0x3390(%ebx),%eax
c003173b:	50                   	push   %eax
c003173c:	6a 1c                	push   $0x1c
c003173e:	8d 83 24 cc ff ff    	lea    -0x33dc(%ebx),%eax
c0031744:	50                   	push   %eax
c0031745:	8d 83 34 cc ff ff    	lea    -0x33cc(%ebx),%eax
c003174b:	50                   	push   %eax
c003174c:	e8 14 ea ff ff       	call   c0030165 <printk>
c0031751:	83 c4 10             	add    $0x10,%esp
c0031754:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031757:	8b 50 1c             	mov    0x1c(%eax),%edx
c003175a:	8b 45 e8             	mov    -0x18(%ebp),%eax
c003175d:	01 d0                	add    %edx,%eax
c003175f:	89 45 f4             	mov    %eax,-0xc(%ebp)
c0031762:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031765:	8b 40 2c             	mov    0x2c(%eax),%eax
c0031768:	0f b7 c0             	movzwl %ax,%eax
c003176b:	c1 e0 05             	shl    $0x5,%eax
c003176e:	89 c2                	mov    %eax,%edx
c0031770:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031773:	01 d0                	add    %edx,%eax
c0031775:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031778:	e9 b7 00 00 00       	jmp    c0031834 <loader+0x118>
c003177d:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031780:	8b 00                	mov    (%eax),%eax
c0031782:	83 f8 01             	cmp    $0x1,%eax
c0031785:	0f 85 a5 00 00 00    	jne    c0031830 <loader+0x114>
c003178b:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003178e:	8b 50 04             	mov    0x4(%eax),%edx
c0031791:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031794:	01 d0                	add    %edx,%eax
c0031796:	89 45 f0             	mov    %eax,-0x10(%ebp)
c0031799:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003179c:	8b 50 10             	mov    0x10(%eax),%edx
c003179f:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00317a2:	01 d0                	add    %edx,%eax
c00317a4:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00317a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317aa:	8b 40 08             	mov    0x8(%eax),%eax
c00317ad:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00317b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317b3:	8b 40 14             	mov    0x14(%eax),%eax
c00317b6:	89 c2                	mov    %eax,%edx
c00317b8:	8b 45 dc             	mov    -0x24(%ebp),%eax
c00317bb:	83 ec 08             	sub    $0x8,%esp
c00317be:	52                   	push   %edx
c00317bf:	50                   	push   %eax
c00317c0:	e8 3b 03 00 00       	call   c0031b00 <mm_malloc>
c00317c5:	83 c4 10             	add    $0x10,%esp
c00317c8:	89 45 ec             	mov    %eax,-0x14(%ebp)
c00317cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
c00317ce:	8b 50 14             	mov    0x14(%eax),%edx
c00317d1:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00317d4:	01 d0                	add    %edx,%eax
c00317d6:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00317d9:	eb 10                	jmp    c00317eb <loader+0xcf>
c00317db:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00317de:	8a 10                	mov    (%eax),%dl
c00317e0:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00317e3:	88 10                	mov    %dl,(%eax)
c00317e5:	ff 45 f0             	incl   -0x10(%ebp)
c00317e8:	ff 45 ec             	incl   -0x14(%ebp)
c00317eb:	8b 45 f0             	mov    -0x10(%ebp),%eax
c00317ee:	3b 45 e0             	cmp    -0x20(%ebp),%eax
c00317f1:	72 e8                	jb     c00317db <loader+0xbf>
c00317f3:	eb 09                	jmp    c00317fe <loader+0xe2>
c00317f5:	8b 45 ec             	mov    -0x14(%ebp),%eax
c00317f8:	c6 00 00             	movb   $0x0,(%eax)
c00317fb:	ff 45 ec             	incl   -0x14(%ebp)
c00317fe:	8b 45 ec             	mov    -0x14(%ebp),%eax
c0031801:	3b 45 d8             	cmp    -0x28(%ebp),%eax
c0031804:	72 ef                	jb     c00317f5 <loader+0xd9>
c0031806:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031809:	8b 50 08             	mov    0x8(%eax),%edx
c003180c:	8b 45 f4             	mov    -0xc(%ebp),%eax
c003180f:	8b 40 14             	mov    0x14(%eax),%eax
c0031812:	01 d0                	add    %edx,%eax
c0031814:	48                   	dec    %eax
c0031815:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0031818:	c7 c0 90 de 04 c0    	mov    $0xc004de90,%eax
c003181e:	8b 00                	mov    (%eax),%eax
c0031820:	3b 45 d4             	cmp    -0x2c(%ebp),%eax
c0031823:	73 0b                	jae    c0031830 <loader+0x114>
c0031825:	c7 c0 90 de 04 c0    	mov    $0xc004de90,%eax
c003182b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003182e:	89 10                	mov    %edx,(%eax)
c0031830:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
c0031834:	8b 45 f4             	mov    -0xc(%ebp),%eax
c0031837:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
c003183a:	0f 82 3d ff ff ff    	jb     c003177d <loader+0x61>
c0031840:	8b 45 e8             	mov    -0x18(%ebp),%eax
c0031843:	8b 40 18             	mov    0x18(%eax),%eax
c0031846:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0031849:	83 ec 08             	sub    $0x8,%esp
c003184c:	68 00 00 10 00       	push   $0x100000
c0031851:	68 00 00 f0 bf       	push   $0xbff00000
c0031856:	e8 a5 02 00 00       	call   c0031b00 <mm_malloc>
c003185b:	83 c4 10             	add    $0x10,%esp
c003185e:	e8 c5 fd ff ff       	call   c0031628 <get_ucr3>
c0031863:	83 ec 0c             	sub    $0xc,%esp
c0031866:	50                   	push   %eax
c0031867:	e8 9a fe ff ff       	call   c0031706 <write_cr3>
c003186c:	83 c4 10             	add    $0x10,%esp
c003186f:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0031872:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031875:	c9                   	leave  
c0031876:	c3                   	ret    

c0031877 <sti>:
c0031877:	55                   	push   %ebp
c0031878:	89 e5                	mov    %esp,%ebp
c003187a:	e8 e2 e8 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c003187f:	05 81 a7 00 00       	add    $0xa781,%eax
c0031884:	fb                   	sti    
c0031885:	90                   	nop
c0031886:	5d                   	pop    %ebp
c0031887:	c3                   	ret    

c0031888 <cli>:
c0031888:	55                   	push   %ebp
c0031889:	89 e5                	mov    %esp,%ebp
c003188b:	e8 d1 e8 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0031890:	05 70 a7 00 00       	add    $0xa770,%eax
c0031895:	fa                   	cli    
c0031896:	90                   	nop
c0031897:	5d                   	pop    %ebp
c0031898:	c3                   	ret    

c0031899 <sys_brk>:
c0031899:	55                   	push   %ebp
c003189a:	89 e5                	mov    %esp,%ebp
c003189c:	53                   	push   %ebx
c003189d:	83 ec 04             	sub    $0x4,%esp
c00318a0:	e8 bc e8 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00318a5:	05 5b a7 00 00       	add    $0xa75b,%eax
c00318aa:	8b 55 08             	mov    0x8(%ebp),%edx
c00318ad:	8b 52 10             	mov    0x10(%edx),%edx
c00318b0:	83 ec 0c             	sub    $0xc,%esp
c00318b3:	52                   	push   %edx
c00318b4:	89 c3                	mov    %eax,%ebx
c00318b6:	e8 84 fd ff ff       	call   c003163f <mm_brk>
c00318bb:	83 c4 10             	add    $0x10,%esp
c00318be:	8b 45 08             	mov    0x8(%ebp),%eax
c00318c1:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
c00318c8:	90                   	nop
c00318c9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00318cc:	c9                   	leave  
c00318cd:	c3                   	ret    

c00318ce <sys_open>:
c00318ce:	55                   	push   %ebp
c00318cf:	89 e5                	mov    %esp,%ebp
c00318d1:	53                   	push   %ebx
c00318d2:	83 ec 04             	sub    $0x4,%esp
c00318d5:	e8 87 e8 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00318da:	05 26 a7 00 00       	add    $0xa726,%eax
c00318df:	8b 55 08             	mov    0x8(%ebp),%edx
c00318e2:	8b 52 18             	mov    0x18(%edx),%edx
c00318e5:	89 d1                	mov    %edx,%ecx
c00318e7:	8b 55 08             	mov    0x8(%ebp),%edx
c00318ea:	8b 52 10             	mov    0x10(%edx),%edx
c00318ed:	83 ec 08             	sub    $0x8,%esp
c00318f0:	51                   	push   %ecx
c00318f1:	52                   	push   %edx
c00318f2:	89 c3                	mov    %eax,%ebx
c00318f4:	e8 4c f7 ff ff       	call   c0031045 <fs_open>
c00318f9:	83 c4 10             	add    $0x10,%esp
c00318fc:	89 c2                	mov    %eax,%edx
c00318fe:	8b 45 08             	mov    0x8(%ebp),%eax
c0031901:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031904:	90                   	nop
c0031905:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031908:	c9                   	leave  
c0031909:	c3                   	ret    

c003190a <sys_read>:
c003190a:	55                   	push   %ebp
c003190b:	89 e5                	mov    %esp,%ebp
c003190d:	53                   	push   %ebx
c003190e:	83 ec 04             	sub    $0x4,%esp
c0031911:	e8 4b e8 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0031916:	05 ea a6 00 00       	add    $0xa6ea,%eax
c003191b:	8b 55 08             	mov    0x8(%ebp),%edx
c003191e:	8b 52 14             	mov    0x14(%edx),%edx
c0031921:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031924:	8b 49 18             	mov    0x18(%ecx),%ecx
c0031927:	89 cb                	mov    %ecx,%ebx
c0031929:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003192c:	8b 49 10             	mov    0x10(%ecx),%ecx
c003192f:	83 ec 04             	sub    $0x4,%esp
c0031932:	52                   	push   %edx
c0031933:	53                   	push   %ebx
c0031934:	51                   	push   %ecx
c0031935:	89 c3                	mov    %eax,%ebx
c0031937:	e8 4b f7 ff ff       	call   c0031087 <fs_read>
c003193c:	83 c4 10             	add    $0x10,%esp
c003193f:	89 c2                	mov    %eax,%edx
c0031941:	8b 45 08             	mov    0x8(%ebp),%eax
c0031944:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031947:	90                   	nop
c0031948:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003194b:	c9                   	leave  
c003194c:	c3                   	ret    

c003194d <sys_write>:
c003194d:	55                   	push   %ebp
c003194e:	89 e5                	mov    %esp,%ebp
c0031950:	53                   	push   %ebx
c0031951:	83 ec 04             	sub    $0x4,%esp
c0031954:	e8 08 e8 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c0031959:	05 a7 a6 00 00       	add    $0xa6a7,%eax
c003195e:	8b 55 08             	mov    0x8(%ebp),%edx
c0031961:	8b 52 14             	mov    0x14(%edx),%edx
c0031964:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0031967:	8b 49 18             	mov    0x18(%ecx),%ecx
c003196a:	89 cb                	mov    %ecx,%ebx
c003196c:	8b 4d 08             	mov    0x8(%ebp),%ecx
c003196f:	8b 49 10             	mov    0x10(%ecx),%ecx
c0031972:	83 ec 04             	sub    $0x4,%esp
c0031975:	52                   	push   %edx
c0031976:	53                   	push   %ebx
c0031977:	51                   	push   %ecx
c0031978:	89 c3                	mov    %eax,%ebx
c003197a:	e8 7e f7 ff ff       	call   c00310fd <fs_write>
c003197f:	83 c4 10             	add    $0x10,%esp
c0031982:	89 c2                	mov    %eax,%edx
c0031984:	8b 45 08             	mov    0x8(%ebp),%eax
c0031987:	89 50 1c             	mov    %edx,0x1c(%eax)
c003198a:	90                   	nop
c003198b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c003198e:	c9                   	leave  
c003198f:	c3                   	ret    

c0031990 <sys_lseek>:
c0031990:	55                   	push   %ebp
c0031991:	89 e5                	mov    %esp,%ebp
c0031993:	53                   	push   %ebx
c0031994:	83 ec 04             	sub    $0x4,%esp
c0031997:	e8 c5 e7 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c003199c:	05 64 a6 00 00       	add    $0xa664,%eax
c00319a1:	8b 55 08             	mov    0x8(%ebp),%edx
c00319a4:	8b 52 14             	mov    0x14(%edx),%edx
c00319a7:	89 d3                	mov    %edx,%ebx
c00319a9:	8b 55 08             	mov    0x8(%ebp),%edx
c00319ac:	8b 52 18             	mov    0x18(%edx),%edx
c00319af:	89 d1                	mov    %edx,%ecx
c00319b1:	8b 55 08             	mov    0x8(%ebp),%edx
c00319b4:	8b 52 10             	mov    0x10(%edx),%edx
c00319b7:	83 ec 04             	sub    $0x4,%esp
c00319ba:	53                   	push   %ebx
c00319bb:	51                   	push   %ecx
c00319bc:	52                   	push   %edx
c00319bd:	89 c3                	mov    %eax,%ebx
c00319bf:	e8 b5 f7 ff ff       	call   c0031179 <fs_lseek>
c00319c4:	83 c4 10             	add    $0x10,%esp
c00319c7:	89 c2                	mov    %eax,%edx
c00319c9:	8b 45 08             	mov    0x8(%ebp),%eax
c00319cc:	89 50 1c             	mov    %edx,0x1c(%eax)
c00319cf:	90                   	nop
c00319d0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c00319d3:	c9                   	leave  
c00319d4:	c3                   	ret    

c00319d5 <sys_close>:
c00319d5:	55                   	push   %ebp
c00319d6:	89 e5                	mov    %esp,%ebp
c00319d8:	53                   	push   %ebx
c00319d9:	83 ec 04             	sub    $0x4,%esp
c00319dc:	e8 80 e7 ff ff       	call   c0030161 <__x86.get_pc_thunk.ax>
c00319e1:	05 1f a6 00 00       	add    $0xa61f,%eax
c00319e6:	8b 55 08             	mov    0x8(%ebp),%edx
c00319e9:	8b 52 10             	mov    0x10(%edx),%edx
c00319ec:	83 ec 0c             	sub    $0xc,%esp
c00319ef:	52                   	push   %edx
c00319f0:	89 c3                	mov    %eax,%ebx
c00319f2:	e8 c4 f7 ff ff       	call   c00311bb <fs_close>
c00319f7:	83 c4 10             	add    $0x10,%esp
c00319fa:	89 c2                	mov    %eax,%edx
c00319fc:	8b 45 08             	mov    0x8(%ebp),%eax
c00319ff:	89 50 1c             	mov    %edx,0x1c(%eax)
c0031a02:	90                   	nop
c0031a03:	8b 5d fc             	mov    -0x4(%ebp),%ebx
c0031a06:	c9                   	leave  
c0031a07:	c3                   	ret    

c0031a08 <do_syscall>:
c0031a08:	55                   	push   %ebp
c0031a09:	89 e5                	mov    %esp,%ebp
c0031a0b:	53                   	push   %ebx
c0031a0c:	83 ec 04             	sub    $0x4,%esp
c0031a0f:	e8 a5 e7 ff ff       	call   c00301b9 <__x86.get_pc_thunk.bx>
c0031a14:	81 c3 ec a5 00 00    	add    $0xa5ec,%ebx
c0031a1a:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a1d:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031a20:	83 f8 2d             	cmp    $0x2d,%eax
c0031a23:	0f 87 98 00 00 00    	ja     c0031ac1 <.L10>
c0031a29:	c1 e0 02             	shl    $0x2,%eax
c0031a2c:	8b 84 18 e8 cc ff ff 	mov    -0x3318(%eax,%ebx,1),%eax
c0031a33:	01 d8                	add    %ebx,%eax
c0031a35:	ff e0                	jmp    *%eax

c0031a37 <.L11>:
c0031a37:	e8 4c fe ff ff       	call   c0031888 <cli>
c0031a3c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a3f:	8b 40 18             	mov    0x18(%eax),%eax
c0031a42:	89 c2                	mov    %eax,%edx
c0031a44:	8b 45 08             	mov    0x8(%ebp),%eax
c0031a47:	8b 40 10             	mov    0x10(%eax),%eax
c0031a4a:	83 ec 08             	sub    $0x8,%esp
c0031a4d:	52                   	push   %edx
c0031a4e:	50                   	push   %eax
c0031a4f:	e8 b5 e7 ff ff       	call   c0030209 <add_irq_handle>
c0031a54:	83 c4 10             	add    $0x10,%esp
c0031a57:	e8 1b fe ff ff       	call   c0031877 <sti>
c0031a5c:	e9 8f 00 00 00       	jmp    c0031af0 <.L10+0x2f>

c0031a61 <.L18>:
c0031a61:	83 ec 0c             	sub    $0xc,%esp
c0031a64:	ff 75 08             	pushl  0x8(%ebp)
c0031a67:	e8 2d fe ff ff       	call   c0031899 <sys_brk>
c0031a6c:	83 c4 10             	add    $0x10,%esp
c0031a6f:	eb 7f                	jmp    c0031af0 <.L10+0x2f>

c0031a71 <.L15>:
c0031a71:	83 ec 0c             	sub    $0xc,%esp
c0031a74:	ff 75 08             	pushl  0x8(%ebp)
c0031a77:	e8 52 fe ff ff       	call   c00318ce <sys_open>
c0031a7c:	83 c4 10             	add    $0x10,%esp
c0031a7f:	eb 6f                	jmp    c0031af0 <.L10+0x2f>

c0031a81 <.L13>:
c0031a81:	83 ec 0c             	sub    $0xc,%esp
c0031a84:	ff 75 08             	pushl  0x8(%ebp)
c0031a87:	e8 7e fe ff ff       	call   c003190a <sys_read>
c0031a8c:	83 c4 10             	add    $0x10,%esp
c0031a8f:	eb 5f                	jmp    c0031af0 <.L10+0x2f>

c0031a91 <.L14>:
c0031a91:	83 ec 0c             	sub    $0xc,%esp
c0031a94:	ff 75 08             	pushl  0x8(%ebp)
c0031a97:	e8 b1 fe ff ff       	call   c003194d <sys_write>
c0031a9c:	83 c4 10             	add    $0x10,%esp
c0031a9f:	eb 4f                	jmp    c0031af0 <.L10+0x2f>

c0031aa1 <.L17>:
c0031aa1:	83 ec 0c             	sub    $0xc,%esp
c0031aa4:	ff 75 08             	pushl  0x8(%ebp)
c0031aa7:	e8 e4 fe ff ff       	call   c0031990 <sys_lseek>
c0031aac:	83 c4 10             	add    $0x10,%esp
c0031aaf:	eb 3f                	jmp    c0031af0 <.L10+0x2f>

c0031ab1 <.L16>:
c0031ab1:	83 ec 0c             	sub    $0xc,%esp
c0031ab4:	ff 75 08             	pushl  0x8(%ebp)
c0031ab7:	e8 19 ff ff ff       	call   c00319d5 <sys_close>
c0031abc:	83 c4 10             	add    $0x10,%esp
c0031abf:	eb 2f                	jmp    c0031af0 <.L10+0x2f>

c0031ac1 <.L10>:
c0031ac1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031ac4:	8b 40 1c             	mov    0x1c(%eax),%eax
c0031ac7:	83 ec 0c             	sub    $0xc,%esp
c0031aca:	50                   	push   %eax
c0031acb:	8d 83 a0 cd ff ff    	lea    -0x3260(%ebx),%eax
c0031ad1:	50                   	push   %eax
c0031ad2:	6a 35                	push   $0x35
c0031ad4:	8d 83 78 cc ff ff    	lea    -0x3388(%ebx),%eax
c0031ada:	50                   	push   %eax
c0031adb:	8d 83 94 cc ff ff    	lea    -0x336c(%ebx),%eax
c0031ae1:	50                   	push   %eax
c0031ae2:	e8 7e e6 ff ff       	call   c0030165 <printk>
c0031ae7:	83 c4 20             	add    $0x20,%esp
c0031aea:	b8 01 00 00 00       	mov    $0x1,%eax
c0031aef:	82 90 8b 5d fc c9 c3 	adcb   $0xc3,-0x3603a275(%eax)
c0031af6:	66 90                	xchg   %ax,%ax
c0031af8:	66 90                	xchg   %ax,%ax
c0031afa:	66 90                	xchg   %ax,%ax
c0031afc:	66 90                	xchg   %ax,%ax
c0031afe:	66 90                	xchg   %ax,%ax

c0031b00 <mm_malloc>:
c0031b00:	55                   	push   %ebp
c0031b01:	31 c0                	xor    %eax,%eax
c0031b03:	89 e5                	mov    %esp,%ebp
c0031b05:	57                   	push   %edi
c0031b06:	56                   	push   %esi
c0031b07:	53                   	push   %ebx
c0031b08:	83 ec 3c             	sub    $0x3c,%esp
c0031b0b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0031b0e:	85 db                	test   %ebx,%ebx
c0031b10:	0f 8e 36 02 00 00    	jle    c0031d4c <mm_malloc+0x24c>
c0031b16:	e8 f8 fa ff ff       	call   c0031613 <get_updir>
c0031b1b:	89 c6                	mov    %eax,%esi
c0031b1d:	e8 06 fb ff ff       	call   c0031628 <get_ucr3>
c0031b22:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b25:	8d 5c 1a ff          	lea    -0x1(%edx,%ebx,1),%ebx
c0031b29:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c0031b2c:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0031b2f:	b8 00 10 00 00       	mov    $0x1000,%eax
c0031b34:	29 d0                	sub    %edx,%eax
c0031b36:	89 da                	mov    %ebx,%edx
c0031b38:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
c0031b3e:	01 d0                	add    %edx,%eax
c0031b40:	85 c0                	test   %eax,%eax
c0031b42:	0f 8e c0 00 00 00    	jle    c0031c08 <mm_malloc+0x108>
c0031b48:	8b 55 08             	mov    0x8(%ebp),%edx
c0031b4b:	83 e8 01             	sub    $0x1,%eax
c0031b4e:	89 f7                	mov    %esi,%edi
c0031b50:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031b55:	8d 84 02 00 10 00 00 	lea    0x1000(%edx,%eax,1),%eax
c0031b5c:	89 d3                	mov    %edx,%ebx
c0031b5e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0031b61:	eb 51                	jmp    c0031bb4 <mm_malloc+0xb4>
c0031b63:	90                   	nop
c0031b64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031b68:	8b 31                	mov    (%ecx),%esi
c0031b6a:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
c0031b70:	81 ee 00 00 00 40    	sub    $0x40000000,%esi
c0031b76:	89 d8                	mov    %ebx,%eax
c0031b78:	c1 e8 0a             	shr    $0xa,%eax
c0031b7b:	25 fc 0f 00 00       	and    $0xffc,%eax
c0031b80:	01 c6                	add    %eax,%esi
c0031b82:	f6 06 01             	testb  $0x1,(%esi)
c0031b85:	75 22                	jne    c0031ba9 <mm_malloc+0xa9>
c0031b87:	a1 20 c0 03 c0       	mov    0xc003c020,%eax
c0031b8c:	3d ff 7f 00 00       	cmp    $0x7fff,%eax
c0031b91:	0f 8f c1 01 00 00    	jg     c0031d58 <mm_malloc+0x258>
c0031b97:	89 c1                	mov    %eax,%ecx
c0031b99:	83 c0 01             	add    $0x1,%eax
c0031b9c:	c1 e1 0c             	shl    $0xc,%ecx
c0031b9f:	83 c9 07             	or     $0x7,%ecx
c0031ba2:	89 0e                	mov    %ecx,(%esi)
c0031ba4:	a3 20 c0 03 c0       	mov    %eax,0xc003c020
c0031ba9:	81 c3 00 10 00 00    	add    $0x1000,%ebx
c0031baf:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
c0031bb2:	74 54                	je     c0031c08 <mm_malloc+0x108>
c0031bb4:	89 d8                	mov    %ebx,%eax
c0031bb6:	c1 e8 16             	shr    $0x16,%eax
c0031bb9:	8d 0c 87             	lea    (%edi,%eax,4),%ecx
c0031bbc:	f6 01 01             	testb  $0x1,(%ecx)
c0031bbf:	75 a7                	jne    c0031b68 <mm_malloc+0x68>
c0031bc1:	a1 00 e0 04 c0       	mov    0xc004e000,%eax
c0031bc6:	89 c6                	mov    %eax,%esi
c0031bc8:	83 c0 01             	add    $0x1,%eax
c0031bcb:	c1 e6 0c             	shl    $0xc,%esi
c0031bce:	81 c6 00 f0 04 c0    	add    $0xc004f000,%esi
c0031bd4:	a3 00 e0 04 c0       	mov    %eax,0xc004e000
c0031bd9:	8d 86 00 00 00 40    	lea    0x40000000(%esi),%eax
c0031bdf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0031be4:	83 c8 07             	or     $0x7,%eax
c0031be7:	89 01                	mov    %eax,(%ecx)
c0031be9:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
c0031bf0:	00 
c0031bf1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0031bf8:	00 
c0031bf9:	89 34 24             	mov    %esi,(%esp)
c0031bfc:	e8 db 01 00 00       	call   c0031ddc <memset>
c0031c01:	e9 70 ff ff ff       	jmp    c0031b76 <mm_malloc+0x76>
c0031c06:	66 90                	xchg   %ax,%ax
c0031c08:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c0031c0b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0031c0e:	81 eb 00 00 00 40    	sub    $0x40000000,%ebx
c0031c14:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
c0031c1a:	c1 e8 16             	shr    $0x16,%eax
c0031c1d:	8b 34 83             	mov    (%ebx,%eax,4),%esi
c0031c20:	f7 c6 01 00 00 00    	test   $0x1,%esi
c0031c26:	75 32                	jne    c0031c5a <mm_malloc+0x15a>
c0031c28:	c7 44 24 10 cf 8d 03 	movl   $0xc0038dcf,0x10(%esp)
c0031c2f:	c0 
c0031c30:	c7 44 24 0c 36 8e 03 	movl   $0xc0038e36,0xc(%esp)
c0031c37:	c0 
c0031c38:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031c3f:	00 
c0031c40:	c7 44 24 04 be 8d 03 	movl   $0xc0038dbe,0x4(%esp)
c0031c47:	c0 
c0031c48:	c7 04 24 e0 8d 03 c0 	movl   $0xc0038de0,(%esp)
c0031c4f:	e8 11 e5 ff ff       	call   c0030165 <printk>
c0031c54:	b8 01 00 00 00       	mov    $0x1,%eax
c0031c59:	82 8b 55 e0 8d 86 00 	orb    $0x0,-0x79721fab(%ebx)
c0031c60:	00 00                	add    %al,(%eax)
c0031c62:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0031c69:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0031c70:	00 f6                	add    %dh,%dh
c0031c72:	04 90                	add    $0x90,%al
c0031c74:	01 75 32             	add    %esi,0x32(%ebp)
c0031c77:	c7 44 24 10 d7 8d 03 	movl   $0xc0038dd7,0x10(%esp)
c0031c7e:	c0 
c0031c7f:	c7 44 24 0c 36 8e 03 	movl   $0xc0038e36,0xc(%esp)
c0031c86:	c0 
c0031c87:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031c8e:	00 
c0031c8f:	c7 44 24 04 be 8d 03 	movl   $0xc0038dbe,0x4(%esp)
c0031c96:	c0 
c0031c97:	c7 04 24 e0 8d 03 c0 	movl   $0xc0038de0,(%esp)
c0031c9e:	e8 c2 e4 ff ff       	call   c0030165 <printk>
c0031ca3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031ca8:	82 8b 45 08 c1 e8 16 	orb    $0x16,-0x173ef7bb(%ebx)
c0031caf:	8b 1c 83             	mov    (%ebx,%eax,4),%ebx
c0031cb2:	f6 c3 01             	test   $0x1,%bl
c0031cb5:	75 32                	jne    c0031ce9 <mm_malloc+0x1e9>
c0031cb7:	c7 44 24 10 cf 8d 03 	movl   $0xc0038dcf,0x10(%esp)
c0031cbe:	c0 
c0031cbf:	c7 44 24 0c 36 8e 03 	movl   $0xc0038e36,0xc(%esp)
c0031cc6:	c0 
c0031cc7:	c7 44 24 08 11 00 00 	movl   $0x11,0x8(%esp)
c0031cce:	00 
c0031ccf:	c7 44 24 04 be 8d 03 	movl   $0xc0038dbe,0x4(%esp)
c0031cd6:	c0 
c0031cd7:	c7 04 24 e0 8d 03 c0 	movl   $0xc0038de0,(%esp)
c0031cde:	e8 82 e4 ff ff       	call   c0030165 <printk>
c0031ce3:	b8 01 00 00 00       	mov    $0x1,%eax
c0031ce8:	82 8b 55 08 8d 83 00 	orb    $0x0,-0x7c72f7ab(%ebx)
c0031cef:	00 00                	add    %al,(%eax)
c0031cf1:	c0 25 00 f0 ff ff c1 	shlb   $0xc1,0xfffff000
c0031cf8:	ea 0c 81 e2 ff 03 00 	ljmp   $0x3,$0xffe2810c
c0031cff:	00 8b 1c 90 f6 c3    	add    %cl,-0x3c096fe4(%ebx)
c0031d05:	01 75 32             	add    %esi,0x32(%ebp)
c0031d08:	c7 44 24 10 d7 8d 03 	movl   $0xc0038dd7,0x10(%esp)
c0031d0f:	c0 
c0031d10:	c7 44 24 0c 36 8e 03 	movl   $0xc0038e36,0xc(%esp)
c0031d17:	c0 
c0031d18:	c7 44 24 08 13 00 00 	movl   $0x13,0x8(%esp)
c0031d1f:	00 
c0031d20:	c7 44 24 04 be 8d 03 	movl   $0xc0038dbe,0x4(%esp)
c0031d27:	c0 
c0031d28:	c7 04 24 e0 8d 03 c0 	movl   $0xc0038de0,(%esp)
c0031d2f:	e8 31 e4 ff ff       	call   c0030165 <printk>
c0031d34:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d39:	82 8b 55 08 89 d8 25 	orb    $0x25,-0x2776f7ab(%ebx)
c0031d40:	00 f0                	add    %dh,%al
c0031d42:	ff                   	(bad)  
c0031d43:	ff 81 e2 ff 0f 00    	incl   0xfffe2(%ecx)
c0031d49:	00 09                	add    %cl,(%ecx)
c0031d4b:	d0 83 c4 3c 5b 5e    	rolb   0x5e5b3cc4(%ebx)
c0031d51:	5f                   	pop    %edi
c0031d52:	5d                   	pop    %ebp
c0031d53:	c3                   	ret    
c0031d54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031d58:	c7 44 24 10 ab 8d 03 	movl   $0xc0038dab,0x10(%esp)
c0031d5f:	c0 
c0031d60:	c7 44 24 0c 2c 8e 03 	movl   $0xc0038e2c,0xc(%esp)
c0031d67:	c0 
c0031d68:	c7 44 24 08 31 00 00 	movl   $0x31,0x8(%esp)
c0031d6f:	00 
c0031d70:	c7 44 24 04 be 8d 03 	movl   $0xc0038dbe,0x4(%esp)
c0031d77:	c0 
c0031d78:	c7 04 24 e0 8d 03 c0 	movl   $0xc0038de0,(%esp)
c0031d7f:	e8 e1 e3 ff ff       	call   c0030165 <printk>
c0031d84:	b8 01 00 00 00       	mov    $0x1,%eax
c0031d89:	82 a1 20 c0 03 c0 e9 	andb   $0xe9,-0x3ffc3fe0(%ecx)
c0031d90:	03 fe                	add    %esi,%edi
c0031d92:	ff                   	(bad)  
c0031d93:	ff                   	.byte 0xff

c0031d94 <memcpy>:
c0031d94:	55                   	push   %ebp
c0031d95:	89 e5                	mov    %esp,%ebp
c0031d97:	56                   	push   %esi
c0031d98:	57                   	push   %edi
c0031d99:	53                   	push   %ebx
c0031d9a:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031d9d:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031da0:	8b 75 0c             	mov    0xc(%ebp),%esi
c0031da3:	fc                   	cld    
c0031da4:	83 f9 08             	cmp    $0x8,%ecx
c0031da7:	76 26                	jbe    c0031dcf <memcpy+0x3b>
c0031da9:	89 fa                	mov    %edi,%edx
c0031dab:	89 cb                	mov    %ecx,%ebx
c0031dad:	83 e2 03             	and    $0x3,%edx
c0031db0:	74 10                	je     c0031dc2 <memcpy+0x2e>
c0031db2:	b9 04 00 00 00       	mov    $0x4,%ecx
c0031db7:	29 d1                	sub    %edx,%ecx
c0031db9:	83 e1 03             	and    $0x3,%ecx
c0031dbc:	29 cb                	sub    %ecx,%ebx
c0031dbe:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031dc0:	89 d9                	mov    %ebx,%ecx
c0031dc2:	c1 e9 02             	shr    $0x2,%ecx
c0031dc5:	8d 76 00             	lea    0x0(%esi),%esi
c0031dc8:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0031dca:	89 d9                	mov    %ebx,%ecx
c0031dcc:	83 e1 03             	and    $0x3,%ecx
c0031dcf:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0031dd1:	8b 45 08             	mov    0x8(%ebp),%eax
c0031dd4:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0031dd7:	5b                   	pop    %ebx
c0031dd8:	5f                   	pop    %edi
c0031dd9:	5e                   	pop    %esi
c0031dda:	c9                   	leave  
c0031ddb:	c3                   	ret    

c0031ddc <memset>:
c0031ddc:	55                   	push   %ebp
c0031ddd:	89 e5                	mov    %esp,%ebp
c0031ddf:	57                   	push   %edi
c0031de0:	8b 7d 08             	mov    0x8(%ebp),%edi
c0031de3:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0031de7:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0031dea:	fc                   	cld    
c0031deb:	83 f9 10             	cmp    $0x10,%ecx
c0031dee:	76 69                	jbe    c0031e59 <memset+0x7d>
c0031df0:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031df6:	74 4c                	je     c0031e44 <memset+0x68>
c0031df8:	88 07                	mov    %al,(%edi)
c0031dfa:	47                   	inc    %edi
c0031dfb:	49                   	dec    %ecx
c0031dfc:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e02:	74 40                	je     c0031e44 <memset+0x68>
c0031e04:	88 07                	mov    %al,(%edi)
c0031e06:	47                   	inc    %edi
c0031e07:	49                   	dec    %ecx
c0031e08:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e0e:	74 34                	je     c0031e44 <memset+0x68>
c0031e10:	88 07                	mov    %al,(%edi)
c0031e12:	47                   	inc    %edi
c0031e13:	49                   	dec    %ecx
c0031e14:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e1a:	74 28                	je     c0031e44 <memset+0x68>
c0031e1c:	88 07                	mov    %al,(%edi)
c0031e1e:	47                   	inc    %edi
c0031e1f:	49                   	dec    %ecx
c0031e20:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e26:	74 1c                	je     c0031e44 <memset+0x68>
c0031e28:	88 07                	mov    %al,(%edi)
c0031e2a:	47                   	inc    %edi
c0031e2b:	49                   	dec    %ecx
c0031e2c:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e32:	74 10                	je     c0031e44 <memset+0x68>
c0031e34:	88 07                	mov    %al,(%edi)
c0031e36:	47                   	inc    %edi
c0031e37:	49                   	dec    %ecx
c0031e38:	f7 c7 07 00 00 00    	test   $0x7,%edi
c0031e3e:	74 04                	je     c0031e44 <memset+0x68>
c0031e40:	88 07                	mov    %al,(%edi)
c0031e42:	47                   	inc    %edi
c0031e43:	49                   	dec    %ecx
c0031e44:	88 c4                	mov    %al,%ah
c0031e46:	89 c2                	mov    %eax,%edx
c0031e48:	c1 e2 10             	shl    $0x10,%edx
c0031e4b:	09 d0                	or     %edx,%eax
c0031e4d:	89 ca                	mov    %ecx,%edx
c0031e4f:	c1 e9 02             	shr    $0x2,%ecx
c0031e52:	83 e2 03             	and    $0x3,%edx
c0031e55:	f3 ab                	rep stos %eax,%es:(%edi)
c0031e57:	89 d1                	mov    %edx,%ecx
c0031e59:	f3 aa                	rep stos %al,%es:(%edi)
c0031e5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0031e5e:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0031e61:	5f                   	pop    %edi
c0031e62:	c9                   	leave  
c0031e63:	c3                   	ret    
c0031e64:	66 90                	xchg   %ax,%ax
c0031e66:	66 90                	xchg   %ax,%ax
c0031e68:	66 90                	xchg   %ax,%ax
c0031e6a:	66 90                	xchg   %ax,%ax
c0031e6c:	66 90                	xchg   %ax,%ax
c0031e6e:	66 90                	xchg   %ax,%ax

c0031e70 <_vsnprintf_r>:
c0031e70:	55                   	push   %ebp
c0031e71:	89 e5                	mov    %esp,%ebp
c0031e73:	56                   	push   %esi
c0031e74:	53                   	push   %ebx
c0031e75:	83 c4 80             	add    $0xffffff80,%esp
c0031e78:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031e7b:	8b 75 08             	mov    0x8(%ebp),%esi
c0031e7e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031e81:	85 db                	test   %ebx,%ebx
c0031e83:	78 63                	js     c0031ee8 <_vsnprintf_r+0x78>
c0031e85:	ba 08 02 00 00       	mov    $0x208,%edx
c0031e8a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0031e8f:	66 89 55 9c          	mov    %dx,-0x64(%ebp)
c0031e93:	8d 53 ff             	lea    -0x1(%ebx),%edx
c0031e96:	89 45 90             	mov    %eax,-0x70(%ebp)
c0031e99:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0031e9c:	31 c0                	xor    %eax,%eax
c0031e9e:	85 db                	test   %ebx,%ebx
c0031ea0:	0f 45 c2             	cmovne %edx,%eax
c0031ea3:	89 45 98             	mov    %eax,-0x68(%ebp)
c0031ea6:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0031ea9:	8b 45 18             	mov    0x18(%ebp),%eax
c0031eac:	89 34 24             	mov    %esi,(%esp)
c0031eaf:	66 89 4d 9e          	mov    %cx,-0x62(%ebp)
c0031eb3:	89 44 24 0c          	mov    %eax,0xc(%esp)
c0031eb7:	8b 45 14             	mov    0x14(%ebp),%eax
c0031eba:	89 44 24 08          	mov    %eax,0x8(%esp)
c0031ebe:	8d 45 90             	lea    -0x70(%ebp),%eax
c0031ec1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0031ec5:	e8 86 00 00 00       	call   c0031f50 <_svfprintf_r>
c0031eca:	83 f8 ff             	cmp    $0xffffffff,%eax
c0031ecd:	7c 11                	jl     c0031ee0 <_vsnprintf_r+0x70>
c0031ecf:	85 db                	test   %ebx,%ebx
c0031ed1:	74 06                	je     c0031ed9 <_vsnprintf_r+0x69>
c0031ed3:	8b 55 90             	mov    -0x70(%ebp),%edx
c0031ed6:	c6 02 00             	movb   $0x0,(%edx)
c0031ed9:	83 ec 80             	sub    $0xffffff80,%esp
c0031edc:	5b                   	pop    %ebx
c0031edd:	5e                   	pop    %esi
c0031ede:	5d                   	pop    %ebp
c0031edf:	c3                   	ret    
c0031ee0:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031ee6:	eb e7                	jmp    c0031ecf <_vsnprintf_r+0x5f>
c0031ee8:	c7 06 8b 00 00 00    	movl   $0x8b,(%esi)
c0031eee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0031ef3:	eb e4                	jmp    c0031ed9 <_vsnprintf_r+0x69>
c0031ef5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0031ef9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0031f00 <vsnprintf>:
c0031f00:	55                   	push   %ebp
c0031f01:	89 e5                	mov    %esp,%ebp
c0031f03:	83 ec 28             	sub    $0x28,%esp
c0031f06:	e8 35 00 00 00       	call   c0031f40 <__getreent>
c0031f0b:	8b 55 14             	mov    0x14(%ebp),%edx
c0031f0e:	89 54 24 10          	mov    %edx,0x10(%esp)
c0031f12:	8b 55 10             	mov    0x10(%ebp),%edx
c0031f15:	89 04 24             	mov    %eax,(%esp)
c0031f18:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0031f1c:	8b 55 0c             	mov    0xc(%ebp),%edx
c0031f1f:	89 54 24 08          	mov    %edx,0x8(%esp)
c0031f23:	8b 55 08             	mov    0x8(%ebp),%edx
c0031f26:	89 54 24 04          	mov    %edx,0x4(%esp)
c0031f2a:	e8 41 ff ff ff       	call   c0031e70 <_vsnprintf_r>
c0031f2f:	c9                   	leave  
c0031f30:	c3                   	ret    
c0031f31:	66 90                	xchg   %ax,%ax
c0031f33:	66 90                	xchg   %ax,%ax
c0031f35:	66 90                	xchg   %ax,%ax
c0031f37:	66 90                	xchg   %ax,%ax
c0031f39:	66 90                	xchg   %ax,%ax
c0031f3b:	66 90                	xchg   %ax,%ax
c0031f3d:	66 90                	xchg   %ax,%ax
c0031f3f:	90                   	nop

c0031f40 <__getreent>:
c0031f40:	55                   	push   %ebp
c0031f41:	a1 40 c0 03 c0       	mov    0xc003c040,%eax
c0031f46:	89 e5                	mov    %esp,%ebp
c0031f48:	5d                   	pop    %ebp
c0031f49:	c3                   	ret    
c0031f4a:	66 90                	xchg   %ax,%ax
c0031f4c:	66 90                	xchg   %ax,%ax
c0031f4e:	66 90                	xchg   %ax,%ax

c0031f50 <_svfprintf_r>:
c0031f50:	55                   	push   %ebp
c0031f51:	89 e5                	mov    %esp,%ebp
c0031f53:	57                   	push   %edi
c0031f54:	56                   	push   %esi
c0031f55:	53                   	push   %ebx
c0031f56:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
c0031f5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0031f5f:	89 04 24             	mov    %eax,(%esp)
c0031f62:	e8 89 33 00 00       	call   c00352f0 <_localeconv_r>
c0031f67:	8b 00                	mov    (%eax),%eax
c0031f69:	89 04 24             	mov    %eax,(%esp)
c0031f6c:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%ebp)
c0031f72:	e8 d9 4a 00 00       	call   c0036a50 <strlen>
c0031f77:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%ebp)
c0031f7d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0031f80:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0031f84:	74 0b                	je     c0031f91 <_svfprintf_r+0x41>
c0031f86:	8b 40 10             	mov    0x10(%eax),%eax
c0031f89:	85 c0                	test   %eax,%eax
c0031f8b:	0f 84 62 18 00 00    	je     c00337f3 <_svfprintf_r+0x18a3>
c0031f91:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0031f94:	8d 55 a7             	lea    -0x59(%ebp),%edx
c0031f97:	89 c7                	mov    %eax,%edi
c0031f99:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0031f9f:	d9 ee                	fldz   
c0031fa1:	29 d0                	sub    %edx,%eax
c0031fa3:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0031faa:	00 00 00 
c0031fad:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c0031fb3:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0031fba:	00 00 00 
c0031fbd:	c7 85 1c ff ff ff 00 	movl   $0x0,-0xe4(%ebp)
c0031fc4:	00 00 00 
c0031fc7:	c7 85 18 ff ff ff 00 	movl   $0x0,-0xe8(%ebp)
c0031fce:	00 00 00 
c0031fd1:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%ebp)
c0031fd8:	00 00 00 
c0031fdb:	c7 85 34 ff ff ff 00 	movl   $0x0,-0xcc(%ebp)
c0031fe2:	00 00 00 
c0031fe5:	89 85 00 ff ff ff    	mov    %eax,-0x100(%ebp)
c0031feb:	8b 45 10             	mov    0x10(%ebp),%eax
c0031fee:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0031ff1:	0f b6 00             	movzbl (%eax),%eax
c0031ff4:	3c 25                	cmp    $0x25,%al
c0031ff6:	74 4d                	je     c0032045 <_svfprintf_r+0xf5>
c0031ff8:	84 c0                	test   %al,%al
c0031ffa:	75 08                	jne    c0032004 <_svfprintf_r+0xb4>
c0031ffc:	eb 47                	jmp    c0032045 <_svfprintf_r+0xf5>
c0031ffe:	66 90                	xchg   %ax,%ax
c0032000:	84 c0                	test   %al,%al
c0032002:	74 0a                	je     c003200e <_svfprintf_r+0xbe>
c0032004:	83 c3 01             	add    $0x1,%ebx
c0032007:	0f b6 03             	movzbl (%ebx),%eax
c003200a:	3c 25                	cmp    $0x25,%al
c003200c:	75 f2                	jne    c0032000 <_svfprintf_r+0xb0>
c003200e:	89 de                	mov    %ebx,%esi
c0032010:	2b 75 10             	sub    0x10(%ebp),%esi
c0032013:	74 30                	je     c0032045 <_svfprintf_r+0xf5>
c0032015:	8b 45 10             	mov    0x10(%ebp),%eax
c0032018:	83 c7 08             	add    $0x8,%edi
c003201b:	89 77 fc             	mov    %esi,-0x4(%edi)
c003201e:	01 b5 7c ff ff ff    	add    %esi,-0x84(%ebp)
c0032024:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032027:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003202d:	83 c0 01             	add    $0x1,%eax
c0032030:	83 f8 07             	cmp    $0x7,%eax
c0032033:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032039:	0f 8f 91 00 00 00    	jg     c00320d0 <_svfprintf_r+0x180>
c003203f:	01 b5 34 ff ff ff    	add    %esi,-0xcc(%ebp)
c0032045:	80 3b 00             	cmpb   $0x0,(%ebx)
c0032048:	0f 84 aa 00 00 00    	je     c00320f8 <_svfprintf_r+0x1a8>
c003204e:	8d 43 01             	lea    0x1(%ebx),%eax
c0032051:	be 20 00 00 00       	mov    $0x20,%esi
c0032056:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003205d:	31 db                	xor    %ebx,%ebx
c003205f:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0032066:	ff ff ff 
c0032069:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c0032070:	00 00 00 
c0032073:	c7 85 4c ff ff ff 00 	movl   $0x0,-0xb4(%ebp)
c003207a:	00 00 00 
c003207d:	8d 48 01             	lea    0x1(%eax),%ecx
c0032080:	0f be 00             	movsbl (%eax),%eax
c0032083:	8d 50 e0             	lea    -0x20(%eax),%edx
c0032086:	83 fa 58             	cmp    $0x58,%edx
c0032089:	0f 87 8f 07 00 00    	ja     c003281e <_svfprintf_r+0x8ce>
c003208f:	ff 24 95 80 8e 03 c0 	jmp    *-0x3ffc7180(,%edx,4)
c0032096:	66 90                	xchg   %ax,%ax
c0032098:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003209f:	89 c8                	mov    %ecx,%eax
c00320a1:	eb da                	jmp    c003207d <_svfprintf_r+0x12d>
c00320a3:	8b 45 14             	mov    0x14(%ebp),%eax
c00320a6:	8b 55 14             	mov    0x14(%ebp),%edx
c00320a9:	8b 00                	mov    (%eax),%eax
c00320ab:	83 c2 04             	add    $0x4,%edx
c00320ae:	89 55 14             	mov    %edx,0x14(%ebp)
c00320b1:	85 c0                	test   %eax,%eax
c00320b3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%ebp)
c00320b9:	79 e4                	jns    c003209f <_svfprintf_r+0x14f>
c00320bb:	f7 9d 40 ff ff ff    	negl   -0xc0(%ebp)
c00320c1:	83 8d 4c ff ff ff 04 	orl    $0x4,-0xb4(%ebp)
c00320c8:	89 c8                	mov    %ecx,%eax
c00320ca:	eb b1                	jmp    c003207d <_svfprintf_r+0x12d>
c00320cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00320d0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00320d6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00320da:	8b 45 0c             	mov    0xc(%ebp),%eax
c00320dd:	89 44 24 04          	mov    %eax,0x4(%esp)
c00320e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00320e4:	89 04 24             	mov    %eax,(%esp)
c00320e7:	e8 e4 49 00 00       	call   c0036ad0 <__ssprint_r>
c00320ec:	85 c0                	test   %eax,%eax
c00320ee:	75 30                	jne    c0032120 <_svfprintf_r+0x1d0>
c00320f0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00320f3:	e9 47 ff ff ff       	jmp    c003203f <_svfprintf_r+0xef>
c00320f8:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00320fe:	85 c0                	test   %eax,%eax
c0032100:	74 1e                	je     c0032120 <_svfprintf_r+0x1d0>
c0032102:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032108:	89 44 24 08          	mov    %eax,0x8(%esp)
c003210c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003210f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032113:	8b 45 08             	mov    0x8(%ebp),%eax
c0032116:	89 04 24             	mov    %eax,(%esp)
c0032119:	e8 b2 49 00 00       	call   c0036ad0 <__ssprint_r>
c003211e:	66 90                	xchg   %ax,%ax
c0032120:	8b 55 0c             	mov    0xc(%ebp),%edx
c0032123:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0032128:	f6 42 0c 40          	testb  $0x40,0xc(%edx)
c003212c:	0f 44 85 34 ff ff ff 	cmove  -0xcc(%ebp),%eax
c0032133:	81 c4 1c 01 00 00    	add    $0x11c,%esp
c0032139:	5b                   	pop    %ebx
c003213a:	5e                   	pop    %esi
c003213b:	5f                   	pop    %edi
c003213c:	5d                   	pop    %ebp
c003213d:	c3                   	ret    
c003213e:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c0032143:	89 c8                	mov    %ecx,%eax
c0032145:	e9 33 ff ff ff       	jmp    c003207d <_svfprintf_r+0x12d>
c003214a:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032150:	8b 45 14             	mov    0x14(%ebp),%eax
c0032153:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032156:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003215d:	8d 70 04             	lea    0x4(%eax),%esi
c0032160:	8b 00                	mov    (%eax),%eax
c0032162:	85 c0                	test   %eax,%eax
c0032164:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003216a:	0f 84 7f 18 00 00    	je     c00339ef <_svfprintf_r+0x1a9f>
c0032170:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0032176:	85 c0                	test   %eax,%eax
c0032178:	0f 88 b6 17 00 00    	js     c0033934 <_svfprintf_r+0x19e4>
c003217e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032182:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032188:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c003218f:	00 
c0032190:	89 04 24             	mov    %eax,(%esp)
c0032193:	e8 f8 38 00 00       	call   c0035a90 <memchr>
c0032198:	85 c0                	test   %eax,%eax
c003219a:	0f 84 a0 19 00 00    	je     c0033b40 <_svfprintf_r+0x1bf0>
c00321a0:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00321a6:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00321ac:	39 d0                	cmp    %edx,%eax
c00321ae:	0f 4f c2             	cmovg  %edx,%eax
c00321b1:	89 c2                	mov    %eax,%edx
c00321b3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00321ba:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00321c0:	31 c0                	xor    %eax,%eax
c00321c2:	85 d2                	test   %edx,%edx
c00321c4:	0f 49 c2             	cmovns %edx,%eax
c00321c7:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00321cd:	89 75 14             	mov    %esi,0x14(%ebp)
c00321d0:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00321d7:	00 00 00 
c00321da:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00321e1:	00 00 00 
c00321e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00321e8:	84 db                	test   %bl,%bl
c00321ea:	74 07                	je     c00321f3 <_svfprintf_r+0x2a3>
c00321ec:	83 85 48 ff ff ff 01 	addl   $0x1,-0xb8(%ebp)
c00321f3:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00321f9:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c00321ff:	89 c8                	mov    %ecx,%eax
c0032201:	89 f2                	mov    %esi,%edx
c0032203:	83 c0 02             	add    $0x2,%eax
c0032206:	83 e2 02             	and    $0x2,%edx
c0032209:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%ebp)
c003220f:	89 f2                	mov    %esi,%edx
c0032211:	0f 44 c1             	cmove  %ecx,%eax
c0032214:	81 e2 84 00 00 00    	and    $0x84,%edx
c003221a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032220:	89 95 2c ff ff ff    	mov    %edx,-0xd4(%ebp)
c0032226:	0f 85 1c 06 00 00    	jne    c0032848 <_svfprintf_r+0x8f8>
c003222c:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032232:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032238:	85 f6                	test   %esi,%esi
c003223a:	0f 8e 08 06 00 00    	jle    c0032848 <_svfprintf_r+0x8f8>
c0032240:	83 fe 10             	cmp    $0x10,%esi
c0032243:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032249:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003224f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032255:	7f 11                	jg     c0032268 <_svfprintf_r+0x318>
c0032257:	eb 6b                	jmp    c00322c4 <_svfprintf_r+0x374>
c0032259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032260:	83 ee 10             	sub    $0x10,%esi
c0032263:	83 fe 10             	cmp    $0x10,%esi
c0032266:	7e 5c                	jle    c00322c4 <_svfprintf_r+0x374>
c0032268:	83 c0 01             	add    $0x1,%eax
c003226b:	83 c1 10             	add    $0x10,%ecx
c003226e:	c7 07 f4 8f 03 c0    	movl   $0xc0038ff4,(%edi)
c0032274:	83 c7 08             	add    $0x8,%edi
c0032277:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003227e:	83 f8 07             	cmp    $0x7,%eax
c0032281:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032287:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003228d:	7e d1                	jle    c0032260 <_svfprintf_r+0x310>
c003228f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032292:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032296:	89 44 24 04          	mov    %eax,0x4(%esp)
c003229a:	8b 45 08             	mov    0x8(%ebp),%eax
c003229d:	89 04 24             	mov    %eax,(%esp)
c00322a0:	e8 2b 48 00 00       	call   c0036ad0 <__ssprint_r>
c00322a5:	85 c0                	test   %eax,%eax
c00322a7:	0f 85 73 fe ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c00322ad:	83 ee 10             	sub    $0x10,%esi
c00322b0:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00322b6:	83 fe 10             	cmp    $0x10,%esi
c00322b9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00322bf:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00322c2:	7f a4                	jg     c0032268 <_svfprintf_r+0x318>
c00322c4:	83 c0 01             	add    $0x1,%eax
c00322c7:	01 f1                	add    %esi,%ecx
c00322c9:	83 f8 07             	cmp    $0x7,%eax
c00322cc:	c7 07 f4 8f 03 c0    	movl   $0xc0038ff4,(%edi)
c00322d2:	89 77 04             	mov    %esi,0x4(%edi)
c00322d5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00322db:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00322e1:	0f 8f 16 0e 00 00    	jg     c00330fd <_svfprintf_r+0x11ad>
c00322e7:	83 c7 08             	add    $0x8,%edi
c00322ea:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00322f1:	e9 58 05 00 00       	jmp    c003284e <_svfprintf_r+0x8fe>
c00322f6:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00322fd:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032303:	8b 45 14             	mov    0x14(%ebp),%eax
c0032306:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032309:	0f 85 fd 04 00 00    	jne    c003280c <_svfprintf_r+0x8bc>
c003230f:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032316:	0f 84 f0 04 00 00    	je     c003280c <_svfprintf_r+0x8bc>
c003231c:	0f b7 08             	movzwl (%eax),%ecx
c003231f:	83 c0 04             	add    $0x4,%eax
c0032322:	89 45 14             	mov    %eax,0x14(%ebp)
c0032325:	b8 01 00 00 00       	mov    $0x1,%eax
c003232a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032330:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c0032337:	31 db                	xor    %ebx,%ebx
c0032339:	8b b5 4c ff ff ff    	mov    -0xb4(%ebp),%esi
c003233f:	89 f2                	mov    %esi,%edx
c0032341:	80 e2 7f             	and    $0x7f,%dl
c0032344:	83 bd 44 ff ff ff 00 	cmpl   $0x0,-0xbc(%ebp)
c003234b:	0f 48 d6             	cmovs  %esi,%edx
c003234e:	89 95 4c ff ff ff    	mov    %edx,-0xb4(%ebp)
c0032354:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003235a:	85 d2                	test   %edx,%edx
c003235c:	75 08                	jne    c0032366 <_svfprintf_r+0x416>
c003235e:	85 c9                	test   %ecx,%ecx
c0032360:	0f 84 ea 08 00 00    	je     c0032c50 <_svfprintf_r+0xd00>
c0032366:	3c 01                	cmp    $0x1,%al
c0032368:	0f 84 6a 0d 00 00    	je     c00330d8 <_svfprintf_r+0x1188>
c003236e:	3c 02                	cmp    $0x2,%al
c0032370:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032373:	0f 85 bf 0b 00 00    	jne    c0032f38 <_svfprintf_r+0xfe8>
c0032379:	8b b5 18 ff ff ff    	mov    -0xe8(%ebp),%esi
c003237f:	90                   	nop
c0032380:	89 ca                	mov    %ecx,%edx
c0032382:	83 e8 01             	sub    $0x1,%eax
c0032385:	83 e2 0f             	and    $0xf,%edx
c0032388:	0f b6 14 16          	movzbl (%esi,%edx,1),%edx
c003238c:	c1 e9 04             	shr    $0x4,%ecx
c003238f:	85 c9                	test   %ecx,%ecx
c0032391:	88 10                	mov    %dl,(%eax)
c0032393:	75 eb                	jne    c0032380 <_svfprintf_r+0x430>
c0032395:	8d 55 a8             	lea    -0x58(%ebp),%edx
c0032398:	29 c2                	sub    %eax,%edx
c003239a:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00323a0:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c00323a6:	66 90                	xchg   %ax,%ax
c00323a8:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c00323ae:	8b 95 38 ff ff ff    	mov    -0xc8(%ebp),%edx
c00323b4:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00323bb:	00 00 00 
c00323be:	39 c2                	cmp    %eax,%edx
c00323c0:	0f 4d c2             	cmovge %edx,%eax
c00323c3:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c00323c9:	e9 1a fe ff ff       	jmp    c00321e8 <_svfprintf_r+0x298>
c00323ce:	84 db                	test   %bl,%bl
c00323d0:	89 c8                	mov    %ecx,%eax
c00323d2:	0f 44 de             	cmove  %esi,%ebx
c00323d5:	e9 a3 fc ff ff       	jmp    c003207d <_svfprintf_r+0x12d>
c00323da:	83 8d 4c ff ff ff 01 	orl    $0x1,-0xb4(%ebp)
c00323e1:	89 c8                	mov    %ecx,%eax
c00323e3:	e9 95 fc ff ff       	jmp    c003207d <_svfprintf_r+0x12d>
c00323e8:	81 8d 4c ff ff ff 80 	orl    $0x80,-0xb4(%ebp)
c00323ef:	00 00 00 
c00323f2:	89 c8                	mov    %ecx,%eax
c00323f4:	e9 84 fc ff ff       	jmp    c003207d <_svfprintf_r+0x12d>
c00323f9:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c00323ff:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032402:	31 ff                	xor    %edi,%edi
c0032404:	c7 85 40 ff ff ff 00 	movl   $0x0,-0xc0(%ebp)
c003240b:	00 00 00 
c003240e:	66 90                	xchg   %ax,%ax
c0032410:	8d 04 bf             	lea    (%edi,%edi,4),%eax
c0032413:	83 c1 01             	add    $0x1,%ecx
c0032416:	8d 3c 42             	lea    (%edx,%eax,2),%edi
c0032419:	0f be 41 ff          	movsbl -0x1(%ecx),%eax
c003241d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032420:	83 fa 09             	cmp    $0x9,%edx
c0032423:	76 eb                	jbe    c0032410 <_svfprintf_r+0x4c0>
c0032425:	89 bd 40 ff ff ff    	mov    %edi,-0xc0(%ebp)
c003242b:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c0032431:	e9 4d fc ff ff       	jmp    c0032083 <_svfprintf_r+0x133>
c0032436:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c003243d:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032444:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c003244a:	8b 45 14             	mov    0x14(%ebp),%eax
c003244d:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032450:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c0032456:	0f 85 61 02 00 00    	jne    c00326bd <_svfprintf_r+0x76d>
c003245c:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c0032463:	0f 84 54 02 00 00    	je     c00326bd <_svfprintf_r+0x76d>
c0032469:	0f bf 08             	movswl (%eax),%ecx
c003246c:	83 c0 04             	add    $0x4,%eax
c003246f:	89 45 14             	mov    %eax,0x14(%ebp)
c0032472:	85 c9                	test   %ecx,%ecx
c0032474:	0f 88 53 02 00 00    	js     c00326cd <_svfprintf_r+0x77d>
c003247a:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0032481:	b8 01 00 00 00       	mov    $0x1,%eax
c0032486:	e9 ae fe ff ff       	jmp    c0032339 <_svfprintf_r+0x3e9>
c003248b:	f6 85 4c ff ff ff 08 	testb  $0x8,-0xb4(%ebp)
c0032492:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032498:	8b 45 14             	mov    0x14(%ebp),%eax
c003249b:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003249e:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00324a4:	0f 84 15 10 00 00    	je     c00334bf <_svfprintf_r+0x156f>
c00324aa:	db 28                	fldt   (%eax)
c00324ac:	83 c0 0c             	add    $0xc,%eax
c00324af:	89 45 14             	mov    %eax,0x14(%ebp)
c00324b2:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00324b8:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00324be:	dd 1c 24             	fstpl  (%esp)
c00324c1:	e8 aa 44 00 00       	call   c0036970 <__fpclassifyd>
c00324c6:	83 f8 01             	cmp    $0x1,%eax
c00324c9:	0f 85 82 0f 00 00    	jne    c0033451 <_svfprintf_r+0x1501>
c00324cf:	d9 ee                	fldz   
c00324d1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c00324d7:	d9 c9                	fxch   %st(1)
c00324d9:	df e9                	fucomip %st(1),%st
c00324db:	dd d8                	fstp   %st(0)
c00324dd:	0f 87 59 15 00 00    	ja     c0033a3c <_svfprintf_r+0x1aec>
c00324e3:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c00324ea:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c00324f1:	ba 42 8e 03 c0       	mov    $0xc0038e42,%edx
c00324f6:	b8 46 8e 03 c0       	mov    $0xc0038e46,%eax
c00324fb:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0032502:	00 00 00 
c0032505:	0f 4e c2             	cmovle %edx,%eax
c0032508:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c003250e:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0032515:	ff ff ff 
c0032518:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c003251f:	00 00 00 
c0032522:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0032529:	00 00 00 
c003252c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0032533:	00 00 00 
c0032536:	e9 ad fc ff ff       	jmp    c00321e8 <_svfprintf_r+0x298>
c003253b:	8d 41 01             	lea    0x1(%ecx),%eax
c003253e:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0032544:	0f be 01             	movsbl (%ecx),%eax
c0032547:	83 f8 2a             	cmp    $0x2a,%eax
c003254a:	0f 84 84 18 00 00    	je     c0033dd4 <_svfprintf_r+0x1e84>
c0032550:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032553:	31 c9                	xor    %ecx,%ecx
c0032555:	83 fa 09             	cmp    $0x9,%edx
c0032558:	0f 87 a8 16 00 00    	ja     c0033c06 <_svfprintf_r+0x1cb6>
c003255e:	89 bd 44 ff ff ff    	mov    %edi,-0xbc(%ebp)
c0032564:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c003256a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032570:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
c0032573:	83 c7 01             	add    $0x1,%edi
c0032576:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
c0032579:	0f be 47 ff          	movsbl -0x1(%edi),%eax
c003257d:	8d 50 d0             	lea    -0x30(%eax),%edx
c0032580:	83 fa 09             	cmp    $0x9,%edx
c0032583:	76 eb                	jbe    c0032570 <_svfprintf_r+0x620>
c0032585:	85 c9                	test   %ecx,%ecx
c0032587:	89 ca                	mov    %ecx,%edx
c0032589:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c003258e:	0f 48 d1             	cmovs  %ecx,%edx
c0032591:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0032597:	8b bd 44 ff ff ff    	mov    -0xbc(%ebp),%edi
c003259d:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c00325a3:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c00325a9:	e9 d5 fa ff ff       	jmp    c0032083 <_svfprintf_r+0x133>
c00325ae:	8b 45 14             	mov    0x14(%ebp),%eax
c00325b1:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00325b4:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c00325bb:	8b 08                	mov    (%eax),%ecx
c00325bd:	83 c0 04             	add    $0x4,%eax
c00325c0:	89 45 14             	mov    %eax,0x14(%ebp)
c00325c3:	b8 02 00 00 00       	mov    $0x2,%eax
c00325c8:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c00325cf:	c6 85 5b ff ff ff 78 	movb   $0x78,-0xa5(%ebp)
c00325d6:	c7 85 18 ff ff ff 63 	movl   $0xc0038e63,-0xe8(%ebp)
c00325dd:	8e 03 c0 
c00325e0:	c7 85 24 ff ff ff 78 	movl   $0x78,-0xdc(%ebp)
c00325e7:	00 00 00 
c00325ea:	e9 41 fd ff ff       	jmp    c0032330 <_svfprintf_r+0x3e0>
c00325ef:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00325f6:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00325fc:	8b 45 14             	mov    0x14(%ebp),%eax
c00325ff:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032602:	0f 85 87 00 00 00    	jne    c003268f <_svfprintf_r+0x73f>
c0032608:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003260f:	74 7e                	je     c003268f <_svfprintf_r+0x73f>
c0032611:	0f b7 08             	movzwl (%eax),%ecx
c0032614:	83 c0 04             	add    $0x4,%eax
c0032617:	89 45 14             	mov    %eax,0x14(%ebp)
c003261a:	31 c0                	xor    %eax,%eax
c003261c:	e9 0f fd ff ff       	jmp    c0032330 <_svfprintf_r+0x3e0>
c0032621:	83 8d 4c ff ff ff 08 	orl    $0x8,-0xb4(%ebp)
c0032628:	89 c8                	mov    %ecx,%eax
c003262a:	e9 4e fa ff ff       	jmp    c003207d <_svfprintf_r+0x12d>
c003262f:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c0032636:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032639:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003263f:	0f 85 97 0b 00 00    	jne    c00331dc <_svfprintf_r+0x128c>
c0032645:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003264c:	0f 84 8a 0b 00 00    	je     c00331dc <_svfprintf_r+0x128c>
c0032652:	8b 45 14             	mov    0x14(%ebp),%eax
c0032655:	0f b7 95 34 ff ff ff 	movzwl -0xcc(%ebp),%edx
c003265c:	8b 00                	mov    (%eax),%eax
c003265e:	66 89 10             	mov    %dx,(%eax)
c0032661:	8b 45 14             	mov    0x14(%ebp),%eax
c0032664:	83 c0 04             	add    $0x4,%eax
c0032667:	89 45 14             	mov    %eax,0x14(%ebp)
c003266a:	e9 7c f9 ff ff       	jmp    c0031feb <_svfprintf_r+0x9b>
c003266f:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c0032676:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003267d:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032683:	8b 45 14             	mov    0x14(%ebp),%eax
c0032686:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032689:	0f 84 79 ff ff ff    	je     c0032608 <_svfprintf_r+0x6b8>
c003268f:	8b 08                	mov    (%eax),%ecx
c0032691:	83 c0 04             	add    $0x4,%eax
c0032694:	89 45 14             	mov    %eax,0x14(%ebp)
c0032697:	31 c0                	xor    %eax,%eax
c0032699:	e9 92 fc ff ff       	jmp    c0032330 <_svfprintf_r+0x3e0>
c003269e:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326a5:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c00326ab:	8b 45 14             	mov    0x14(%ebp),%eax
c00326ae:	89 4d 10             	mov    %ecx,0x10(%ebp)
c00326b1:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c00326b7:	0f 84 9f fd ff ff    	je     c003245c <_svfprintf_r+0x50c>
c00326bd:	8b 08                	mov    (%eax),%ecx
c00326bf:	83 c0 04             	add    $0x4,%eax
c00326c2:	89 45 14             	mov    %eax,0x14(%ebp)
c00326c5:	85 c9                	test   %ecx,%ecx
c00326c7:	0f 89 ad fd ff ff    	jns    c003247a <_svfprintf_r+0x52a>
c00326cd:	f7 d9                	neg    %ecx
c00326cf:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c00326d4:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c00326db:	b8 01 00 00 00       	mov    $0x1,%eax
c00326e0:	e9 54 fc ff ff       	jmp    c0032339 <_svfprintf_r+0x3e9>
c00326e5:	83 8d 4c ff ff ff 40 	orl    $0x40,-0xb4(%ebp)
c00326ec:	89 c8                	mov    %ecx,%eax
c00326ee:	e9 8a f9 ff ff       	jmp    c003207d <_svfprintf_r+0x12d>
c00326f3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00326fa:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032700:	8b 45 14             	mov    0x14(%ebp),%eax
c0032703:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032706:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003270c:	c7 85 18 ff ff ff 63 	movl   $0xc0038e63,-0xe8(%ebp)
c0032713:	8e 03 c0 
c0032716:	75 71                	jne    c0032789 <_svfprintf_r+0x839>
c0032718:	f6 85 4c ff ff ff 40 	testb  $0x40,-0xb4(%ebp)
c003271f:	74 68                	je     c0032789 <_svfprintf_r+0x839>
c0032721:	0f b7 08             	movzwl (%eax),%ecx
c0032724:	83 c0 04             	add    $0x4,%eax
c0032727:	89 45 14             	mov    %eax,0x14(%ebp)
c003272a:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032731:	b8 02 00 00 00       	mov    $0x2,%eax
c0032736:	0f 84 f4 fb ff ff    	je     c0032330 <_svfprintf_r+0x3e0>
c003273c:	85 c9                	test   %ecx,%ecx
c003273e:	0f 84 ec fb ff ff    	je     c0032330 <_svfprintf_r+0x3e0>
c0032744:	0f b6 95 24 ff ff ff 	movzbl -0xdc(%ebp),%edx
c003274b:	c6 85 5a ff ff ff 30 	movb   $0x30,-0xa6(%ebp)
c0032752:	83 8d 4c ff ff ff 02 	orl    $0x2,-0xb4(%ebp)
c0032759:	88 95 5b ff ff ff    	mov    %dl,-0xa5(%ebp)
c003275f:	e9 cc fb ff ff       	jmp    c0032330 <_svfprintf_r+0x3e0>
c0032764:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c003276b:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032771:	8b 45 14             	mov    0x14(%ebp),%eax
c0032774:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032777:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003277d:	c7 85 18 ff ff ff 52 	movl   $0xc0038e52,-0xe8(%ebp)
c0032784:	8e 03 c0 
c0032787:	74 8f                	je     c0032718 <_svfprintf_r+0x7c8>
c0032789:	8b 08                	mov    (%eax),%ecx
c003278b:	83 c0 04             	add    $0x4,%eax
c003278e:	89 45 14             	mov    %eax,0x14(%ebp)
c0032791:	eb 97                	jmp    c003272a <_svfprintf_r+0x7da>
c0032793:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032799:	8b 45 14             	mov    0x14(%ebp),%eax
c003279c:	89 4d 10             	mov    %ecx,0x10(%ebp)
c003279f:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c00327a6:	8b 00                	mov    (%eax),%eax
c00327a8:	88 45 80             	mov    %al,-0x80(%ebp)
c00327ab:	8b 45 14             	mov    0x14(%ebp),%eax
c00327ae:	83 c0 04             	add    $0x4,%eax
c00327b1:	89 45 14             	mov    %eax,0x14(%ebp)
c00327b4:	8d 45 80             	lea    -0x80(%ebp),%eax
c00327b7:	31 db                	xor    %ebx,%ebx
c00327b9:	c7 85 48 ff ff ff 01 	movl   $0x1,-0xb8(%ebp)
c00327c0:	00 00 00 
c00327c3:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c00327ca:	00 00 00 
c00327cd:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00327d4:	00 00 00 
c00327d7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00327de:	00 00 00 
c00327e1:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00327e7:	e9 07 fa ff ff       	jmp    c00321f3 <_svfprintf_r+0x2a3>
c00327ec:	83 8d 4c ff ff ff 10 	orl    $0x10,-0xb4(%ebp)
c00327f3:	f6 85 4c ff ff ff 10 	testb  $0x10,-0xb4(%ebp)
c00327fa:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032800:	8b 45 14             	mov    0x14(%ebp),%eax
c0032803:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032806:	0f 84 03 fb ff ff    	je     c003230f <_svfprintf_r+0x3bf>
c003280c:	8b 08                	mov    (%eax),%ecx
c003280e:	83 c0 04             	add    $0x4,%eax
c0032811:	89 45 14             	mov    %eax,0x14(%ebp)
c0032814:	b8 01 00 00 00       	mov    $0x1,%eax
c0032819:	e9 12 fb ff ff       	jmp    c0032330 <_svfprintf_r+0x3e0>
c003281e:	85 c0                	test   %eax,%eax
c0032820:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%ebp)
c0032826:	89 4d 10             	mov    %ecx,0x10(%ebp)
c0032829:	88 9d 59 ff ff ff    	mov    %bl,-0xa7(%ebp)
c003282f:	0f 84 c3 f8 ff ff    	je     c00320f8 <_svfprintf_r+0x1a8>
c0032835:	88 45 80             	mov    %al,-0x80(%ebp)
c0032838:	c6 85 59 ff ff ff 00 	movb   $0x0,-0xa7(%ebp)
c003283f:	e9 70 ff ff ff       	jmp    c00327b4 <_svfprintf_r+0x864>
c0032844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032848:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c003284e:	84 db                	test   %bl,%bl
c0032850:	74 33                	je     c0032885 <_svfprintf_r+0x935>
c0032852:	8d 85 59 ff ff ff    	lea    -0xa7(%ebp),%eax
c0032858:	83 c1 01             	add    $0x1,%ecx
c003285b:	89 07                	mov    %eax,(%edi)
c003285d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032863:	83 c7 08             	add    $0x8,%edi
c0032866:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003286d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032873:	83 c0 01             	add    $0x1,%eax
c0032876:	83 f8 07             	cmp    $0x7,%eax
c0032879:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003287f:	0f 8f 7b 06 00 00    	jg     c0032f00 <_svfprintf_r+0xfb0>
c0032885:	8b 9d 30 ff ff ff    	mov    -0xd0(%ebp),%ebx
c003288b:	85 db                	test   %ebx,%ebx
c003288d:	74 33                	je     c00328c2 <_svfprintf_r+0x972>
c003288f:	8d 85 5a ff ff ff    	lea    -0xa6(%ebp),%eax
c0032895:	83 c1 02             	add    $0x2,%ecx
c0032898:	89 07                	mov    %eax,(%edi)
c003289a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328a0:	83 c7 08             	add    $0x8,%edi
c00328a3:	c7 47 fc 02 00 00 00 	movl   $0x2,-0x4(%edi)
c00328aa:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00328b0:	83 c0 01             	add    $0x1,%eax
c00328b3:	83 f8 07             	cmp    $0x7,%eax
c00328b6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00328bc:	0f 8f 06 06 00 00    	jg     c0032ec8 <_svfprintf_r+0xf78>
c00328c2:	81 bd 2c ff ff ff 80 	cmpl   $0x80,-0xd4(%ebp)
c00328c9:	00 00 00 
c00328cc:	0f 84 c6 03 00 00    	je     c0032c98 <_svfprintf_r+0xd48>
c00328d2:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c00328d8:	2b b5 38 ff ff ff    	sub    -0xc8(%ebp),%esi
c00328de:	85 f6                	test   %esi,%esi
c00328e0:	0f 8e d2 00 00 00    	jle    c00329b8 <_svfprintf_r+0xa68>
c00328e6:	83 fe 10             	cmp    $0x10,%esi
c00328e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00328ef:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00328f5:	7f 11                	jg     c0032908 <_svfprintf_r+0x9b8>
c00328f7:	eb 6b                	jmp    c0032964 <_svfprintf_r+0xa14>
c00328f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032900:	83 ee 10             	sub    $0x10,%esi
c0032903:	83 fe 10             	cmp    $0x10,%esi
c0032906:	7e 5c                	jle    c0032964 <_svfprintf_r+0xa14>
c0032908:	83 c0 01             	add    $0x1,%eax
c003290b:	83 c1 10             	add    $0x10,%ecx
c003290e:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c0032914:	83 c7 08             	add    $0x8,%edi
c0032917:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c003291e:	83 f8 07             	cmp    $0x7,%eax
c0032921:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032927:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003292d:	7e d1                	jle    c0032900 <_svfprintf_r+0x9b0>
c003292f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032932:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032936:	89 44 24 04          	mov    %eax,0x4(%esp)
c003293a:	8b 45 08             	mov    0x8(%ebp),%eax
c003293d:	89 04 24             	mov    %eax,(%esp)
c0032940:	e8 8b 41 00 00       	call   c0036ad0 <__ssprint_r>
c0032945:	85 c0                	test   %eax,%eax
c0032947:	0f 85 d3 f7 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c003294d:	83 ee 10             	sub    $0x10,%esi
c0032950:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032956:	83 fe 10             	cmp    $0x10,%esi
c0032959:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003295f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032962:	7f a4                	jg     c0032908 <_svfprintf_r+0x9b8>
c0032964:	83 c0 01             	add    $0x1,%eax
c0032967:	01 f1                	add    %esi,%ecx
c0032969:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c003296f:	83 c7 08             	add    $0x8,%edi
c0032972:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032975:	83 f8 07             	cmp    $0x7,%eax
c0032978:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003297e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032984:	7e 32                	jle    c00329b8 <_svfprintf_r+0xa68>
c0032986:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003298c:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032990:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032993:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032997:	8b 45 08             	mov    0x8(%ebp),%eax
c003299a:	89 04 24             	mov    %eax,(%esp)
c003299d:	e8 2e 41 00 00       	call   c0036ad0 <__ssprint_r>
c00329a2:	85 c0                	test   %eax,%eax
c00329a4:	0f 85 76 f7 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c00329aa:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00329b0:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00329b3:	90                   	nop
c00329b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00329b8:	f7 85 4c ff ff ff 00 	testl  $0x100,-0xb4(%ebp)
c00329bf:	01 00 00 
c00329c2:	0f 85 50 01 00 00    	jne    c0032b18 <_svfprintf_r+0xbc8>
c00329c8:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c00329ce:	89 07                	mov    %eax,(%edi)
c00329d0:	8b 85 38 ff ff ff    	mov    -0xc8(%ebp),%eax
c00329d6:	01 c1                	add    %eax,%ecx
c00329d8:	89 47 04             	mov    %eax,0x4(%edi)
c00329db:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00329e1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00329e7:	83 c0 01             	add    $0x1,%eax
c00329ea:	83 f8 07             	cmp    $0x7,%eax
c00329ed:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00329f3:	0f 8f 6a 04 00 00    	jg     c0032e63 <_svfprintf_r+0xf13>
c00329f9:	83 c7 08             	add    $0x8,%edi
c00329fc:	f6 85 4c ff ff ff 04 	testb  $0x4,-0xb4(%ebp)
c0032a03:	0f 84 d7 00 00 00    	je     c0032ae0 <_svfprintf_r+0xb90>
c0032a09:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032a0f:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032a15:	85 f6                	test   %esi,%esi
c0032a17:	0f 8e c3 00 00 00    	jle    c0032ae0 <_svfprintf_r+0xb90>
c0032a1d:	83 fe 10             	cmp    $0x10,%esi
c0032a20:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a26:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032a2c:	7f 0a                	jg     c0032a38 <_svfprintf_r+0xae8>
c0032a2e:	eb 64                	jmp    c0032a94 <_svfprintf_r+0xb44>
c0032a30:	83 ee 10             	sub    $0x10,%esi
c0032a33:	83 fe 10             	cmp    $0x10,%esi
c0032a36:	7e 5c                	jle    c0032a94 <_svfprintf_r+0xb44>
c0032a38:	83 c0 01             	add    $0x1,%eax
c0032a3b:	83 c1 10             	add    $0x10,%ecx
c0032a3e:	c7 07 f4 8f 03 c0    	movl   $0xc0038ff4,(%edi)
c0032a44:	83 c7 08             	add    $0x8,%edi
c0032a47:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032a4e:	83 f8 07             	cmp    $0x7,%eax
c0032a51:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032a57:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032a5d:	7e d1                	jle    c0032a30 <_svfprintf_r+0xae0>
c0032a5f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032a62:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032a66:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032a6a:	8b 45 08             	mov    0x8(%ebp),%eax
c0032a6d:	89 04 24             	mov    %eax,(%esp)
c0032a70:	e8 5b 40 00 00       	call   c0036ad0 <__ssprint_r>
c0032a75:	85 c0                	test   %eax,%eax
c0032a77:	0f 85 a3 f6 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0032a7d:	83 ee 10             	sub    $0x10,%esi
c0032a80:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032a86:	83 fe 10             	cmp    $0x10,%esi
c0032a89:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032a8f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032a92:	7f a4                	jg     c0032a38 <_svfprintf_r+0xae8>
c0032a94:	83 c0 01             	add    $0x1,%eax
c0032a97:	01 f1                	add    %esi,%ecx
c0032a99:	83 f8 07             	cmp    $0x7,%eax
c0032a9c:	c7 07 f4 8f 03 c0    	movl   $0xc0038ff4,(%edi)
c0032aa2:	89 77 04             	mov    %esi,0x4(%edi)
c0032aa5:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032aab:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ab1:	7e 2d                	jle    c0032ae0 <_svfprintf_r+0xb90>
c0032ab3:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ab9:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032abd:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ac0:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ac4:	8b 45 08             	mov    0x8(%ebp),%eax
c0032ac7:	89 04 24             	mov    %eax,(%esp)
c0032aca:	e8 01 40 00 00       	call   c0036ad0 <__ssprint_r>
c0032acf:	85 c0                	test   %eax,%eax
c0032ad1:	0f 85 49 f6 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0032ad7:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032add:	8d 76 00             	lea    0x0(%esi),%esi
c0032ae0:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
c0032ae6:	8b 95 48 ff ff ff    	mov    -0xb8(%ebp),%edx
c0032aec:	39 c2                	cmp    %eax,%edx
c0032aee:	0f 4d c2             	cmovge %edx,%eax
c0032af1:	01 85 34 ff ff ff    	add    %eax,-0xcc(%ebp)
c0032af7:	85 c9                	test   %ecx,%ecx
c0032af9:	0f 85 99 03 00 00    	jne    c0032e98 <_svfprintf_r+0xf48>
c0032aff:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0032b06:	00 00 00 
c0032b09:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032b0c:	e9 da f4 ff ff       	jmp    c0031feb <_svfprintf_r+0x9b>
c0032b11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032b18:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c0032b1f:	0f 8e 5b 02 00 00    	jle    c0032d80 <_svfprintf_r+0xe30>
c0032b25:	d9 ee                	fldz   
c0032b27:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032b2d:	df e9                	fucomip %st(1),%st
c0032b2f:	dd d8                	fstp   %st(0)
c0032b31:	0f 8a 59 04 00 00    	jp     c0032f90 <_svfprintf_r+0x1040>
c0032b37:	0f 85 53 04 00 00    	jne    c0032f90 <_svfprintf_r+0x1040>
c0032b3d:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032b43:	83 c1 01             	add    $0x1,%ecx
c0032b46:	83 c7 08             	add    $0x8,%edi
c0032b49:	c7 47 f8 7b 8e 03 c0 	movl   $0xc0038e7b,-0x8(%edi)
c0032b50:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c0032b57:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032b5d:	83 c0 01             	add    $0x1,%eax
c0032b60:	83 f8 07             	cmp    $0x7,%eax
c0032b63:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032b69:	0f 8f 63 09 00 00    	jg     c00334d2 <_svfprintf_r+0x1582>
c0032b6f:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032b75:	39 85 5c ff ff ff    	cmp    %eax,-0xa4(%ebp)
c0032b7b:	7c 0d                	jl     c0032b8a <_svfprintf_r+0xc3a>
c0032b7d:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032b84:	0f 84 72 fe ff ff    	je     c00329fc <_svfprintf_r+0xaac>
c0032b8a:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0032b90:	83 c7 08             	add    $0x8,%edi
c0032b93:	89 47 f8             	mov    %eax,-0x8(%edi)
c0032b96:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0032b9c:	89 47 fc             	mov    %eax,-0x4(%edi)
c0032b9f:	01 c1                	add    %eax,%ecx
c0032ba1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032ba7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032bad:	83 c0 01             	add    $0x1,%eax
c0032bb0:	83 f8 07             	cmp    $0x7,%eax
c0032bb3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032bb9:	0f 8f dc 0b 00 00    	jg     c003379b <_svfprintf_r+0x184b>
c0032bbf:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032bc5:	8d 70 ff             	lea    -0x1(%eax),%esi
c0032bc8:	85 f6                	test   %esi,%esi
c0032bca:	0f 8e 2c fe ff ff    	jle    c00329fc <_svfprintf_r+0xaac>
c0032bd0:	83 fe 10             	cmp    $0x10,%esi
c0032bd3:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032bd9:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032bdf:	7f 13                	jg     c0032bf4 <_svfprintf_r+0xca4>
c0032be1:	e9 e6 05 00 00       	jmp    c00331cc <_svfprintf_r+0x127c>
c0032be6:	66 90                	xchg   %ax,%ax
c0032be8:	83 ee 10             	sub    $0x10,%esi
c0032beb:	83 fe 10             	cmp    $0x10,%esi
c0032bee:	0f 8e d8 05 00 00    	jle    c00331cc <_svfprintf_r+0x127c>
c0032bf4:	83 c0 01             	add    $0x1,%eax
c0032bf7:	83 c1 10             	add    $0x10,%ecx
c0032bfa:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c0032c00:	83 c7 08             	add    $0x8,%edi
c0032c03:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032c0a:	83 f8 07             	cmp    $0x7,%eax
c0032c0d:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032c13:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032c19:	7e cd                	jle    c0032be8 <_svfprintf_r+0xc98>
c0032c1b:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032c1e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032c22:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032c26:	8b 45 08             	mov    0x8(%ebp),%eax
c0032c29:	89 04 24             	mov    %eax,(%esp)
c0032c2c:	e8 9f 3e 00 00       	call   c0036ad0 <__ssprint_r>
c0032c31:	85 c0                	test   %eax,%eax
c0032c33:	0f 85 e7 f4 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0032c39:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032c3f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032c42:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032c48:	eb 9e                	jmp    c0032be8 <_svfprintf_r+0xc98>
c0032c4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032c50:	84 c0                	test   %al,%al
c0032c52:	75 2c                	jne    c0032c80 <_svfprintf_r+0xd30>
c0032c54:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032c5b:	74 23                	je     c0032c80 <_svfprintf_r+0xd30>
c0032c5d:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c0032c63:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0032c67:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032c6d:	8d 45 a7             	lea    -0x59(%ebp),%eax
c0032c70:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032c76:	e9 2d f7 ff ff       	jmp    c00323a8 <_svfprintf_r+0x458>
c0032c7b:	90                   	nop
c0032c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032c80:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032c83:	c7 85 38 ff ff ff 00 	movl   $0x0,-0xc8(%ebp)
c0032c8a:	00 00 00 
c0032c8d:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0032c93:	e9 10 f7 ff ff       	jmp    c00323a8 <_svfprintf_r+0x458>
c0032c98:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi
c0032c9e:	2b b5 48 ff ff ff    	sub    -0xb8(%ebp),%esi
c0032ca4:	85 f6                	test   %esi,%esi
c0032ca6:	0f 8e 26 fc ff ff    	jle    c00328d2 <_svfprintf_r+0x982>
c0032cac:	83 fe 10             	cmp    $0x10,%esi
c0032caf:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032cb5:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0032cbb:	7f 0b                	jg     c0032cc8 <_svfprintf_r+0xd78>
c0032cbd:	eb 65                	jmp    c0032d24 <_svfprintf_r+0xdd4>
c0032cbf:	90                   	nop
c0032cc0:	83 ee 10             	sub    $0x10,%esi
c0032cc3:	83 fe 10             	cmp    $0x10,%esi
c0032cc6:	7e 5c                	jle    c0032d24 <_svfprintf_r+0xdd4>
c0032cc8:	83 c0 01             	add    $0x1,%eax
c0032ccb:	83 c1 10             	add    $0x10,%ecx
c0032cce:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c0032cd4:	83 c7 08             	add    $0x8,%edi
c0032cd7:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0032cde:	83 f8 07             	cmp    $0x7,%eax
c0032ce1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032ce7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032ced:	7e d1                	jle    c0032cc0 <_svfprintf_r+0xd70>
c0032cef:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032cf2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0032cf6:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032cfa:	8b 45 08             	mov    0x8(%ebp),%eax
c0032cfd:	89 04 24             	mov    %eax,(%esp)
c0032d00:	e8 cb 3d 00 00       	call   c0036ad0 <__ssprint_r>
c0032d05:	85 c0                	test   %eax,%eax
c0032d07:	0f 85 13 f4 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0032d0d:	83 ee 10             	sub    $0x10,%esi
c0032d10:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d16:	83 fe 10             	cmp    $0x10,%esi
c0032d19:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d1f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d22:	7f a4                	jg     c0032cc8 <_svfprintf_r+0xd78>
c0032d24:	83 c0 01             	add    $0x1,%eax
c0032d27:	01 f1                	add    %esi,%ecx
c0032d29:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c0032d2f:	83 c7 08             	add    $0x8,%edi
c0032d32:	89 77 fc             	mov    %esi,-0x4(%edi)
c0032d35:	83 f8 07             	cmp    $0x7,%eax
c0032d38:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032d3e:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032d44:	0f 8e 88 fb ff ff    	jle    c00328d2 <_svfprintf_r+0x982>
c0032d4a:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032d50:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032d54:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032d57:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032d5b:	8b 45 08             	mov    0x8(%ebp),%eax
c0032d5e:	89 04 24             	mov    %eax,(%esp)
c0032d61:	e8 6a 3d 00 00       	call   c0036ad0 <__ssprint_r>
c0032d66:	85 c0                	test   %eax,%eax
c0032d68:	0f 85 b2 f3 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0032d6e:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032d74:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032d77:	e9 56 fb ff ff       	jmp    c00328d2 <_svfprintf_r+0x982>
c0032d7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0032d80:	83 bd 1c ff ff ff 01 	cmpl   $0x1,-0xe4(%ebp)
c0032d87:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0032d8d:	0f 8e df 05 00 00    	jle    c0033372 <_svfprintf_r+0x1422>
c0032d93:	89 07                	mov    %eax,(%edi)
c0032d95:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032d9b:	8d 51 01             	lea    0x1(%ecx),%edx
c0032d9e:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0032da5:	83 c7 08             	add    $0x8,%edi
c0032da8:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032dae:	83 c0 01             	add    $0x1,%eax
c0032db1:	83 f8 07             	cmp    $0x7,%eax
c0032db4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032dba:	0f 8f 59 06 00 00    	jg     c0033419 <_svfprintf_r+0x14c9>
c0032dc0:	8b 9d 0c ff ff ff    	mov    -0xf4(%ebp),%ebx
c0032dc6:	83 c0 01             	add    $0x1,%eax
c0032dc9:	83 c7 08             	add    $0x8,%edi
c0032dcc:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032dd2:	89 5f f8             	mov    %ebx,-0x8(%edi)
c0032dd5:	8b 9d 08 ff ff ff    	mov    -0xf8(%ebp),%ebx
c0032ddb:	89 5f fc             	mov    %ebx,-0x4(%edi)
c0032dde:	01 da                	add    %ebx,%edx
c0032de0:	83 f8 07             	cmp    $0x7,%eax
c0032de3:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032de9:	0f 8f f2 05 00 00    	jg     c00333e1 <_svfprintf_r+0x1491>
c0032def:	d9 ee                	fldz   
c0032df1:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0032df7:	df e9                	fucomip %st(1),%st
c0032df9:	dd d8                	fstp   %st(0)
c0032dfb:	7a 06                	jp     c0032e03 <_svfprintf_r+0xeb3>
c0032dfd:	0f 84 33 03 00 00    	je     c0033136 <_svfprintf_r+0x11e6>
c0032e03:	8b 8d 28 ff ff ff    	mov    -0xd8(%ebp),%ecx
c0032e09:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0032e0f:	83 c1 01             	add    $0x1,%ecx
c0032e12:	89 0f                	mov    %ecx,(%edi)
c0032e14:	8d 4b ff             	lea    -0x1(%ebx),%ecx
c0032e17:	89 4f 04             	mov    %ecx,0x4(%edi)
c0032e1a:	01 ca                	add    %ecx,%edx
c0032e1c:	83 c0 01             	add    $0x1,%eax
c0032e1f:	83 f8 07             	cmp    $0x7,%eax
c0032e22:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0032e28:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e2e:	0f 8f 75 05 00 00    	jg     c00333a9 <_svfprintf_r+0x1459>
c0032e34:	83 c7 08             	add    $0x8,%edi
c0032e37:	8b 9d 04 ff ff ff    	mov    -0xfc(%ebp),%ebx
c0032e3d:	8d 8d 65 ff ff ff    	lea    -0x9b(%ebp),%ecx
c0032e43:	89 0f                	mov    %ecx,(%edi)
c0032e45:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032e48:	8d 0c 1a             	lea    (%edx,%ebx,1),%ecx
c0032e4b:	83 c0 01             	add    $0x1,%eax
c0032e4e:	83 f8 07             	cmp    $0x7,%eax
c0032e51:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032e57:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032e5d:	0f 8e 96 fb ff ff    	jle    c00329f9 <_svfprintf_r+0xaa9>
c0032e63:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032e69:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032e6d:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032e70:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032e74:	8b 45 08             	mov    0x8(%ebp),%eax
c0032e77:	89 04 24             	mov    %eax,(%esp)
c0032e7a:	e8 51 3c 00 00       	call   c0036ad0 <__ssprint_r>
c0032e7f:	85 c0                	test   %eax,%eax
c0032e81:	0f 85 99 f2 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0032e87:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032e8d:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032e90:	e9 67 fb ff ff       	jmp    c00329fc <_svfprintf_r+0xaac>
c0032e95:	8d 76 00             	lea    0x0(%esi),%esi
c0032e98:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032e9e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ea2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ea5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ea9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032eac:	89 04 24             	mov    %eax,(%esp)
c0032eaf:	e8 1c 3c 00 00       	call   c0036ad0 <__ssprint_r>
c0032eb4:	85 c0                	test   %eax,%eax
c0032eb6:	0f 84 43 fc ff ff    	je     c0032aff <_svfprintf_r+0xbaf>
c0032ebc:	e9 5f f2 ff ff       	jmp    c0032120 <_svfprintf_r+0x1d0>
c0032ec1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0032ec8:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032ece:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032ed2:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032ed5:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032ed9:	8b 45 08             	mov    0x8(%ebp),%eax
c0032edc:	89 04 24             	mov    %eax,(%esp)
c0032edf:	e8 ec 3b 00 00       	call   c0036ad0 <__ssprint_r>
c0032ee4:	85 c0                	test   %eax,%eax
c0032ee6:	0f 85 34 f2 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0032eec:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032ef2:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032ef5:	e9 c8 f9 ff ff       	jmp    c00328c2 <_svfprintf_r+0x972>
c0032efa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f00:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0032f06:	89 44 24 08          	mov    %eax,0x8(%esp)
c0032f0a:	8b 45 0c             	mov    0xc(%ebp),%eax
c0032f0d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0032f11:	8b 45 08             	mov    0x8(%ebp),%eax
c0032f14:	89 04 24             	mov    %eax,(%esp)
c0032f17:	e8 b4 3b 00 00       	call   c0036ad0 <__ssprint_r>
c0032f1c:	85 c0                	test   %eax,%eax
c0032f1e:	0f 85 fc f1 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0032f24:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0032f2a:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0032f2d:	e9 53 f9 ff ff       	jmp    c0032885 <_svfprintf_r+0x935>
c0032f32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f38:	89 c2                	mov    %eax,%edx
c0032f3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f40:	89 c8                	mov    %ecx,%eax
c0032f42:	83 ea 01             	sub    $0x1,%edx
c0032f45:	83 e0 07             	and    $0x7,%eax
c0032f48:	c1 e9 03             	shr    $0x3,%ecx
c0032f4b:	83 c0 30             	add    $0x30,%eax
c0032f4e:	85 c9                	test   %ecx,%ecx
c0032f50:	88 02                	mov    %al,(%edx)
c0032f52:	75 ec                	jne    c0032f40 <_svfprintf_r+0xff0>
c0032f54:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0032f5b:	89 95 28 ff ff ff    	mov    %edx,-0xd8(%ebp)
c0032f61:	0f 84 5b 01 00 00    	je     c00330c2 <_svfprintf_r+0x1172>
c0032f67:	3c 30                	cmp    $0x30,%al
c0032f69:	74 0b                	je     c0032f76 <_svfprintf_r+0x1026>
c0032f6b:	83 ad 28 ff ff ff 01 	subl   $0x1,-0xd8(%ebp)
c0032f72:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0032f76:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0032f79:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c0032f7f:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0032f85:	e9 1e f4 ff ff       	jmp    c00323a8 <_svfprintf_r+0x458>
c0032f8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0032f90:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0032f96:	85 db                	test   %ebx,%ebx
c0032f98:	0f 8e 66 05 00 00    	jle    c0033504 <_svfprintf_r+0x15b4>
c0032f9e:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0032fa4:	8b 85 1c ff ff ff    	mov    -0xe4(%ebp),%eax
c0032faa:	01 d0                	add    %edx,%eax
c0032fac:	89 c3                	mov    %eax,%ebx
c0032fae:	29 d3                	sub    %edx,%ebx
c0032fb0:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c0032fb6:	89 d0                	mov    %edx,%eax
c0032fb8:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0032fbe:	39 d3                	cmp    %edx,%ebx
c0032fc0:	0f 4f da             	cmovg  %edx,%ebx
c0032fc3:	85 db                	test   %ebx,%ebx
c0032fc5:	7e 28                	jle    c0032fef <_svfprintf_r+0x109f>
c0032fc7:	89 07                	mov    %eax,(%edi)
c0032fc9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0032fcf:	01 d9                	add    %ebx,%ecx
c0032fd1:	89 5f 04             	mov    %ebx,0x4(%edi)
c0032fd4:	83 c7 08             	add    $0x8,%edi
c0032fd7:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0032fdd:	83 c0 01             	add    $0x1,%eax
c0032fe0:	83 f8 07             	cmp    $0x7,%eax
c0032fe3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0032fe9:	0f 8f 58 09 00 00    	jg     c0033947 <_svfprintf_r+0x19f7>
c0032fef:	8b b5 20 ff ff ff    	mov    -0xe0(%ebp),%esi
c0032ff5:	31 c0                	xor    %eax,%eax
c0032ff7:	85 db                	test   %ebx,%ebx
c0032ff9:	0f 49 c3             	cmovns %ebx,%eax
c0032ffc:	29 c6                	sub    %eax,%esi
c0032ffe:	85 f6                	test   %esi,%esi
c0033000:	0f 8e 40 02 00 00    	jle    c0033246 <_svfprintf_r+0x12f6>
c0033006:	83 fe 10             	cmp    $0x10,%esi
c0033009:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003300f:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033015:	7f 15                	jg     c003302c <_svfprintf_r+0x10dc>
c0033017:	e9 db 01 00 00       	jmp    c00331f7 <_svfprintf_r+0x12a7>
c003301c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033020:	83 ee 10             	sub    $0x10,%esi
c0033023:	83 fe 10             	cmp    $0x10,%esi
c0033026:	0f 8e cb 01 00 00    	jle    c00331f7 <_svfprintf_r+0x12a7>
c003302c:	83 c0 01             	add    $0x1,%eax
c003302f:	83 c1 10             	add    $0x10,%ecx
c0033032:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c0033038:	83 c7 08             	add    $0x8,%edi
c003303b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033042:	83 f8 07             	cmp    $0x7,%eax
c0033045:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003304b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033051:	7e cd                	jle    c0033020 <_svfprintf_r+0x10d0>
c0033053:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033056:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003305a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003305e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033061:	89 04 24             	mov    %eax,(%esp)
c0033064:	e8 67 3a 00 00       	call   c0036ad0 <__ssprint_r>
c0033069:	85 c0                	test   %eax,%eax
c003306b:	0f 85 af f0 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0033071:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033077:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003307a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033080:	eb 9e                	jmp    c0033020 <_svfprintf_r+0x10d0>
c0033082:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0033085:	be cd cc cc cc       	mov    $0xcccccccd,%esi
c003308a:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0033090:	89 c7                	mov    %eax,%edi
c0033092:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033098:	89 c8                	mov    %ecx,%eax
c003309a:	83 ef 01             	sub    $0x1,%edi
c003309d:	f7 e6                	mul    %esi
c003309f:	c1 ea 03             	shr    $0x3,%edx
c00330a2:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00330a5:	01 c0                	add    %eax,%eax
c00330a7:	29 c1                	sub    %eax,%ecx
c00330a9:	83 c1 30             	add    $0x30,%ecx
c00330ac:	85 d2                	test   %edx,%edx
c00330ae:	88 0f                	mov    %cl,(%edi)
c00330b0:	89 d1                	mov    %edx,%ecx
c00330b2:	75 e4                	jne    c0033098 <_svfprintf_r+0x1148>
c00330b4:	89 fa                	mov    %edi,%edx
c00330b6:	89 bd 28 ff ff ff    	mov    %edi,-0xd8(%ebp)
c00330bc:	8b bd 48 ff ff ff    	mov    -0xb8(%ebp),%edi
c00330c2:	8d 45 a8             	lea    -0x58(%ebp),%eax
c00330c5:	29 d0                	sub    %edx,%eax
c00330c7:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00330cd:	e9 d6 f2 ff ff       	jmp    c00323a8 <_svfprintf_r+0x458>
c00330d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00330d8:	83 f9 09             	cmp    $0x9,%ecx
c00330db:	77 a5                	ja     c0033082 <_svfprintf_r+0x1132>
c00330dd:	8b 85 00 ff ff ff    	mov    -0x100(%ebp),%eax
c00330e3:	83 c1 30             	add    $0x30,%ecx
c00330e6:	88 4d a7             	mov    %cl,-0x59(%ebp)
c00330e9:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c00330ef:	8d 45 a7             	lea    -0x59(%ebp),%eax
c00330f2:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00330f8:	e9 ab f2 ff ff       	jmp    c00323a8 <_svfprintf_r+0x458>
c00330fd:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033103:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033107:	8b 45 0c             	mov    0xc(%ebp),%eax
c003310a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003310e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033111:	89 04 24             	mov    %eax,(%esp)
c0033114:	e8 b7 39 00 00       	call   c0036ad0 <__ssprint_r>
c0033119:	85 c0                	test   %eax,%eax
c003311b:	0f 85 ff ef ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0033121:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033128:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003312b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033131:	e9 18 f7 ff ff       	jmp    c003284e <_svfprintf_r+0x8fe>
c0033136:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c003313c:	8d 73 ff             	lea    -0x1(%ebx),%esi
c003313f:	85 f6                	test   %esi,%esi
c0033141:	0f 8e f0 fc ff ff    	jle    c0032e37 <_svfprintf_r+0xee7>
c0033147:	83 fe 10             	cmp    $0x10,%esi
c003314a:	7e 70                	jle    c00331bc <_svfprintf_r+0x126c>
c003314c:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033152:	eb 0c                	jmp    c0033160 <_svfprintf_r+0x1210>
c0033154:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033158:	83 ee 10             	sub    $0x10,%esi
c003315b:	83 fe 10             	cmp    $0x10,%esi
c003315e:	7e 5c                	jle    c00331bc <_svfprintf_r+0x126c>
c0033160:	83 c0 01             	add    $0x1,%eax
c0033163:	83 c2 10             	add    $0x10,%edx
c0033166:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c003316c:	83 c7 08             	add    $0x8,%edi
c003316f:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033176:	83 f8 07             	cmp    $0x7,%eax
c0033179:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003317f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033185:	7e d1                	jle    c0033158 <_svfprintf_r+0x1208>
c0033187:	8b 45 0c             	mov    0xc(%ebp),%eax
c003318a:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003318e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033192:	8b 45 08             	mov    0x8(%ebp),%eax
c0033195:	89 04 24             	mov    %eax,(%esp)
c0033198:	e8 33 39 00 00       	call   c0036ad0 <__ssprint_r>
c003319d:	85 c0                	test   %eax,%eax
c003319f:	0f 85 7b ef ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c00331a5:	83 ee 10             	sub    $0x10,%esi
c00331a8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00331ae:	83 fe 10             	cmp    $0x10,%esi
c00331b1:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00331b7:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00331ba:	7f a4                	jg     c0033160 <_svfprintf_r+0x1210>
c00331bc:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c00331c2:	01 f2                	add    %esi,%edx
c00331c4:	89 77 04             	mov    %esi,0x4(%edi)
c00331c7:	e9 50 fc ff ff       	jmp    c0032e1c <_svfprintf_r+0xecc>
c00331cc:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c00331d2:	01 f1                	add    %esi,%ecx
c00331d4:	89 77 04             	mov    %esi,0x4(%edi)
c00331d7:	e9 6f fc ff ff       	jmp    c0032e4b <_svfprintf_r+0xefb>
c00331dc:	8b 45 14             	mov    0x14(%ebp),%eax
c00331df:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
c00331e5:	8b 00                	mov    (%eax),%eax
c00331e7:	89 10                	mov    %edx,(%eax)
c00331e9:	8b 45 14             	mov    0x14(%ebp),%eax
c00331ec:	83 c0 04             	add    $0x4,%eax
c00331ef:	89 45 14             	mov    %eax,0x14(%ebp)
c00331f2:	e9 f4 ed ff ff       	jmp    c0031feb <_svfprintf_r+0x9b>
c00331f7:	83 c0 01             	add    $0x1,%eax
c00331fa:	01 f1                	add    %esi,%ecx
c00331fc:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c0033202:	83 c7 08             	add    $0x8,%edi
c0033205:	89 77 fc             	mov    %esi,-0x4(%edi)
c0033208:	83 f8 07             	cmp    $0x7,%eax
c003320b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033211:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033217:	7e 2d                	jle    c0033246 <_svfprintf_r+0x12f6>
c0033219:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003321f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033223:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033226:	89 44 24 04          	mov    %eax,0x4(%esp)
c003322a:	8b 45 08             	mov    0x8(%ebp),%eax
c003322d:	89 04 24             	mov    %eax,(%esp)
c0033230:	e8 9b 38 00 00       	call   c0036ad0 <__ssprint_r>
c0033235:	85 c0                	test   %eax,%eax
c0033237:	0f 85 e3 ee ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c003323d:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033243:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033246:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003324c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
c0033252:	03 85 20 ff ff ff    	add    -0xe0(%ebp),%eax
c0033258:	3b 95 1c ff ff ff    	cmp    -0xe4(%ebp),%edx
c003325e:	89 c6                	mov    %eax,%esi
c0033260:	7c 0d                	jl     c003326f <_svfprintf_r+0x131f>
c0033262:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033269:	0f 84 5e 05 00 00    	je     c00337cd <_svfprintf_r+0x187d>
c003326f:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033275:	89 07                	mov    %eax,(%edi)
c0033277:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c003327d:	01 c1                	add    %eax,%ecx
c003327f:	89 47 04             	mov    %eax,0x4(%edi)
c0033282:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033288:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003328e:	83 c0 01             	add    $0x1,%eax
c0033291:	83 f8 07             	cmp    $0x7,%eax
c0033294:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003329a:	0f 8f d9 06 00 00    	jg     c0033979 <_svfprintf_r+0x1a29>
c00332a0:	83 c7 08             	add    $0x8,%edi
c00332a3:	89 d0                	mov    %edx,%eax
c00332a5:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c00332ab:	89 f2                	mov    %esi,%edx
c00332ad:	29 f3                	sub    %esi,%ebx
c00332af:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00332b5:	29 c6                	sub    %eax,%esi
c00332b7:	39 de                	cmp    %ebx,%esi
c00332b9:	0f 4e de             	cmovle %esi,%ebx
c00332bc:	85 db                	test   %ebx,%ebx
c00332be:	7e 29                	jle    c00332e9 <_svfprintf_r+0x1399>
c00332c0:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00332c6:	01 d9                	add    %ebx,%ecx
c00332c8:	83 c7 08             	add    $0x8,%edi
c00332cb:	89 57 f8             	mov    %edx,-0x8(%edi)
c00332ce:	89 5f fc             	mov    %ebx,-0x4(%edi)
c00332d1:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c00332d7:	83 c0 01             	add    $0x1,%eax
c00332da:	83 f8 07             	cmp    $0x7,%eax
c00332dd:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00332e3:	0f 8f c8 06 00 00    	jg     c00339b1 <_svfprintf_r+0x1a61>
c00332e9:	31 c0                	xor    %eax,%eax
c00332eb:	85 db                	test   %ebx,%ebx
c00332ed:	0f 49 c3             	cmovns %ebx,%eax
c00332f0:	29 c6                	sub    %eax,%esi
c00332f2:	85 f6                	test   %esi,%esi
c00332f4:	0f 8e 02 f7 ff ff    	jle    c00329fc <_svfprintf_r+0xaac>
c00332fa:	83 fe 10             	cmp    $0x10,%esi
c00332fd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033303:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c0033309:	7f 11                	jg     c003331c <_svfprintf_r+0x13cc>
c003330b:	e9 bc fe ff ff       	jmp    c00331cc <_svfprintf_r+0x127c>
c0033310:	83 ee 10             	sub    $0x10,%esi
c0033313:	83 fe 10             	cmp    $0x10,%esi
c0033316:	0f 8e b0 fe ff ff    	jle    c00331cc <_svfprintf_r+0x127c>
c003331c:	83 c0 01             	add    $0x1,%eax
c003331f:	83 c1 10             	add    $0x10,%ecx
c0033322:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c0033328:	83 c7 08             	add    $0x8,%edi
c003332b:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c0033332:	83 f8 07             	cmp    $0x7,%eax
c0033335:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c003333b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033341:	7e cd                	jle    c0033310 <_svfprintf_r+0x13c0>
c0033343:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033346:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003334a:	89 44 24 04          	mov    %eax,0x4(%esp)
c003334e:	8b 45 08             	mov    0x8(%ebp),%eax
c0033351:	89 04 24             	mov    %eax,(%esp)
c0033354:	e8 77 37 00 00       	call   c0036ad0 <__ssprint_r>
c0033359:	85 c0                	test   %eax,%eax
c003335b:	0f 85 bf ed ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0033361:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033367:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003336a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033370:	eb 9e                	jmp    c0033310 <_svfprintf_r+0x13c0>
c0033372:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033379:	0f 85 14 fa ff ff    	jne    c0032d93 <_svfprintf_r+0xe43>
c003337f:	89 07                	mov    %eax,(%edi)
c0033381:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033387:	8d 51 01             	lea    0x1(%ecx),%edx
c003338a:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
c0033391:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033397:	83 c0 01             	add    $0x1,%eax
c003339a:	83 f8 07             	cmp    $0x7,%eax
c003339d:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00333a3:	0f 8e 8b fa ff ff    	jle    c0032e34 <_svfprintf_r+0xee4>
c00333a9:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00333af:	89 44 24 08          	mov    %eax,0x8(%esp)
c00333b3:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333b6:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333ba:	8b 45 08             	mov    0x8(%ebp),%eax
c00333bd:	89 04 24             	mov    %eax,(%esp)
c00333c0:	e8 0b 37 00 00       	call   c0036ad0 <__ssprint_r>
c00333c5:	85 c0                	test   %eax,%eax
c00333c7:	0f 85 53 ed ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c00333cd:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00333d3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00333d6:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00333dc:	e9 56 fa ff ff       	jmp    c0032e37 <_svfprintf_r+0xee7>
c00333e1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00333e7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00333eb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00333ee:	89 44 24 04          	mov    %eax,0x4(%esp)
c00333f2:	8b 45 08             	mov    0x8(%ebp),%eax
c00333f5:	89 04 24             	mov    %eax,(%esp)
c00333f8:	e8 d3 36 00 00       	call   c0036ad0 <__ssprint_r>
c00333fd:	85 c0                	test   %eax,%eax
c00333ff:	0f 85 1b ed ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0033405:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003340b:	8d 7d a8             	lea    -0x58(%ebp),%edi
c003340e:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033414:	e9 d6 f9 ff ff       	jmp    c0032def <_svfprintf_r+0xe9f>
c0033419:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003341f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033423:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033426:	89 44 24 04          	mov    %eax,0x4(%esp)
c003342a:	8b 45 08             	mov    0x8(%ebp),%eax
c003342d:	89 04 24             	mov    %eax,(%esp)
c0033430:	e8 9b 36 00 00       	call   c0036ad0 <__ssprint_r>
c0033435:	85 c0                	test   %eax,%eax
c0033437:	0f 85 e3 ec ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c003343d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0033443:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033446:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003344c:	e9 6f f9 ff ff       	jmp    c0032dc0 <_svfprintf_r+0xe70>
c0033451:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033457:	dd 1c 24             	fstpl  (%esp)
c003345a:	e8 11 35 00 00       	call   c0036970 <__fpclassifyd>
c003345f:	85 c0                	test   %eax,%eax
c0033461:	0f 85 a3 01 00 00    	jne    c003360a <_svfprintf_r+0x16ba>
c0033467:	83 bd 24 ff ff ff 47 	cmpl   $0x47,-0xdc(%ebp)
c003346e:	ba 4a 8e 03 c0       	mov    $0xc0038e4a,%edx
c0033473:	b8 4e 8e 03 c0       	mov    $0xc0038e4e,%eax
c0033478:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c003347f:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%ebp)
c0033486:	00 00 00 
c0033489:	0f 4e c2             	cmovle %edx,%eax
c003348c:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033492:	81 a5 4c ff ff ff 7f 	andl   $0xffffff7f,-0xb4(%ebp)
c0033499:	ff ff ff 
c003349c:	c7 85 38 ff ff ff 03 	movl   $0x3,-0xc8(%ebp)
c00334a3:	00 00 00 
c00334a6:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c00334ad:	00 00 00 
c00334b0:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c00334b7:	00 00 00 
c00334ba:	e9 29 ed ff ff       	jmp    c00321e8 <_svfprintf_r+0x298>
c00334bf:	dd 00                	fldl   (%eax)
c00334c1:	83 c0 08             	add    $0x8,%eax
c00334c4:	dd 9d 10 ff ff ff    	fstpl  -0xf0(%ebp)
c00334ca:	89 45 14             	mov    %eax,0x14(%ebp)
c00334cd:	e9 e6 ef ff ff       	jmp    c00324b8 <_svfprintf_r+0x568>
c00334d2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00334d8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00334dc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00334df:	89 44 24 04          	mov    %eax,0x4(%esp)
c00334e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00334e6:	89 04 24             	mov    %eax,(%esp)
c00334e9:	e8 e2 35 00 00       	call   c0036ad0 <__ssprint_r>
c00334ee:	85 c0                	test   %eax,%eax
c00334f0:	0f 85 2a ec ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c00334f6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00334fc:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00334ff:	e9 6b f6 ff ff       	jmp    c0032b6f <_svfprintf_r+0xc1f>
c0033504:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003350a:	83 c1 01             	add    $0x1,%ecx
c003350d:	83 c7 08             	add    $0x8,%edi
c0033510:	c7 47 f8 7b 8e 03 c0 	movl   $0xc0038e7b,-0x8(%edi)
c0033517:	c7 47 fc 01 00 00 00 	movl   $0x1,-0x4(%edi)
c003351e:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%ebp)
c0033524:	83 c0 01             	add    $0x1,%eax
c0033527:	83 f8 07             	cmp    $0x7,%eax
c003352a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033530:	0f 8f ef 02 00 00    	jg     c0033825 <_svfprintf_r+0x18d5>
c0033536:	85 db                	test   %ebx,%ebx
c0033538:	75 17                	jne    c0033551 <_svfprintf_r+0x1601>
c003353a:	8b 95 1c ff ff ff    	mov    -0xe4(%ebp),%edx
c0033540:	85 d2                	test   %edx,%edx
c0033542:	75 0d                	jne    c0033551 <_svfprintf_r+0x1601>
c0033544:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c003354b:	0f 84 ab f4 ff ff    	je     c00329fc <_svfprintf_r+0xaac>
c0033551:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
c0033557:	83 c7 08             	add    $0x8,%edi
c003355a:	89 47 f8             	mov    %eax,-0x8(%edi)
c003355d:	8b 85 08 ff ff ff    	mov    -0xf8(%ebp),%eax
c0033563:	89 47 fc             	mov    %eax,-0x4(%edi)
c0033566:	8d 14 01             	lea    (%ecx,%eax,1),%edx
c0033569:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003356f:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033575:	83 c0 01             	add    $0x1,%eax
c0033578:	83 f8 07             	cmp    $0x7,%eax
c003357b:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0033581:	0f 8f 60 03 00 00    	jg     c00338e7 <_svfprintf_r+0x1997>
c0033587:	f7 db                	neg    %ebx
c0033589:	85 db                	test   %ebx,%ebx
c003358b:	0f 8e 21 03 00 00    	jle    c00338b2 <_svfprintf_r+0x1962>
c0033591:	83 fb 10             	cmp    $0x10,%ebx
c0033594:	0f 8e c3 02 00 00    	jle    c003385d <_svfprintf_r+0x190d>
c003359a:	8d b5 74 ff ff ff    	lea    -0x8c(%ebp),%esi
c00335a0:	eb 12                	jmp    c00335b4 <_svfprintf_r+0x1664>
c00335a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00335a8:	83 eb 10             	sub    $0x10,%ebx
c00335ab:	83 fb 10             	cmp    $0x10,%ebx
c00335ae:	0f 8e a9 02 00 00    	jle    c003385d <_svfprintf_r+0x190d>
c00335b4:	83 c0 01             	add    $0x1,%eax
c00335b7:	83 c2 10             	add    $0x10,%edx
c00335ba:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c00335c0:	83 c7 08             	add    $0x8,%edi
c00335c3:	c7 47 fc 10 00 00 00 	movl   $0x10,-0x4(%edi)
c00335ca:	83 f8 07             	cmp    $0x7,%eax
c00335cd:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00335d3:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00335d9:	7e cd                	jle    c00335a8 <_svfprintf_r+0x1658>
c00335db:	8b 45 0c             	mov    0xc(%ebp),%eax
c00335de:	89 74 24 08          	mov    %esi,0x8(%esp)
c00335e2:	89 44 24 04          	mov    %eax,0x4(%esp)
c00335e6:	8b 45 08             	mov    0x8(%ebp),%eax
c00335e9:	89 04 24             	mov    %eax,(%esp)
c00335ec:	e8 df 34 00 00       	call   c0036ad0 <__ssprint_r>
c00335f1:	85 c0                	test   %eax,%eax
c00335f3:	0f 85 27 eb ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c00335f9:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00335ff:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033602:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033608:	eb 9e                	jmp    c00335a8 <_svfprintf_r+0x1658>
c003360a:	8b 9d 24 ff ff ff    	mov    -0xdc(%ebp),%ebx
c0033610:	83 e3 df             	and    $0xffffffdf,%ebx
c0033613:	83 bd 44 ff ff ff ff 	cmpl   $0xffffffff,-0xbc(%ebp)
c003361a:	0f 84 05 03 00 00    	je     c0033925 <_svfprintf_r+0x19d5>
c0033620:	83 fb 47             	cmp    $0x47,%ebx
c0033623:	75 16                	jne    c003363b <_svfprintf_r+0x16eb>
c0033625:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c003362b:	b8 01 00 00 00       	mov    $0x1,%eax
c0033630:	85 d2                	test   %edx,%edx
c0033632:	0f 45 c2             	cmovne %edx,%eax
c0033635:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%ebp)
c003363b:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033641:	dd 85 10 ff ff ff    	fldl   -0xf0(%ebp)
c0033647:	dd 95 38 ff ff ff    	fstl   -0xc8(%ebp)
c003364d:	80 cc 01             	or     $0x1,%ah
c0033650:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
c0033656:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003365c:	c6 85 48 ff ff ff 00 	movb   $0x0,-0xb8(%ebp)
c0033663:	85 c0                	test   %eax,%eax
c0033665:	0f 88 ba 05 00 00    	js     c0033c25 <_svfprintf_r+0x1cd5>
c003366b:	83 fb 46             	cmp    $0x46,%ebx
c003366e:	0f 94 c0             	sete   %al
c0033671:	89 c6                	mov    %eax,%esi
c0033673:	0f 84 d4 03 00 00    	je     c0033a4d <_svfprintf_r+0x1afd>
c0033679:	83 fb 45             	cmp    $0x45,%ebx
c003367c:	0f 85 99 05 00 00    	jne    c0033c1b <_svfprintf_r+0x1ccb>
c0033682:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033688:	dd 54 24 04          	fstl   0x4(%esp)
c003368c:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
c0033693:	00 
c0033694:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c003369a:	8d 70 01             	lea    0x1(%eax),%esi
c003369d:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c00336a3:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c00336a7:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c00336ad:	89 44 24 18          	mov    %eax,0x18(%esp)
c00336b1:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c00336b7:	89 44 24 14          	mov    %eax,0x14(%esp)
c00336bb:	8b 45 08             	mov    0x8(%ebp),%eax
c00336be:	89 74 24 10          	mov    %esi,0x10(%esp)
c00336c2:	89 04 24             	mov    %eax,(%esp)
c00336c5:	e8 56 09 00 00       	call   c0034020 <_dtoa_r>
c00336ca:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c00336d0:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
c00336d3:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c00336d9:	d9 ee                	fldz   
c00336db:	d9 c9                	fxch   %st(1)
c00336dd:	df e9                	fucomip %st(1),%st
c00336df:	dd d8                	fstp   %st(0)
c00336e1:	0f 8a fd 00 00 00    	jp     c00337e4 <_svfprintf_r+0x1894>
c00336e7:	89 c8                	mov    %ecx,%eax
c00336e9:	0f 85 f5 00 00 00    	jne    c00337e4 <_svfprintf_r+0x1894>
c00336ef:	2b 85 28 ff ff ff    	sub    -0xd8(%ebp),%eax
c00336f5:	83 fb 47             	cmp    $0x47,%ebx
c00336f8:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c00336fe:	0f 84 1e 04 00 00    	je     c0033b22 <_svfprintf_r+0x1bd2>
c0033704:	83 bd 24 ff ff ff 65 	cmpl   $0x65,-0xdc(%ebp)
c003370b:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033711:	0f 8e 65 04 00 00    	jle    c0033b7c <_svfprintf_r+0x1c2c>
c0033717:	83 bd 24 ff ff ff 66 	cmpl   $0x66,-0xdc(%ebp)
c003371e:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033724:	0f 84 3c 05 00 00    	je     c0033c66 <_svfprintf_r+0x1d16>
c003372a:	8b 85 20 ff ff ff    	mov    -0xe0(%ebp),%eax
c0033730:	39 85 1c ff ff ff    	cmp    %eax,-0xe4(%ebp)
c0033736:	0f 8f f7 04 00 00    	jg     c0033c33 <_svfprintf_r+0x1ce3>
c003373c:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033742:	83 e0 01             	and    $0x1,%eax
c0033745:	0f 85 e2 05 00 00    	jne    c0033d2d <_svfprintf_r+0x1ddd>
c003374b:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033751:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033758:	00 00 00 
c003375b:	85 d2                	test   %edx,%edx
c003375d:	0f 49 c2             	cmovns %edx,%eax
c0033760:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033766:	80 bd 48 ff ff ff 00 	cmpb   $0x0,-0xb8(%ebp)
c003376d:	0f 85 68 03 00 00    	jne    c0033adb <_svfprintf_r+0x1b8b>
c0033773:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033779:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c003377f:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033786:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c003378d:	00 00 00 
c0033790:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033796:	e9 4d ea ff ff       	jmp    c00321e8 <_svfprintf_r+0x298>
c003379b:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00337a1:	89 44 24 08          	mov    %eax,0x8(%esp)
c00337a5:	8b 45 0c             	mov    0xc(%ebp),%eax
c00337a8:	89 44 24 04          	mov    %eax,0x4(%esp)
c00337ac:	8b 45 08             	mov    0x8(%ebp),%eax
c00337af:	89 04 24             	mov    %eax,(%esp)
c00337b2:	e8 19 33 00 00       	call   c0036ad0 <__ssprint_r>
c00337b7:	85 c0                	test   %eax,%eax
c00337b9:	0f 85 61 e9 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c00337bf:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00337c5:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00337c8:	e9 f2 f3 ff ff       	jmp    c0032bbf <_svfprintf_r+0xc6f>
c00337cd:	89 d0                	mov    %edx,%eax
c00337cf:	e9 d1 fa ff ff       	jmp    c00332a5 <_svfprintf_r+0x1355>
c00337d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00337d8:	8d 50 01             	lea    0x1(%eax),%edx
c00337db:	89 95 6c ff ff ff    	mov    %edx,-0x94(%ebp)
c00337e1:	c6 00 30             	movb   $0x30,(%eax)
c00337e4:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c00337ea:	39 c1                	cmp    %eax,%ecx
c00337ec:	77 ea                	ja     c00337d8 <_svfprintf_r+0x1888>
c00337ee:	e9 fc fe ff ff       	jmp    c00336ef <_svfprintf_r+0x179f>
c00337f3:	8b 45 08             	mov    0x8(%ebp),%eax
c00337f6:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c00337fd:	00 
c00337fe:	89 04 24             	mov    %eax,(%esp)
c0033801:	e8 4a 1b 00 00       	call   c0035350 <_malloc_r>
c0033806:	8b 55 0c             	mov    0xc(%ebp),%edx
c0033809:	85 c0                	test   %eax,%eax
c003380b:	89 02                	mov    %eax,(%edx)
c003380d:	89 42 10             	mov    %eax,0x10(%edx)
c0033810:	0f 84 15 06 00 00    	je     c0033e2b <_svfprintf_r+0x1edb>
c0033816:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033819:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0033820:	e9 6c e7 ff ff       	jmp    c0031f91 <_svfprintf_r+0x41>
c0033825:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003382b:	89 44 24 08          	mov    %eax,0x8(%esp)
c003382f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033832:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033836:	8b 45 08             	mov    0x8(%ebp),%eax
c0033839:	89 04 24             	mov    %eax,(%esp)
c003383c:	e8 8f 32 00 00       	call   c0036ad0 <__ssprint_r>
c0033841:	85 c0                	test   %eax,%eax
c0033843:	0f 85 d7 e8 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c0033849:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c003384f:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033852:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033858:	e9 d9 fc ff ff       	jmp    c0033536 <_svfprintf_r+0x15e6>
c003385d:	83 c0 01             	add    $0x1,%eax
c0033860:	01 da                	add    %ebx,%edx
c0033862:	c7 07 e4 8f 03 c0    	movl   $0xc0038fe4,(%edi)
c0033868:	83 c7 08             	add    $0x8,%edi
c003386b:	89 5f fc             	mov    %ebx,-0x4(%edi)
c003386e:	83 f8 07             	cmp    $0x7,%eax
c0033871:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0033877:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003387d:	7e 33                	jle    c00338b2 <_svfprintf_r+0x1962>
c003387f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033885:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033889:	8b 45 0c             	mov    0xc(%ebp),%eax
c003388c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033890:	8b 45 08             	mov    0x8(%ebp),%eax
c0033893:	89 04 24             	mov    %eax,(%esp)
c0033896:	e8 35 32 00 00       	call   c0036ad0 <__ssprint_r>
c003389b:	85 c0                	test   %eax,%eax
c003389d:	0f 85 7d e8 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c00338a3:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00338a9:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00338ac:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00338b2:	8b 9d 28 ff ff ff    	mov    -0xd8(%ebp),%ebx
c00338b8:	83 c0 01             	add    $0x1,%eax
c00338bb:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00338c1:	89 1f                	mov    %ebx,(%edi)
c00338c3:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c00338c9:	01 da                	add    %ebx,%edx
c00338cb:	83 f8 07             	cmp    $0x7,%eax
c00338ce:	89 5f 04             	mov    %ebx,0x4(%edi)
c00338d1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00338d7:	0f 8f 86 f5 ff ff    	jg     c0032e63 <_svfprintf_r+0xf13>
c00338dd:	83 c7 08             	add    $0x8,%edi
c00338e0:	89 d1                	mov    %edx,%ecx
c00338e2:	e9 15 f1 ff ff       	jmp    c00329fc <_svfprintf_r+0xaac>
c00338e7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00338ed:	89 44 24 08          	mov    %eax,0x8(%esp)
c00338f1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00338f4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00338f8:	8b 45 08             	mov    0x8(%ebp),%eax
c00338fb:	89 04 24             	mov    %eax,(%esp)
c00338fe:	e8 cd 31 00 00       	call   c0036ad0 <__ssprint_r>
c0033903:	85 c0                	test   %eax,%eax
c0033905:	0f 85 15 e8 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c003390b:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c0033911:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033914:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003391a:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0033920:	e9 62 fc ff ff       	jmp    c0033587 <_svfprintf_r+0x1637>
c0033925:	c7 85 44 ff ff ff 06 	movl   $0x6,-0xbc(%ebp)
c003392c:	00 00 00 
c003392f:	e9 07 fd ff ff       	jmp    c003363b <_svfprintf_r+0x16eb>
c0033934:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c003393a:	89 04 24             	mov    %eax,(%esp)
c003393d:	e8 0e 31 00 00       	call   c0036a50 <strlen>
c0033942:	e9 6a e8 ff ff       	jmp    c00321b1 <_svfprintf_r+0x261>
c0033947:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003394d:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033951:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033954:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033958:	8b 45 08             	mov    0x8(%ebp),%eax
c003395b:	89 04 24             	mov    %eax,(%esp)
c003395e:	e8 6d 31 00 00       	call   c0036ad0 <__ssprint_r>
c0033963:	85 c0                	test   %eax,%eax
c0033965:	0f 85 b5 e7 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c003396b:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c0033971:	8d 7d a8             	lea    -0x58(%ebp),%edi
c0033974:	e9 76 f6 ff ff       	jmp    c0032fef <_svfprintf_r+0x109f>
c0033979:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003397f:	89 44 24 08          	mov    %eax,0x8(%esp)
c0033983:	8b 45 0c             	mov    0xc(%ebp),%eax
c0033986:	89 44 24 04          	mov    %eax,0x4(%esp)
c003398a:	8b 45 08             	mov    0x8(%ebp),%eax
c003398d:	89 04 24             	mov    %eax,(%esp)
c0033990:	e8 3b 31 00 00       	call   c0036ad0 <__ssprint_r>
c0033995:	85 c0                	test   %eax,%eax
c0033997:	0f 85 83 e7 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c003399d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c00339a3:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339a6:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339ac:	e9 f4 f8 ff ff       	jmp    c00332a5 <_svfprintf_r+0x1355>
c00339b1:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00339b7:	89 44 24 08          	mov    %eax,0x8(%esp)
c00339bb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00339be:	89 44 24 04          	mov    %eax,0x4(%esp)
c00339c2:	8b 45 08             	mov    0x8(%ebp),%eax
c00339c5:	89 04 24             	mov    %eax,(%esp)
c00339c8:	e8 03 31 00 00       	call   c0036ad0 <__ssprint_r>
c00339cd:	85 c0                	test   %eax,%eax
c00339cf:	0f 85 4b e7 ff ff    	jne    c0032120 <_svfprintf_r+0x1d0>
c00339d5:	8b b5 1c ff ff ff    	mov    -0xe4(%ebp),%esi
c00339db:	8d 7d a8             	lea    -0x58(%ebp),%edi
c00339de:	2b b5 5c ff ff ff    	sub    -0xa4(%ebp),%esi
c00339e4:	8b 8d 7c ff ff ff    	mov    -0x84(%ebp),%ecx
c00339ea:	e9 fa f8 ff ff       	jmp    c00332e9 <_svfprintf_r+0x1399>
c00339ef:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c00339f5:	b0 06                	mov    $0x6,%al
c00339f7:	89 75 14             	mov    %esi,0x14(%ebp)
c00339fa:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033a01:	00 00 00 
c0033a04:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033a0b:	00 00 00 
c0033a0e:	83 fa 06             	cmp    $0x6,%edx
c0033a11:	0f 46 c2             	cmovbe %edx,%eax
c0033a14:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033a1a:	85 c0                	test   %eax,%eax
c0033a1c:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033a22:	c7 85 28 ff ff ff 74 	movl   $0xc0038e74,-0xd8(%ebp)
c0033a29:	8e 03 c0 
c0033a2c:	0f 49 d0             	cmovns %eax,%edx
c0033a2f:	31 db                	xor    %ebx,%ebx
c0033a31:	89 95 48 ff ff ff    	mov    %edx,-0xb8(%ebp)
c0033a37:	e9 b7 e7 ff ff       	jmp    c00321f3 <_svfprintf_r+0x2a3>
c0033a3c:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033a43:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033a48:	e9 9d ea ff ff       	jmp    c00324ea <_svfprintf_r+0x59a>
c0033a4d:	ba 03 00 00 00       	mov    $0x3,%edx
c0033a52:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
c0033a58:	89 44 24 1c          	mov    %eax,0x1c(%esp)
c0033a5c:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
c0033a62:	89 44 24 18          	mov    %eax,0x18(%esp)
c0033a66:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
c0033a6c:	89 44 24 14          	mov    %eax,0x14(%esp)
c0033a70:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033a76:	dd 54 24 04          	fstl   0x4(%esp)
c0033a7a:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0033a7e:	dd 9d 38 ff ff ff    	fstpl  -0xc8(%ebp)
c0033a84:	89 44 24 10          	mov    %eax,0x10(%esp)
c0033a88:	8b 45 08             	mov    0x8(%ebp),%eax
c0033a8b:	89 04 24             	mov    %eax,(%esp)
c0033a8e:	e8 8d 05 00 00       	call   c0034020 <_dtoa_r>
c0033a93:	83 fb 47             	cmp    $0x47,%ebx
c0033a96:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%ebp)
c0033a9c:	dd 85 38 ff ff ff    	fldl   -0xc8(%ebp)
c0033aa2:	75 09                	jne    c0033aad <_svfprintf_r+0x1b5d>
c0033aa4:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033aab:	74 5b                	je     c0033b08 <_svfprintf_r+0x1bb8>
c0033aad:	8b 95 28 ff ff ff    	mov    -0xd8(%ebp),%edx
c0033ab3:	89 f0                	mov    %esi,%eax
c0033ab5:	8b 8d 44 ff ff ff    	mov    -0xbc(%ebp),%ecx
c0033abb:	01 d1                	add    %edx,%ecx
c0033abd:	84 c0                	test   %al,%al
c0033abf:	0f 84 14 fc ff ff    	je     c00336d9 <_svfprintf_r+0x1789>
c0033ac5:	80 3a 30             	cmpb   $0x30,(%edx)
c0033ac8:	0f 84 37 02 00 00    	je     c0033d05 <_svfprintf_r+0x1db5>
c0033ace:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033ad4:	01 c1                	add    %eax,%ecx
c0033ad6:	e9 fe fb ff ff       	jmp    c00336d9 <_svfprintf_r+0x1789>
c0033adb:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033ae1:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
c0033ae7:	bb 2d 00 00 00       	mov    $0x2d,%ebx
c0033aec:	c6 85 59 ff ff ff 2d 	movb   $0x2d,-0xa7(%ebp)
c0033af3:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033afa:	00 00 00 
c0033afd:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
c0033b03:	e9 e4 e6 ff ff       	jmp    c00321ec <_svfprintf_r+0x29c>
c0033b08:	dd d8                	fstp   %st(0)
c0033b0a:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
c0033b10:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%ebp)
c0033b16:	8b 85 28 ff ff ff    	mov    -0xd8(%ebp),%eax
c0033b1c:	29 85 1c ff ff ff    	sub    %eax,-0xe4(%ebp)
c0033b22:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0033b28:	83 f8 fd             	cmp    $0xfffffffd,%eax
c0033b2b:	7c 48                	jl     c0033b75 <_svfprintf_r+0x1c25>
c0033b2d:	39 85 44 ff ff ff    	cmp    %eax,-0xbc(%ebp)
c0033b33:	7c 40                	jl     c0033b75 <_svfprintf_r+0x1c25>
c0033b35:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%ebp)
c0033b3b:	e9 ea fb ff ff       	jmp    c003372a <_svfprintf_r+0x17da>
c0033b40:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033b46:	0f b6 9d 59 ff ff ff 	movzbl -0xa7(%ebp),%ebx
c0033b4d:	89 75 14             	mov    %esi,0x14(%ebp)
c0033b50:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033b57:	00 00 00 
c0033b5a:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%ebp)
c0033b60:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033b66:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033b6d:	00 00 00 
c0033b70:	e9 73 e6 ff ff       	jmp    c00321e8 <_svfprintf_r+0x298>
c0033b75:	83 ad 24 ff ff ff 02 	subl   $0x2,-0xdc(%ebp)
c0033b7c:	8d 48 ff             	lea    -0x1(%eax),%ecx
c0033b7f:	0f b6 85 24 ff ff ff 	movzbl -0xdc(%ebp),%eax
c0033b86:	85 c9                	test   %ecx,%ecx
c0033b88:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0033b8e:	88 85 65 ff ff ff    	mov    %al,-0x9b(%ebp)
c0033b94:	0f 88 2c 02 00 00    	js     c0033dc6 <_svfprintf_r+0x1e76>
c0033b9a:	c6 85 66 ff ff ff 2b 	movb   $0x2b,-0x9a(%ebp)
c0033ba1:	83 f9 09             	cmp    $0x9,%ecx
c0033ba4:	0f 8f ea 00 00 00    	jg     c0033c94 <_svfprintf_r+0x1d44>
c0033baa:	83 c1 30             	add    $0x30,%ecx
c0033bad:	c6 85 67 ff ff ff 30 	movb   $0x30,-0x99(%ebp)
c0033bb4:	8d 85 69 ff ff ff    	lea    -0x97(%ebp),%eax
c0033bba:	88 8d 68 ff ff ff    	mov    %cl,-0x98(%ebp)
c0033bc0:	8b 9d 1c ff ff ff    	mov    -0xe4(%ebp),%ebx
c0033bc6:	8d 95 65 ff ff ff    	lea    -0x9b(%ebp),%edx
c0033bcc:	29 d0                	sub    %edx,%eax
c0033bce:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%ebp)
c0033bd4:	89 da                	mov    %ebx,%edx
c0033bd6:	01 c2                	add    %eax,%edx
c0033bd8:	83 fb 01             	cmp    $0x1,%ebx
c0033bdb:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033be1:	0f 8e 21 02 00 00    	jle    c0033e08 <_svfprintf_r+0x1eb8>
c0033be7:	31 c0                	xor    %eax,%eax
c0033be9:	83 85 38 ff ff ff 01 	addl   $0x1,-0xc8(%ebp)
c0033bf0:	0f 49 85 38 ff ff ff 	cmovns -0xc8(%ebp),%eax
c0033bf7:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033bfe:	00 00 00 
c0033c01:	e9 60 fb ff ff       	jmp    c0033766 <_svfprintf_r+0x1816>
c0033c06:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033c0c:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0033c13:	00 00 00 
c0033c16:	e9 68 e4 ff ff       	jmp    c0032083 <_svfprintf_r+0x133>
c0033c1b:	ba 02 00 00 00       	mov    $0x2,%edx
c0033c20:	e9 2d fe ff ff       	jmp    c0033a52 <_svfprintf_r+0x1b02>
c0033c25:	d9 e0                	fchs   
c0033c27:	c6 85 48 ff ff ff 2d 	movb   $0x2d,-0xb8(%ebp)
c0033c2e:	e9 38 fa ff ff       	jmp    c003366b <_svfprintf_r+0x171b>
c0033c33:	8b 8d 20 ff ff ff    	mov    -0xe0(%ebp),%ecx
c0033c39:	ba 01 00 00 00       	mov    $0x1,%edx
c0033c3e:	85 c9                	test   %ecx,%ecx
c0033c40:	0f 8e 5a 01 00 00    	jle    c0033da0 <_svfprintf_r+0x1e50>
c0033c46:	31 c0                	xor    %eax,%eax
c0033c48:	03 95 1c ff ff ff    	add    -0xe4(%ebp),%edx
c0033c4e:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033c55:	00 00 00 
c0033c58:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033c5e:	0f 49 c2             	cmovns %edx,%eax
c0033c61:	e9 00 fb ff ff       	jmp    c0033766 <_svfprintf_r+0x1816>
c0033c66:	85 c0                	test   %eax,%eax
c0033c68:	0f 8e 06 01 00 00    	jle    c0033d74 <_svfprintf_r+0x1e24>
c0033c6e:	8b b5 44 ff ff ff    	mov    -0xbc(%ebp),%esi
c0033c74:	85 f6                	test   %esi,%esi
c0033c76:	0f 85 d4 00 00 00    	jne    c0033d50 <_svfprintf_r+0x1e00>
c0033c7c:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033c83:	0f 85 c7 00 00 00    	jne    c0033d50 <_svfprintf_r+0x1e00>
c0033c89:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033c8f:	e9 d2 fa ff ff       	jmp    c0033766 <_svfprintf_r+0x1816>
c0033c94:	8d b5 73 ff ff ff    	lea    -0x8d(%ebp),%esi
c0033c9a:	89 f3                	mov    %esi,%ebx
c0033c9c:	b8 67 66 66 66       	mov    $0x66666667,%eax
c0033ca1:	83 eb 01             	sub    $0x1,%ebx
c0033ca4:	f7 e9                	imul   %ecx
c0033ca6:	89 c8                	mov    %ecx,%eax
c0033ca8:	c1 f8 1f             	sar    $0x1f,%eax
c0033cab:	c1 fa 02             	sar    $0x2,%edx
c0033cae:	29 c2                	sub    %eax,%edx
c0033cb0:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0033cb3:	01 c0                	add    %eax,%eax
c0033cb5:	29 c1                	sub    %eax,%ecx
c0033cb7:	83 fa 09             	cmp    $0x9,%edx
c0033cba:	8d 41 30             	lea    0x30(%ecx),%eax
c0033cbd:	89 d1                	mov    %edx,%ecx
c0033cbf:	88 03                	mov    %al,(%ebx)
c0033cc1:	7f d9                	jg     c0033c9c <_svfprintf_r+0x1d4c>
c0033cc3:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0033cc6:	83 c1 30             	add    $0x30,%ecx
c0033cc9:	39 f0                	cmp    %esi,%eax
c0033ccb:	88 4b ff             	mov    %cl,-0x1(%ebx)
c0033cce:	0f 83 6a 01 00 00    	jae    c0033e3e <_svfprintf_r+0x1eee>
c0033cd4:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033cda:	eb 07                	jmp    c0033ce3 <_svfprintf_r+0x1d93>
c0033cdc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033ce0:	0f b6 08             	movzbl (%eax),%ecx
c0033ce3:	83 c0 01             	add    $0x1,%eax
c0033ce6:	83 c2 01             	add    $0x1,%edx
c0033ce9:	39 f0                	cmp    %esi,%eax
c0033ceb:	88 4a ff             	mov    %cl,-0x1(%edx)
c0033cee:	75 f0                	jne    c0033ce0 <_svfprintf_r+0x1d90>
c0033cf0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0033cf6:	29 d8                	sub    %ebx,%eax
c0033cf8:	8d 95 67 ff ff ff    	lea    -0x99(%ebp),%edx
c0033cfe:	01 d0                	add    %edx,%eax
c0033d00:	e9 bb fe ff ff       	jmp    c0033bc0 <_svfprintf_r+0x1c70>
c0033d05:	d9 ee                	fldz   
c0033d07:	d9 c9                	fxch   %st(1)
c0033d09:	db e9                	fucomi %st(1),%st
c0033d0b:	dd d9                	fstp   %st(1)
c0033d0d:	7a 06                	jp     c0033d15 <_svfprintf_r+0x1dc5>
c0033d0f:	0f 84 b9 fd ff ff    	je     c0033ace <_svfprintf_r+0x1b7e>
c0033d15:	b8 01 00 00 00       	mov    $0x1,%eax
c0033d1a:	2b 85 44 ff ff ff    	sub    -0xbc(%ebp),%eax
c0033d20:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%ebp)
c0033d26:	01 c1                	add    %eax,%ecx
c0033d28:	e9 ac f9 ff ff       	jmp    c00336d9 <_svfprintf_r+0x1789>
c0033d2d:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033d33:	31 c0                	xor    %eax,%eax
c0033d35:	c7 85 24 ff ff ff 67 	movl   $0x67,-0xdc(%ebp)
c0033d3c:	00 00 00 
c0033d3f:	83 c2 01             	add    $0x1,%edx
c0033d42:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033d48:	0f 49 c2             	cmovns %edx,%eax
c0033d4b:	e9 16 fa ff ff       	jmp    c0033766 <_svfprintf_r+0x1816>
c0033d50:	8b 95 20 ff ff ff    	mov    -0xe0(%ebp),%edx
c0033d56:	8b 85 44 ff ff ff    	mov    -0xbc(%ebp),%eax
c0033d5c:	8d 44 10 01          	lea    0x1(%eax,%edx,1),%eax
c0033d60:	89 c2                	mov    %eax,%edx
c0033d62:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)
c0033d68:	31 c0                	xor    %eax,%eax
c0033d6a:	85 d2                	test   %edx,%edx
c0033d6c:	0f 49 c2             	cmovns %edx,%eax
c0033d6f:	e9 f2 f9 ff ff       	jmp    c0033766 <_svfprintf_r+0x1816>
c0033d74:	8b 9d 44 ff ff ff    	mov    -0xbc(%ebp),%ebx
c0033d7a:	85 db                	test   %ebx,%ebx
c0033d7c:	75 2f                	jne    c0033dad <_svfprintf_r+0x1e5d>
c0033d7e:	f6 85 4c ff ff ff 01 	testb  $0x1,-0xb4(%ebp)
c0033d85:	75 26                	jne    c0033dad <_svfprintf_r+0x1e5d>
c0033d87:	b8 01 00 00 00       	mov    $0x1,%eax
c0033d8c:	c7 85 38 ff ff ff 01 	movl   $0x1,-0xc8(%ebp)
c0033d93:	00 00 00 
c0033d96:	e9 cb f9 ff ff       	jmp    c0033766 <_svfprintf_r+0x1816>
c0033d9b:	90                   	nop
c0033d9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033da0:	b2 02                	mov    $0x2,%dl
c0033da2:	2b 95 20 ff ff ff    	sub    -0xe0(%ebp),%edx
c0033da8:	e9 99 fe ff ff       	jmp    c0033c46 <_svfprintf_r+0x1cf6>
c0033dad:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0033db3:	31 c0                	xor    %eax,%eax
c0033db5:	83 c2 02             	add    $0x2,%edx
c0033db8:	89 95 38 ff ff ff    	mov    %edx,-0xc8(%ebp)
c0033dbe:	0f 49 c2             	cmovns %edx,%eax
c0033dc1:	e9 a0 f9 ff ff       	jmp    c0033766 <_svfprintf_r+0x1816>
c0033dc6:	f7 d9                	neg    %ecx
c0033dc8:	c6 85 66 ff ff ff 2d 	movb   $0x2d,-0x9a(%ebp)
c0033dcf:	e9 cd fd ff ff       	jmp    c0033ba1 <_svfprintf_r+0x1c51>
c0033dd4:	8b 55 14             	mov    0x14(%ebp),%edx
c0033dd7:	8b 45 14             	mov    0x14(%ebp),%eax
c0033dda:	8b 8d 48 ff ff ff    	mov    -0xb8(%ebp),%ecx
c0033de0:	8b 12                	mov    (%edx),%edx
c0033de2:	83 c0 04             	add    $0x4,%eax
c0033de5:	89 45 14             	mov    %eax,0x14(%ebp)
c0033de8:	85 d2                	test   %edx,%edx
c0033dea:	89 95 44 ff ff ff    	mov    %edx,-0xbc(%ebp)
c0033df0:	0f 89 a9 e2 ff ff    	jns    c003209f <_svfprintf_r+0x14f>
c0033df6:	c7 85 44 ff ff ff ff 	movl   $0xffffffff,-0xbc(%ebp)
c0033dfd:	ff ff ff 
c0033e00:	89 c8                	mov    %ecx,%eax
c0033e02:	e9 76 e2 ff ff       	jmp    c003207d <_svfprintf_r+0x12d>
c0033e07:	90                   	nop
c0033e08:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
c0033e0e:	83 e0 01             	and    $0x1,%eax
c0033e11:	0f 85 d0 fd ff ff    	jne    c0033be7 <_svfprintf_r+0x1c97>
c0033e17:	85 d2                	test   %edx,%edx
c0033e19:	0f 49 c2             	cmovns %edx,%eax
c0033e1c:	c7 85 20 ff ff ff 00 	movl   $0x0,-0xe0(%ebp)
c0033e23:	00 00 00 
c0033e26:	e9 3b f9 ff ff       	jmp    c0033766 <_svfprintf_r+0x1816>
c0033e2b:	8b 45 08             	mov    0x8(%ebp),%eax
c0033e2e:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0033e34:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0033e39:	e9 f5 e2 ff ff       	jmp    c0032133 <_svfprintf_r+0x1e3>
c0033e3e:	8d 85 67 ff ff ff    	lea    -0x99(%ebp),%eax
c0033e44:	e9 77 fd ff ff       	jmp    c0033bc0 <_svfprintf_r+0x1c70>
c0033e49:	66 90                	xchg   %ax,%ax
c0033e4b:	66 90                	xchg   %ax,%ax
c0033e4d:	66 90                	xchg   %ax,%ax
c0033e4f:	90                   	nop

c0033e50 <quorem>:
c0033e50:	55                   	push   %ebp
c0033e51:	89 c1                	mov    %eax,%ecx
c0033e53:	89 e5                	mov    %esp,%ebp
c0033e55:	57                   	push   %edi
c0033e56:	89 d7                	mov    %edx,%edi
c0033e58:	56                   	push   %esi
c0033e59:	53                   	push   %ebx
c0033e5a:	83 ec 3c             	sub    $0x3c,%esp
c0033e5d:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0033e60:	8b 42 10             	mov    0x10(%edx),%eax
c0033e63:	3b 41 10             	cmp    0x10(%ecx),%eax
c0033e66:	89 55 c8             	mov    %edx,-0x38(%ebp)
c0033e69:	89 ca                	mov    %ecx,%edx
c0033e6b:	0f 8f 9f 01 00 00    	jg     c0034010 <quorem+0x1c0>
c0033e71:	83 e8 01             	sub    $0x1,%eax
c0033e74:	83 c7 14             	add    $0x14,%edi
c0033e77:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0033e7a:	c1 e0 02             	shl    $0x2,%eax
c0033e7d:	83 c2 14             	add    $0x14,%edx
c0033e80:	8d 1c 07             	lea    (%edi,%eax,1),%ebx
c0033e83:	01 d0                	add    %edx,%eax
c0033e85:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0033e88:	8b 13                	mov    (%ebx),%edx
c0033e8a:	89 45 c4             	mov    %eax,-0x3c(%ebp)
c0033e8d:	8b 00                	mov    (%eax),%eax
c0033e8f:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
c0033e92:	8d 4a 01             	lea    0x1(%edx),%ecx
c0033e95:	31 d2                	xor    %edx,%edx
c0033e97:	f7 f1                	div    %ecx
c0033e99:	85 c0                	test   %eax,%eax
c0033e9b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0033e9e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033ea1:	0f 84 b5 00 00 00    	je     c0033f5c <quorem+0x10c>
c0033ea7:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033eaa:	31 f6                	xor    %esi,%esi
c0033eac:	89 fa                	mov    %edi,%edx
c0033eae:	89 7d c0             	mov    %edi,-0x40(%ebp)
c0033eb1:	89 f7                	mov    %esi,%edi
c0033eb3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
c0033eba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0033ec0:	83 c2 04             	add    $0x4,%edx
c0033ec3:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033ec6:	83 c0 04             	add    $0x4,%eax
c0033ec9:	0f b7 ce             	movzwl %si,%ecx
c0033ecc:	0f af 4d e0          	imul   -0x20(%ebp),%ecx
c0033ed0:	03 4d dc             	add    -0x24(%ebp),%ecx
c0033ed3:	c1 ee 10             	shr    $0x10,%esi
c0033ed6:	0f af 75 e0          	imul   -0x20(%ebp),%esi
c0033eda:	89 cb                	mov    %ecx,%ebx
c0033edc:	0f b7 c9             	movzwl %cx,%ecx
c0033edf:	c1 eb 10             	shr    $0x10,%ebx
c0033ee2:	29 cf                	sub    %ecx,%edi
c0033ee4:	01 f3                	add    %esi,%ebx
c0033ee6:	89 de                	mov    %ebx,%esi
c0033ee8:	0f b7 db             	movzwl %bx,%ebx
c0033eeb:	c1 ee 10             	shr    $0x10,%esi
c0033eee:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0033ef1:	8b 70 fc             	mov    -0x4(%eax),%esi
c0033ef4:	0f b7 ce             	movzwl %si,%ecx
c0033ef7:	01 f9                	add    %edi,%ecx
c0033ef9:	c1 ee 10             	shr    $0x10,%esi
c0033efc:	29 de                	sub    %ebx,%esi
c0033efe:	89 cb                	mov    %ecx,%ebx
c0033f00:	c1 fb 10             	sar    $0x10,%ebx
c0033f03:	0f b7 c9             	movzwl %cx,%ecx
c0033f06:	01 de                	add    %ebx,%esi
c0033f08:	89 f7                	mov    %esi,%edi
c0033f0a:	c1 e6 10             	shl    $0x10,%esi
c0033f0d:	09 ce                	or     %ecx,%esi
c0033f0f:	c1 ff 10             	sar    $0x10,%edi
c0033f12:	39 55 e4             	cmp    %edx,-0x1c(%ebp)
c0033f15:	89 70 fc             	mov    %esi,-0x4(%eax)
c0033f18:	73 a6                	jae    c0033ec0 <quorem+0x70>
c0033f1a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0033f1d:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0033f20:	8b 10                	mov    (%eax),%edx
c0033f22:	85 d2                	test   %edx,%edx
c0033f24:	75 36                	jne    c0033f5c <quorem+0x10c>
c0033f26:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033f29:	89 c2                	mov    %eax,%edx
c0033f2b:	83 e8 04             	sub    $0x4,%eax
c0033f2e:	39 c1                	cmp    %eax,%ecx
c0033f30:	73 21                	jae    c0033f53 <quorem+0x103>
c0033f32:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033f35:	85 f6                	test   %esi,%esi
c0033f37:	75 1a                	jne    c0033f53 <quorem+0x103>
c0033f39:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033f3c:	eb 08                	jmp    c0033f46 <quorem+0xf6>
c0033f3e:	66 90                	xchg   %ax,%ax
c0033f40:	8b 18                	mov    (%eax),%ebx
c0033f42:	85 db                	test   %ebx,%ebx
c0033f44:	75 0a                	jne    c0033f50 <quorem+0x100>
c0033f46:	83 e8 04             	sub    $0x4,%eax
c0033f49:	83 ea 01             	sub    $0x1,%edx
c0033f4c:	39 c1                	cmp    %eax,%ecx
c0033f4e:	72 f0                	jb     c0033f40 <quorem+0xf0>
c0033f50:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033f53:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033f56:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0033f59:	89 50 10             	mov    %edx,0x10(%eax)
c0033f5c:	8b 45 c8             	mov    -0x38(%ebp),%eax
c0033f5f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0033f63:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033f66:	89 04 24             	mov    %eax,(%esp)
c0033f69:	e8 a2 23 00 00       	call   c0036310 <__mcmp>
c0033f6e:	85 c0                	test   %eax,%eax
c0033f70:	0f 88 8e 00 00 00    	js     c0034004 <quorem+0x1b4>
c0033f76:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0033f79:	31 f6                	xor    %esi,%esi
c0033f7b:	83 c0 01             	add    $0x1,%eax
c0033f7e:	89 45 cc             	mov    %eax,-0x34(%ebp)
c0033f81:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033f84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0033f88:	83 c7 04             	add    $0x4,%edi
c0033f8b:	8b 4f fc             	mov    -0x4(%edi),%ecx
c0033f8e:	83 c0 04             	add    $0x4,%eax
c0033f91:	8b 58 fc             	mov    -0x4(%eax),%ebx
c0033f94:	0f b7 d1             	movzwl %cx,%edx
c0033f97:	29 d6                	sub    %edx,%esi
c0033f99:	0f b7 d3             	movzwl %bx,%edx
c0033f9c:	01 f2                	add    %esi,%edx
c0033f9e:	c1 e9 10             	shr    $0x10,%ecx
c0033fa1:	c1 eb 10             	shr    $0x10,%ebx
c0033fa4:	29 cb                	sub    %ecx,%ebx
c0033fa6:	89 d1                	mov    %edx,%ecx
c0033fa8:	c1 f9 10             	sar    $0x10,%ecx
c0033fab:	0f b7 d2             	movzwl %dx,%edx
c0033fae:	01 cb                	add    %ecx,%ebx
c0033fb0:	89 de                	mov    %ebx,%esi
c0033fb2:	c1 e3 10             	shl    $0x10,%ebx
c0033fb5:	09 d3                	or     %edx,%ebx
c0033fb7:	c1 fe 10             	sar    $0x10,%esi
c0033fba:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
c0033fbd:	89 58 fc             	mov    %ebx,-0x4(%eax)
c0033fc0:	73 c6                	jae    c0033f88 <quorem+0x138>
c0033fc2:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0033fc5:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0033fc8:	8d 14 b8             	lea    (%eax,%edi,4),%edx
c0033fcb:	8b 02                	mov    (%edx),%eax
c0033fcd:	85 c0                	test   %eax,%eax
c0033fcf:	75 33                	jne    c0034004 <quorem+0x1b4>
c0033fd1:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0033fd4:	8d 42 fc             	lea    -0x4(%edx),%eax
c0033fd7:	39 c1                	cmp    %eax,%ecx
c0033fd9:	73 20                	jae    c0033ffb <quorem+0x1ab>
c0033fdb:	8b 72 fc             	mov    -0x4(%edx),%esi
c0033fde:	85 f6                	test   %esi,%esi
c0033fe0:	75 19                	jne    c0033ffb <quorem+0x1ab>
c0033fe2:	89 fa                	mov    %edi,%edx
c0033fe4:	eb 08                	jmp    c0033fee <quorem+0x19e>
c0033fe6:	66 90                	xchg   %ax,%ax
c0033fe8:	8b 18                	mov    (%eax),%ebx
c0033fea:	85 db                	test   %ebx,%ebx
c0033fec:	75 0a                	jne    c0033ff8 <quorem+0x1a8>
c0033fee:	83 e8 04             	sub    $0x4,%eax
c0033ff1:	83 ea 01             	sub    $0x1,%edx
c0033ff4:	39 c1                	cmp    %eax,%ecx
c0033ff6:	72 f0                	jb     c0033fe8 <quorem+0x198>
c0033ff8:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0033ffb:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0033ffe:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c0034001:	89 78 10             	mov    %edi,0x10(%eax)
c0034004:	8b 45 cc             	mov    -0x34(%ebp),%eax
c0034007:	83 c4 3c             	add    $0x3c,%esp
c003400a:	5b                   	pop    %ebx
c003400b:	5e                   	pop    %esi
c003400c:	5f                   	pop    %edi
c003400d:	5d                   	pop    %ebp
c003400e:	c3                   	ret    
c003400f:	90                   	nop
c0034010:	83 c4 3c             	add    $0x3c,%esp
c0034013:	31 c0                	xor    %eax,%eax
c0034015:	5b                   	pop    %ebx
c0034016:	5e                   	pop    %esi
c0034017:	5f                   	pop    %edi
c0034018:	5d                   	pop    %ebp
c0034019:	c3                   	ret    
c003401a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0034020 <_dtoa_r>:
c0034020:	55                   	push   %ebp
c0034021:	89 e5                	mov    %esp,%ebp
c0034023:	57                   	push   %edi
c0034024:	56                   	push   %esi
c0034025:	53                   	push   %ebx
c0034026:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
c003402c:	8b 75 08             	mov    0x8(%ebp),%esi
c003402f:	dd 45 0c             	fldl   0xc(%ebp)
c0034032:	8b 5d 20             	mov    0x20(%ebp),%ebx
c0034035:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034038:	8b 46 40             	mov    0x40(%esi),%eax
c003403b:	85 c0                	test   %eax,%eax
c003403d:	74 23                	je     c0034062 <_dtoa_r+0x42>
c003403f:	8b 4e 44             	mov    0x44(%esi),%ecx
c0034042:	ba 01 00 00 00       	mov    $0x1,%edx
c0034047:	d3 e2                	shl    %cl,%edx
c0034049:	89 48 04             	mov    %ecx,0x4(%eax)
c003404c:	89 50 08             	mov    %edx,0x8(%eax)
c003404f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034053:	89 34 24             	mov    %esi,(%esp)
c0034056:	e8 95 1b 00 00       	call   c0035bf0 <_Bfree>
c003405b:	c7 46 40 00 00 00 00 	movl   $0x0,0x40(%esi)
c0034062:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c0034065:	85 ff                	test   %edi,%edi
c0034067:	0f 88 3b 02 00 00    	js     c00342a8 <_dtoa_r+0x288>
c003406d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0034073:	89 f8                	mov    %edi,%eax
c0034075:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
c003407a:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
c003407f:	0f 84 e3 01 00 00    	je     c0034268 <_dtoa_r+0x248>
c0034085:	dd 45 c0             	fldl   -0x40(%ebp)
c0034088:	d9 ee                	fldz   
c003408a:	d9 c9                	fxch   %st(1)
c003408c:	db e9                	fucomi %st(1),%st
c003408e:	dd d9                	fstp   %st(1)
c0034090:	7a 36                	jp     c00340c8 <_dtoa_r+0xa8>
c0034092:	75 34                	jne    c00340c8 <_dtoa_r+0xa8>
c0034094:	dd d8                	fstp   %st(0)
c0034096:	8b 4d 24             	mov    0x24(%ebp),%ecx
c0034099:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003409c:	85 c9                	test   %ecx,%ecx
c003409e:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
c00340a4:	0f 84 4e 02 00 00    	je     c00342f8 <_dtoa_r+0x2d8>
c00340aa:	8b 45 24             	mov    0x24(%ebp),%eax
c00340ad:	c7 00 7c 8e 03 c0    	movl   $0xc0038e7c,(%eax)
c00340b3:	b8 7b 8e 03 c0       	mov    $0xc0038e7b,%eax
c00340b8:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00340be:	5b                   	pop    %ebx
c00340bf:	5e                   	pop    %esi
c00340c0:	5f                   	pop    %edi
c00340c1:	5d                   	pop    %ebp
c00340c2:	c3                   	ret    
c00340c3:	90                   	nop
c00340c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00340c8:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00340cb:	89 fb                	mov    %edi,%ebx
c00340cd:	89 44 24 10          	mov    %eax,0x10(%esp)
c00340d1:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c00340d4:	dd 54 24 04          	fstl   0x4(%esp)
c00340d8:	89 44 24 0c          	mov    %eax,0xc(%esp)
c00340dc:	dd 5d b8             	fstpl  -0x48(%ebp)
c00340df:	89 34 24             	mov    %esi,(%esp)
c00340e2:	c1 eb 14             	shr    $0x14,%ebx
c00340e5:	e8 76 25 00 00       	call   c0036660 <__d2b>
c00340ea:	85 db                	test   %ebx,%ebx
c00340ec:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00340ef:	0f 85 db 01 00 00    	jne    c00342d0 <_dtoa_r+0x2b0>
c00340f5:	8b 45 e0             	mov    -0x20(%ebp),%eax
c00340f8:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c00340fb:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00340fe:	01 c3                	add    %eax,%ebx
c0034100:	81 fb ef fb ff ff    	cmp    $0xfffffbef,%ebx
c0034106:	0f 8c ec 07 00 00    	jl     c00348f8 <_dtoa_r+0x8d8>
c003410c:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003410f:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
c0034114:	89 f8                	mov    %edi,%eax
c0034116:	29 d9                	sub    %ebx,%ecx
c0034118:	d3 e0                	shl    %cl,%eax
c003411a:	8d 8b 12 04 00 00    	lea    0x412(%ebx),%ecx
c0034120:	d3 ea                	shr    %cl,%edx
c0034122:	09 d0                	or     %edx,%eax
c0034124:	31 d2                	xor    %edx,%edx
c0034126:	83 eb 01             	sub    $0x1,%ebx
c0034129:	89 55 cc             	mov    %edx,-0x34(%ebp)
c003412c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
c003412f:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0034132:	df 6d c8             	fildll -0x38(%ebp)
c0034135:	dd 5d b8             	fstpl  -0x48(%ebp)
c0034138:	81 6d bc 00 00 f0 01 	subl   $0x1f00000,-0x44(%ebp)
c003413f:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034146:	dd 45 b8             	fldl   -0x48(%ebp)
c0034149:	d8 25 14 90 03 c0    	fsubs  0xc0039014
c003414f:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
c0034152:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034155:	dc 0d 30 90 03 c0    	fmull  0xc0039030
c003415b:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c003415f:	b4 0c                	mov    $0xc,%ah
c0034161:	dc 05 38 90 03 c0    	faddl  0xc0039038
c0034167:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003416b:	db 45 d4             	fildl  -0x2c(%ebp)
c003416e:	dc 0d 40 90 03 c0    	fmull  0xc0039040
c0034174:	de c1                	faddp  %st,%st(1)
c0034176:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034179:	db 55 b8             	fistl  -0x48(%ebp)
c003417c:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003417f:	d9 ee                	fldz   
c0034181:	df e9                	fucomip %st(1),%st
c0034183:	0f 87 27 07 00 00    	ja     c00348b0 <_dtoa_r+0x890>
c0034189:	dd d8                	fstp   %st(0)
c003418b:	83 7d b8 16          	cmpl   $0x16,-0x48(%ebp)
c003418f:	c7 45 9c 01 00 00 00 	movl   $0x1,-0x64(%ebp)
c0034196:	77 24                	ja     c00341bc <_dtoa_r+0x19c>
c0034198:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003419b:	dd 04 c5 00 91 03 c0 	fldl   -0x3ffc6f00(,%eax,8)
c00341a2:	dd 45 c0             	fldl   -0x40(%ebp)
c00341a5:	d9 c9                	fxch   %st(1)
c00341a7:	df e9                	fucomip %st(1),%st
c00341a9:	dd d8                	fstp   %st(0)
c00341ab:	0f 86 5f 07 00 00    	jbe    c0034910 <_dtoa_r+0x8f0>
c00341b1:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00341b5:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c00341bc:	89 d0                	mov    %edx,%eax
c00341be:	29 d8                	sub    %ebx,%eax
c00341c0:	83 e8 01             	sub    $0x1,%eax
c00341c3:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%ebp)
c00341ca:	89 45 ac             	mov    %eax,-0x54(%ebp)
c00341cd:	0f 88 0d 07 00 00    	js     c00348e0 <_dtoa_r+0x8c0>
c00341d3:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00341d6:	85 c0                	test   %eax,%eax
c00341d8:	0f 88 ea 06 00 00    	js     c00348c8 <_dtoa_r+0x8a8>
c00341de:	01 45 ac             	add    %eax,-0x54(%ebp)
c00341e1:	89 45 94             	mov    %eax,-0x6c(%ebp)
c00341e4:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00341eb:	83 7d 14 09          	cmpl   $0x9,0x14(%ebp)
c00341ef:	0f 87 0b 03 00 00    	ja     c0034500 <_dtoa_r+0x4e0>
c00341f5:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c00341f9:	0f 8e 23 10 00 00    	jle    c0035222 <_dtoa_r+0x1202>
c00341ff:	83 6d 14 04          	subl   $0x4,0x14(%ebp)
c0034203:	31 c0                	xor    %eax,%eax
c0034205:	83 7d 14 03          	cmpl   $0x3,0x14(%ebp)
c0034209:	0f 84 43 0d 00 00    	je     c0034f52 <_dtoa_r+0xf32>
c003420f:	0f 8e f3 00 00 00    	jle    c0034308 <_dtoa_r+0x2e8>
c0034215:	83 7d 14 04          	cmpl   $0x4,0x14(%ebp)
c0034219:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034220:	0f 84 f3 00 00 00    	je     c0034319 <_dtoa_r+0x2f9>
c0034226:	83 7d 14 05          	cmpl   $0x5,0x14(%ebp)
c003422a:	0f 85 d7 02 00 00    	jne    c0034507 <_dtoa_r+0x4e7>
c0034230:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034233:	03 5d 18             	add    0x18(%ebp),%ebx
c0034236:	89 5d 90             	mov    %ebx,-0x70(%ebp)
c0034239:	83 c3 01             	add    $0x1,%ebx
c003423c:	83 fb 0e             	cmp    $0xe,%ebx
c003423f:	0f 96 c2             	setbe  %dl
c0034242:	85 db                	test   %ebx,%ebx
c0034244:	89 5d a8             	mov    %ebx,-0x58(%ebp)
c0034247:	0f 8e a7 08 00 00    	jle    c0034af4 <_dtoa_r+0xad4>
c003424d:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034250:	83 fb 0e             	cmp    $0xe,%ebx
c0034253:	89 df                	mov    %ebx,%edi
c0034255:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c0034259:	20 45 b4             	and    %al,-0x4c(%ebp)
c003425c:	e9 d6 00 00 00       	jmp    c0034337 <_dtoa_r+0x317>
c0034261:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034268:	8b 55 c0             	mov    -0x40(%ebp),%edx
c003426b:	8b 45 1c             	mov    0x1c(%ebp),%eax
c003426e:	85 d2                	test   %edx,%edx
c0034270:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
c0034276:	b8 0d 90 03 c0       	mov    $0xc003900d,%eax
c003427b:	74 43                	je     c00342c0 <_dtoa_r+0x2a0>
c003427d:	8b 5d 24             	mov    0x24(%ebp),%ebx
c0034280:	85 db                	test   %ebx,%ebx
c0034282:	0f 84 30 fe ff ff    	je     c00340b8 <_dtoa_r+0x98>
c0034288:	8b 75 24             	mov    0x24(%ebp),%esi
c003428b:	8d 50 08             	lea    0x8(%eax),%edx
c003428e:	80 78 03 00          	cmpb   $0x0,0x3(%eax)
c0034292:	8d 48 03             	lea    0x3(%eax),%ecx
c0034295:	0f 44 d1             	cmove  %ecx,%edx
c0034298:	89 16                	mov    %edx,(%esi)
c003429a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00342a0:	5b                   	pop    %ebx
c00342a1:	5e                   	pop    %esi
c00342a2:	5f                   	pop    %edi
c00342a3:	5d                   	pop    %ebp
c00342a4:	c3                   	ret    
c00342a5:	8d 76 00             	lea    0x0(%esi),%esi
c00342a8:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
c00342ae:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
c00342b4:	89 7d c4             	mov    %edi,-0x3c(%ebp)
c00342b7:	e9 b7 fd ff ff       	jmp    c0034073 <_dtoa_r+0x53>
c00342bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00342c0:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
c00342c6:	ba 04 90 03 c0       	mov    $0xc0039004,%edx
c00342cb:	0f 44 c2             	cmove  %edx,%eax
c00342ce:	eb ad                	jmp    c003427d <_dtoa_r+0x25d>
c00342d0:	8b 45 bc             	mov    -0x44(%ebp),%eax
c00342d3:	81 eb ff 03 00 00    	sub    $0x3ff,%ebx
c00342d9:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00342dc:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c00342e3:	25 ff ff 0f 00       	and    $0xfffff,%eax
c00342e8:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
c00342ed:	89 45 bc             	mov    %eax,-0x44(%ebp)
c00342f0:	e9 51 fe ff ff       	jmp    c0034146 <_dtoa_r+0x126>
c00342f5:	8d 76 00             	lea    0x0(%esi),%esi
c00342f8:	b8 7b 8e 03 c0       	mov    $0xc0038e7b,%eax
c00342fd:	e9 b6 fd ff ff       	jmp    c00340b8 <_dtoa_r+0x98>
c0034302:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034308:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c003430c:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034313:	0f 85 ee 01 00 00    	jne    c0034507 <_dtoa_r+0x4e7>
c0034319:	8b 55 18             	mov    0x18(%ebp),%edx
c003431c:	85 d2                	test   %edx,%edx
c003431e:	0f 8e b6 07 00 00    	jle    c0034ada <_dtoa_r+0xaba>
c0034324:	8b 7d 18             	mov    0x18(%ebp),%edi
c0034327:	83 ff 0e             	cmp    $0xe,%edi
c003432a:	0f 96 45 b4          	setbe  -0x4c(%ebp)
c003432e:	20 45 b4             	and    %al,-0x4c(%ebp)
c0034331:	89 7d 90             	mov    %edi,-0x70(%ebp)
c0034334:	89 7d a8             	mov    %edi,-0x58(%ebp)
c0034337:	83 ff 17             	cmp    $0x17,%edi
c003433a:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034341:	0f 86 e5 0e 00 00    	jbe    c003522c <_dtoa_r+0x120c>
c0034347:	b9 01 00 00 00       	mov    $0x1,%ecx
c003434c:	b8 04 00 00 00       	mov    $0x4,%eax
c0034351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034358:	01 c0                	add    %eax,%eax
c003435a:	89 ca                	mov    %ecx,%edx
c003435c:	8d 58 14             	lea    0x14(%eax),%ebx
c003435f:	39 fb                	cmp    %edi,%ebx
c0034361:	8d 49 01             	lea    0x1(%ecx),%ecx
c0034364:	76 f2                	jbe    c0034358 <_dtoa_r+0x338>
c0034366:	89 56 44             	mov    %edx,0x44(%esi)
c0034369:	89 54 24 04          	mov    %edx,0x4(%esp)
c003436d:	89 34 24             	mov    %esi,(%esp)
c0034370:	e8 db 17 00 00       	call   c0035b50 <_Balloc>
c0034375:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
c0034379:	89 c7                	mov    %eax,%edi
c003437b:	89 46 40             	mov    %eax,0x40(%esi)
c003437e:	0f 84 bb 01 00 00    	je     c003453f <_dtoa_r+0x51f>
c0034384:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034387:	dd 45 c0             	fldl   -0x40(%ebp)
c003438a:	85 db                	test   %ebx,%ebx
c003438c:	0f 8e de 07 00 00    	jle    c0034b70 <_dtoa_r+0xb50>
c0034392:	89 d8                	mov    %ebx,%eax
c0034394:	83 e0 0f             	and    $0xf,%eax
c0034397:	dd 04 c5 00 91 03 c0 	fldl   -0x3ffc6f00(,%eax,8)
c003439e:	89 d8                	mov    %ebx,%eax
c00343a0:	c1 f8 04             	sar    $0x4,%eax
c00343a3:	a8 10                	test   $0x10,%al
c00343a5:	0f 84 cd 05 00 00    	je     c0034978 <_dtoa_r+0x958>
c00343ab:	dd 05 e0 90 03 c0    	fldl   0xc00390e0
c00343b1:	83 e0 0f             	and    $0xf,%eax
c00343b4:	b9 03 00 00 00       	mov    $0x3,%ecx
c00343b9:	d8 fa                	fdivr  %st(2),%st
c00343bb:	85 c0                	test   %eax,%eax
c00343bd:	74 22                	je     c00343e1 <_dtoa_r+0x3c1>
c00343bf:	31 d2                	xor    %edx,%edx
c00343c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00343c8:	a8 01                	test   $0x1,%al
c00343ca:	74 0e                	je     c00343da <_dtoa_r+0x3ba>
c00343cc:	d9 c9                	fxch   %st(1)
c00343ce:	dc 0c d5 c0 90 03 c0 	fmull  -0x3ffc6f40(,%edx,8)
c00343d5:	d9 c9                	fxch   %st(1)
c00343d7:	83 c1 01             	add    $0x1,%ecx
c00343da:	83 c2 01             	add    $0x1,%edx
c00343dd:	d1 f8                	sar    %eax
c00343df:	75 e7                	jne    c00343c8 <_dtoa_r+0x3a8>
c00343e1:	de f1                	fdivp  %st,%st(1)
c00343e3:	8b 45 9c             	mov    -0x64(%ebp),%eax
c00343e6:	85 c0                	test   %eax,%eax
c00343e8:	74 0a                	je     c00343f4 <_dtoa_r+0x3d4>
c00343ea:	d9 e8                	fld1   
c00343ec:	df e9                	fucomip %st(1),%st
c00343ee:	0f 87 92 0b 00 00    	ja     c0034f86 <_dtoa_r+0xf66>
c00343f4:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c00343f7:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00343fa:	db 45 d4             	fildl  -0x2c(%ebp)
c00343fd:	d8 c9                	fmul   %st(1),%st
c00343ff:	d8 05 20 90 03 c0    	fadds  0xc0039020
c0034405:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034408:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003440f:	85 c0                	test   %eax,%eax
c0034411:	0f 84 89 05 00 00    	je     c00349a0 <_dtoa_r+0x980>
c0034417:	8b 45 b8             	mov    -0x48(%ebp),%eax
c003441a:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c003441d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034420:	8b 45 98             	mov    -0x68(%ebp),%eax
c0034423:	85 c0                	test   %eax,%eax
c0034425:	0f 84 b5 07 00 00    	je     c0034be0 <_dtoa_r+0xbc0>
c003442b:	d9 05 28 90 03 c0    	flds   0xc0039028
c0034431:	8d 57 01             	lea    0x1(%edi),%edx
c0034434:	dc 34 cd f8 90 03 c0 	fdivl  -0x3ffc6f08(,%ecx,8)
c003443b:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003443e:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034442:	b4 0c                	mov    $0xc,%ah
c0034444:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034448:	dc 65 c0             	fsubl  -0x40(%ebp)
c003444b:	d9 c9                	fxch   %st(1)
c003444d:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034450:	db 55 d4             	fistl  -0x2c(%ebp)
c0034453:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034456:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034459:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003445c:	83 c0 30             	add    $0x30,%eax
c003445f:	db 45 d4             	fildl  -0x2c(%ebp)
c0034462:	de e9                	fsubrp %st,%st(1)
c0034464:	d9 c9                	fxch   %st(1)
c0034466:	88 07                	mov    %al,(%edi)
c0034468:	db e9                	fucomi %st(1),%st
c003446a:	77 7f                	ja     c00344eb <_dtoa_r+0x4cb>
c003446c:	d9 c1                	fld    %st(1)
c003446e:	d8 2d 18 90 03 c0    	fsubrs 0xc0039018
c0034474:	d9 c9                	fxch   %st(1)
c0034476:	db e9                	fucomi %st(1),%st
c0034478:	dd d9                	fstp   %st(1)
c003447a:	0f 87 33 0c 00 00    	ja     c00350b3 <_dtoa_r+0x1093>
c0034480:	83 f9 01             	cmp    $0x1,%ecx
c0034483:	0f 8e c4 06 00 00    	jle    c0034b4d <_dtoa_r+0xb2d>
c0034489:	01 f9                	add    %edi,%ecx
c003448b:	d9 05 1c 90 03 c0    	flds   0xc003901c
c0034491:	eb 25                	jmp    c00344b8 <_dtoa_r+0x498>
c0034493:	90                   	nop
c0034494:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034498:	d9 c1                	fld    %st(1)
c003449a:	d8 2d 18 90 03 c0    	fsubrs 0xc0039018
c00344a0:	d9 c9                	fxch   %st(1)
c00344a2:	db e9                	fucomi %st(1),%st
c00344a4:	dd d9                	fstp   %st(1)
c00344a6:	0f 87 14 0c 00 00    	ja     c00350c0 <_dtoa_r+0x10a0>
c00344ac:	39 ca                	cmp    %ecx,%edx
c00344ae:	0f 84 a4 06 00 00    	je     c0034b58 <_dtoa_r+0xb38>
c00344b4:	d9 c9                	fxch   %st(1)
c00344b6:	d9 ca                	fxch   %st(2)
c00344b8:	dc c9                	fmul   %st,%st(1)
c00344ba:	83 c2 01             	add    $0x1,%edx
c00344bd:	dc ca                	fmul   %st,%st(2)
c00344bf:	d9 ca                	fxch   %st(2)
c00344c1:	d9 6d d0             	fldcw  -0x30(%ebp)
c00344c4:	db 55 d4             	fistl  -0x2c(%ebp)
c00344c7:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00344ca:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00344cd:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00344d0:	83 c0 30             	add    $0x30,%eax
c00344d3:	db 45 d4             	fildl  -0x2c(%ebp)
c00344d6:	de e9                	fsubrp %st,%st(1)
c00344d8:	d9 c9                	fxch   %st(1)
c00344da:	88 42 ff             	mov    %al,-0x1(%edx)
c00344dd:	db e9                	fucomi %st(1),%st
c00344df:	76 b7                	jbe    c0034498 <_dtoa_r+0x478>
c00344e1:	dd d8                	fstp   %st(0)
c00344e3:	dd d8                	fstp   %st(0)
c00344e5:	dd d8                	fstp   %st(0)
c00344e7:	dd d8                	fstp   %st(0)
c00344e9:	eb 06                	jmp    c00344f1 <_dtoa_r+0x4d1>
c00344eb:	dd d8                	fstp   %st(0)
c00344ed:	dd d8                	fstp   %st(0)
c00344ef:	dd d8                	fstp   %st(0)
c00344f1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00344f4:	89 fb                	mov    %edi,%ebx
c00344f6:	89 d7                	mov    %edx,%edi
c00344f8:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00344fb:	e9 70 03 00 00       	jmp    c0034870 <_dtoa_r+0x850>
c0034500:	c7 45 14 00 00 00 00 	movl   $0x0,0x14(%ebp)
c0034507:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c003450e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0034515:	00 
c0034516:	89 34 24             	mov    %esi,(%esp)
c0034519:	e8 32 16 00 00       	call   c0035b50 <_Balloc>
c003451e:	c7 45 98 01 00 00 00 	movl   $0x1,-0x68(%ebp)
c0034525:	c7 45 a8 ff ff ff ff 	movl   $0xffffffff,-0x58(%ebp)
c003452c:	c7 45 90 ff ff ff ff 	movl   $0xffffffff,-0x70(%ebp)
c0034533:	c7 45 18 00 00 00 00 	movl   $0x0,0x18(%ebp)
c003453a:	89 c7                	mov    %eax,%edi
c003453c:	89 46 40             	mov    %eax,0x40(%esi)
c003453f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0034542:	85 c0                	test   %eax,%eax
c0034544:	0f 88 2e 01 00 00    	js     c0034678 <_dtoa_r+0x658>
c003454a:	83 7d b8 0e          	cmpl   $0xe,-0x48(%ebp)
c003454e:	0f 8f 24 01 00 00    	jg     c0034678 <_dtoa_r+0x658>
c0034554:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034557:	dd 04 c5 00 91 03 c0 	fldl   -0x3ffc6f00(,%eax,8)
c003455e:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034561:	85 c0                	test   %eax,%eax
c0034563:	7f 0e                	jg     c0034573 <_dtoa_r+0x553>
c0034565:	8b 45 18             	mov    0x18(%ebp),%eax
c0034568:	c1 e8 1f             	shr    $0x1f,%eax
c003456b:	84 c0                	test   %al,%al
c003456d:	0f 85 9d 07 00 00    	jne    c0034d10 <_dtoa_r+0xcf0>
c0034573:	dd 45 c0             	fldl   -0x40(%ebp)
c0034576:	d9 c0                	fld    %st(0)
c0034578:	d8 f2                	fdiv   %st(2),%st
c003457a:	d9 7d d2             	fnstcw -0x2e(%ebp)
c003457d:	83 7d a8 01          	cmpl   $0x1,-0x58(%ebp)
c0034581:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034585:	b4 0c                	mov    $0xc,%ah
c0034587:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c003458b:	8d 47 01             	lea    0x1(%edi),%eax
c003458e:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034591:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034594:	db 5d d4             	fistpl -0x2c(%ebp)
c0034597:	d9 6d d2             	fldcw  -0x2e(%ebp)
c003459a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003459d:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c00345a0:	8d 42 30             	lea    0x30(%edx),%eax
c00345a3:	db 45 d4             	fildl  -0x2c(%ebp)
c00345a6:	d8 ca                	fmul   %st(2),%st
c00345a8:	88 07                	mov    %al,(%edi)
c00345aa:	de e9                	fsubrp %st,%st(1)
c00345ac:	74 66                	je     c0034614 <_dtoa_r+0x5f4>
c00345ae:	d8 0d 1c 90 03 c0    	fmuls  0xc003901c
c00345b4:	d9 ee                	fldz   
c00345b6:	d9 c9                	fxch   %st(1)
c00345b8:	db e9                	fucomi %st(1),%st
c00345ba:	dd d9                	fstp   %st(1)
c00345bc:	0f 8b 33 0c 00 00    	jnp    c00351f5 <_dtoa_r+0x11d5>
c00345c2:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c00345c5:	8d 47 02             	lea    0x2(%edi),%eax
c00345c8:	d9 05 1c 90 03 c0    	flds   0xc003901c
c00345ce:	01 fb                	add    %edi,%ebx
c00345d0:	eb 19                	jmp    c00345eb <_dtoa_r+0x5cb>
c00345d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00345d8:	dc c9                	fmul   %st,%st(1)
c00345da:	83 c0 01             	add    $0x1,%eax
c00345dd:	d9 ee                	fldz   
c00345df:	d9 ca                	fxch   %st(2)
c00345e1:	db ea                	fucomi %st(2),%st
c00345e3:	dd da                	fstp   %st(2)
c00345e5:	0f 8b 73 09 00 00    	jnp    c0034f5e <_dtoa_r+0xf3e>
c00345eb:	d9 c1                	fld    %st(1)
c00345ed:	39 d8                	cmp    %ebx,%eax
c00345ef:	d8 f3                	fdiv   %st(3),%st
c00345f1:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00345f4:	d9 6d d0             	fldcw  -0x30(%ebp)
c00345f7:	db 5d d4             	fistpl -0x2c(%ebp)
c00345fa:	d9 6d d2             	fldcw  -0x2e(%ebp)
c00345fd:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0034600:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c0034603:	8d 4a 30             	lea    0x30(%edx),%ecx
c0034606:	db 45 d4             	fildl  -0x2c(%ebp)
c0034609:	d8 cb                	fmul   %st(3),%st
c003460b:	88 48 ff             	mov    %cl,-0x1(%eax)
c003460e:	de ea                	fsubrp %st,%st(2)
c0034610:	75 c6                	jne    c00345d8 <_dtoa_r+0x5b8>
c0034612:	dd d8                	fstp   %st(0)
c0034614:	d8 c0                	fadd   %st(0),%st
c0034616:	db e9                	fucomi %st(1),%st
c0034618:	77 1e                	ja     c0034638 <_dtoa_r+0x618>
c003461a:	d9 c9                	fxch   %st(1)
c003461c:	df e9                	fucomip %st(1),%st
c003461e:	dd d8                	fstp   %st(0)
c0034620:	0f 8a 44 09 00 00    	jp     c0034f6a <_dtoa_r+0xf4a>
c0034626:	0f 85 3e 09 00 00    	jne    c0034f6a <_dtoa_r+0xf4a>
c003462c:	83 e2 01             	and    $0x1,%edx
c003462f:	90                   	nop
c0034630:	0f 84 34 09 00 00    	je     c0034f6a <_dtoa_r+0xf4a>
c0034636:	eb 04                	jmp    c003463c <_dtoa_r+0x61c>
c0034638:	dd d8                	fstp   %st(0)
c003463a:	dd d8                	fstp   %st(0)
c003463c:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c003463f:	89 fb                	mov    %edi,%ebx
c0034641:	0f b6 41 ff          	movzbl -0x1(%ecx),%eax
c0034645:	89 cf                	mov    %ecx,%edi
c0034647:	8b 4d b8             	mov    -0x48(%ebp),%ecx
c003464a:	89 4d b4             	mov    %ecx,-0x4c(%ebp)
c003464d:	eb 0f                	jmp    c003465e <_dtoa_r+0x63e>
c003464f:	90                   	nop
c0034650:	39 d3                	cmp    %edx,%ebx
c0034652:	0f 84 75 09 00 00    	je     c0034fcd <_dtoa_r+0xfad>
c0034658:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c003465c:	89 d7                	mov    %edx,%edi
c003465e:	3c 39                	cmp    $0x39,%al
c0034660:	8d 57 ff             	lea    -0x1(%edi),%edx
c0034663:	74 eb                	je     c0034650 <_dtoa_r+0x630>
c0034665:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034668:	83 c0 01             	add    $0x1,%eax
c003466b:	88 02                	mov    %al,(%edx)
c003466d:	89 4d b8             	mov    %ecx,-0x48(%ebp)
c0034670:	e9 fb 01 00 00       	jmp    c0034870 <_dtoa_r+0x850>
c0034675:	8d 76 00             	lea    0x0(%esi),%esi
c0034678:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c003467b:	85 c9                	test   %ecx,%ecx
c003467d:	0f 85 9d 02 00 00    	jne    c0034920 <_dtoa_r+0x900>
c0034683:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034686:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034689:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034690:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034693:	85 c0                	test   %eax,%eax
c0034695:	7e 14                	jle    c00346ab <_dtoa_r+0x68b>
c0034697:	85 db                	test   %ebx,%ebx
c0034699:	7e 10                	jle    c00346ab <_dtoa_r+0x68b>
c003469b:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003469e:	39 d8                	cmp    %ebx,%eax
c00346a0:	0f 4f c3             	cmovg  %ebx,%eax
c00346a3:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00346a6:	29 c3                	sub    %eax,%ebx
c00346a8:	29 45 ac             	sub    %eax,-0x54(%ebp)
c00346ab:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00346ae:	85 c0                	test   %eax,%eax
c00346b0:	7e 61                	jle    c0034713 <_dtoa_r+0x6f3>
c00346b2:	8b 45 98             	mov    -0x68(%ebp),%eax
c00346b5:	85 c0                	test   %eax,%eax
c00346b7:	0f 84 72 04 00 00    	je     c0034b2f <_dtoa_r+0xb0f>
c00346bd:	85 d2                	test   %edx,%edx
c00346bf:	7e 47                	jle    c0034708 <_dtoa_r+0x6e8>
c00346c1:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00346c4:	89 54 24 08          	mov    %edx,0x8(%esp)
c00346c8:	89 34 24             	mov    %esi,(%esp)
c00346cb:	89 55 88             	mov    %edx,-0x78(%ebp)
c00346ce:	89 44 24 04          	mov    %eax,0x4(%esp)
c00346d2:	e8 f9 19 00 00       	call   c00360d0 <__pow5mult>
c00346d7:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c00346da:	89 34 24             	mov    %esi,(%esp)
c00346dd:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c00346e1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00346e5:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00346e8:	e8 13 18 00 00       	call   c0035f00 <__multiply>
c00346ed:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
c00346f0:	89 34 24             	mov    %esi,(%esp)
c00346f3:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c00346f7:	89 45 8c             	mov    %eax,-0x74(%ebp)
c00346fa:	e8 f1 14 00 00       	call   c0035bf0 <_Bfree>
c00346ff:	8b 45 8c             	mov    -0x74(%ebp),%eax
c0034702:	8b 55 88             	mov    -0x78(%ebp),%edx
c0034705:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034708:	8b 45 b0             	mov    -0x50(%ebp),%eax
c003470b:	29 d0                	sub    %edx,%eax
c003470d:	0f 85 1f 04 00 00    	jne    c0034b32 <_dtoa_r+0xb12>
c0034713:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c003471a:	00 
c003471b:	89 34 24             	mov    %esi,(%esp)
c003471e:	e8 ad 17 00 00       	call   c0035ed0 <__i2b>
c0034723:	8b 4d 94             	mov    -0x6c(%ebp),%ecx
c0034726:	85 c9                	test   %ecx,%ecx
c0034728:	89 45 b0             	mov    %eax,-0x50(%ebp)
c003472b:	7e 13                	jle    c0034740 <_dtoa_r+0x720>
c003472d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034731:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034735:	89 34 24             	mov    %esi,(%esp)
c0034738:	e8 93 19 00 00       	call   c00360d0 <__pow5mult>
c003473d:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034740:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034744:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
c003474b:	0f 8e f7 05 00 00    	jle    c0034d48 <_dtoa_r+0xd28>
c0034751:	8b 45 94             	mov    -0x6c(%ebp),%eax
c0034754:	ba 01 00 00 00       	mov    $0x1,%edx
c0034759:	85 c0                	test   %eax,%eax
c003475b:	0f 85 27 05 00 00    	jne    c0034c88 <_dtoa_r+0xc68>
c0034761:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034764:	01 d0                	add    %edx,%eax
c0034766:	83 e0 1f             	and    $0x1f,%eax
c0034769:	89 c2                	mov    %eax,%edx
c003476b:	0f 84 57 03 00 00    	je     c0034ac8 <_dtoa_r+0xaa8>
c0034771:	b8 20 00 00 00       	mov    $0x20,%eax
c0034776:	29 d0                	sub    %edx,%eax
c0034778:	83 f8 04             	cmp    $0x4,%eax
c003477b:	0f 8e 8c 0a 00 00    	jle    c003520d <_dtoa_r+0x11ed>
c0034781:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034786:	29 d0                	sub    %edx,%eax
c0034788:	01 45 a0             	add    %eax,-0x60(%ebp)
c003478b:	01 c3                	add    %eax,%ebx
c003478d:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034790:	8b 45 a0             	mov    -0x60(%ebp),%eax
c0034793:	85 c0                	test   %eax,%eax
c0034795:	7e 16                	jle    c00347ad <_dtoa_r+0x78d>
c0034797:	89 44 24 08          	mov    %eax,0x8(%esp)
c003479b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003479e:	89 34 24             	mov    %esi,(%esp)
c00347a1:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347a5:	e8 46 1a 00 00       	call   c00361f0 <__lshift>
c00347aa:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c00347ad:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00347b0:	85 c0                	test   %eax,%eax
c00347b2:	7e 16                	jle    c00347ca <_dtoa_r+0x7aa>
c00347b4:	89 44 24 08          	mov    %eax,0x8(%esp)
c00347b8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00347bb:	89 34 24             	mov    %esi,(%esp)
c00347be:	89 44 24 04          	mov    %eax,0x4(%esp)
c00347c2:	e8 29 1a 00 00       	call   c00361f0 <__lshift>
c00347c7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00347ca:	8b 45 9c             	mov    -0x64(%ebp),%eax
c00347cd:	85 c0                	test   %eax,%eax
c00347cf:	0f 85 d3 04 00 00    	jne    c0034ca8 <_dtoa_r+0xc88>
c00347d5:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c00347d9:	0f 8e 11 02 00 00    	jle    c00349f0 <_dtoa_r+0x9d0>
c00347df:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00347e2:	85 c0                	test   %eax,%eax
c00347e4:	0f 8f 06 02 00 00    	jg     c00349f0 <_dtoa_r+0x9d0>
c00347ea:	8b 45 a8             	mov    -0x58(%ebp),%eax
c00347ed:	85 c0                	test   %eax,%eax
c00347ef:	0f 85 e0 01 00 00    	jne    c00349d5 <_dtoa_r+0x9b5>
c00347f5:	8b 45 b0             	mov    -0x50(%ebp),%eax
c00347f8:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00347ff:	00 
c0034800:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
c0034807:	00 
c0034808:	89 34 24             	mov    %esi,(%esp)
c003480b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003480f:	e8 fc 13 00 00       	call   c0035c10 <__multadd>
c0034814:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034817:	89 44 24 04          	mov    %eax,0x4(%esp)
c003481b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c003481e:	89 04 24             	mov    %eax,(%esp)
c0034821:	e8 ea 1a 00 00       	call   c0036310 <__mcmp>
c0034826:	85 c0                	test   %eax,%eax
c0034828:	0f 8e a7 01 00 00    	jle    c00349d5 <_dtoa_r+0x9b5>
c003482e:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0034832:	89 fb                	mov    %edi,%ebx
c0034834:	83 c7 01             	add    $0x1,%edi
c0034837:	c6 47 ff 31          	movb   $0x31,-0x1(%edi)
c003483b:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034842:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034845:	89 34 24             	mov    %esi,(%esp)
c0034848:	89 44 24 04          	mov    %eax,0x4(%esp)
c003484c:	e8 9f 13 00 00       	call   c0035bf0 <_Bfree>
c0034851:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034854:	85 c0                	test   %eax,%eax
c0034856:	74 18                	je     c0034870 <_dtoa_r+0x850>
c0034858:	39 45 c0             	cmp    %eax,-0x40(%ebp)
c003485b:	0f 85 a7 02 00 00    	jne    c0034b08 <_dtoa_r+0xae8>
c0034861:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034864:	89 34 24             	mov    %esi,(%esp)
c0034867:	89 44 24 04          	mov    %eax,0x4(%esp)
c003486b:	e8 80 13 00 00       	call   c0035bf0 <_Bfree>
c0034870:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034873:	89 34 24             	mov    %esi,(%esp)
c0034876:	89 44 24 04          	mov    %eax,0x4(%esp)
c003487a:	e8 71 13 00 00       	call   c0035bf0 <_Bfree>
c003487f:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034882:	8b 75 1c             	mov    0x1c(%ebp),%esi
c0034885:	c6 07 00             	movb   $0x0,(%edi)
c0034888:	83 c0 01             	add    $0x1,%eax
c003488b:	89 06                	mov    %eax,(%esi)
c003488d:	8b 45 24             	mov    0x24(%ebp),%eax
c0034890:	85 c0                	test   %eax,%eax
c0034892:	0f 84 90 02 00 00    	je     c0034b28 <_dtoa_r+0xb08>
c0034898:	8b 45 24             	mov    0x24(%ebp),%eax
c003489b:	89 38                	mov    %edi,(%eax)
c003489d:	81 c4 8c 00 00 00    	add    $0x8c,%esp
c00348a3:	89 d8                	mov    %ebx,%eax
c00348a5:	5b                   	pop    %ebx
c00348a6:	5e                   	pop    %esi
c00348a7:	5f                   	pop    %edi
c00348a8:	5d                   	pop    %ebp
c00348a9:	c3                   	ret    
c00348aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00348b0:	db 45 b8             	fildl  -0x48(%ebp)
c00348b3:	df e9                	fucomip %st(1),%st
c00348b5:	dd d8                	fstp   %st(0)
c00348b7:	7a 06                	jp     c00348bf <_dtoa_r+0x89f>
c00348b9:	0f 84 cc f8 ff ff    	je     c003418b <_dtoa_r+0x16b>
c00348bf:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c00348c3:	e9 c3 f8 ff ff       	jmp    c003418b <_dtoa_r+0x16b>
c00348c8:	8b 45 b8             	mov    -0x48(%ebp),%eax
c00348cb:	29 45 a0             	sub    %eax,-0x60(%ebp)
c00348ce:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%ebp)
c00348d5:	f7 d8                	neg    %eax
c00348d7:	89 45 b0             	mov    %eax,-0x50(%ebp)
c00348da:	e9 0c f9 ff ff       	jmp    c00341eb <_dtoa_r+0x1cb>
c00348df:	90                   	nop
c00348e0:	f7 d8                	neg    %eax
c00348e2:	89 45 a0             	mov    %eax,-0x60(%ebp)
c00348e5:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%ebp)
c00348ec:	e9 e2 f8 ff ff       	jmp    c00341d3 <_dtoa_r+0x1b3>
c00348f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00348f8:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00348fb:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
c0034900:	29 d9                	sub    %ebx,%ecx
c0034902:	d3 e0                	shl    %cl,%eax
c0034904:	e9 1b f8 ff ff       	jmp    c0034124 <_dtoa_r+0x104>
c0034909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034910:	c7 45 9c 00 00 00 00 	movl   $0x0,-0x64(%ebp)
c0034917:	e9 a0 f8 ff ff       	jmp    c00341bc <_dtoa_r+0x19c>
c003491c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034920:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
c0034924:	0f 8e fe 06 00 00    	jle    c0035028 <_dtoa_r+0x1008>
c003492a:	8b 45 a8             	mov    -0x58(%ebp),%eax
c003492d:	83 e8 01             	sub    $0x1,%eax
c0034930:	39 45 b0             	cmp    %eax,-0x50(%ebp)
c0034933:	0f 8c 3b 06 00 00    	jl     c0034f74 <_dtoa_r+0xf54>
c0034939:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003493c:	29 c2                	sub    %eax,%edx
c003493e:	8b 4d a8             	mov    -0x58(%ebp),%ecx
c0034941:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c0034944:	85 c9                	test   %ecx,%ecx
c0034946:	89 c8                	mov    %ecx,%eax
c0034948:	0f 88 83 07 00 00    	js     c00350d1 <_dtoa_r+0x10b1>
c003494e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0034955:	00 
c0034956:	89 34 24             	mov    %esi,(%esp)
c0034959:	89 55 8c             	mov    %edx,-0x74(%ebp)
c003495c:	01 45 a0             	add    %eax,-0x60(%ebp)
c003495f:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034962:	e8 69 15 00 00       	call   c0035ed0 <__i2b>
c0034967:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003496a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c003496d:	e9 1e fd ff ff       	jmp    c0034690 <_dtoa_r+0x670>
c0034972:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034978:	d9 c1                	fld    %st(1)
c003497a:	b9 02 00 00 00       	mov    $0x2,%ecx
c003497f:	e9 37 fa ff ff       	jmp    c00343bb <_dtoa_r+0x39b>
c0034984:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034987:	db 45 d4             	fildl  -0x2c(%ebp)
c003498a:	d8 c9                	fmul   %st(1),%st
c003498c:	d8 05 20 90 03 c0    	fadds  0xc0039020
c0034992:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034995:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c003499c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00349a0:	d8 25 24 90 03 c0    	fsubs  0xc0039024
c00349a6:	dd 45 c0             	fldl   -0x40(%ebp)
c00349a9:	d9 c9                	fxch   %st(1)
c00349ab:	db e9                	fucomi %st(1),%st
c00349ad:	0f 87 0d 02 00 00    	ja     c0034bc0 <_dtoa_r+0xba0>
c00349b3:	d9 c9                	fxch   %st(1)
c00349b5:	d9 e0                	fchs   
c00349b7:	df e9                	fucomip %st(1),%st
c00349b9:	dd d8                	fstp   %st(0)
c00349bb:	0f 86 a7 01 00 00    	jbe    c0034b68 <_dtoa_r+0xb48>
c00349c1:	dd d8                	fstp   %st(0)
c00349c3:	eb 02                	jmp    c00349c7 <_dtoa_r+0x9a7>
c00349c5:	dd d8                	fstp   %st(0)
c00349c7:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c00349ce:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c00349d5:	8b 45 18             	mov    0x18(%ebp),%eax
c00349d8:	89 fb                	mov    %edi,%ebx
c00349da:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c00349e1:	f7 d0                	not    %eax
c00349e3:	89 45 b8             	mov    %eax,-0x48(%ebp)
c00349e6:	e9 57 fe ff ff       	jmp    c0034842 <_dtoa_r+0x822>
c00349eb:	90                   	nop
c00349ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00349f0:	8b 45 98             	mov    -0x68(%ebp),%eax
c00349f3:	85 c0                	test   %eax,%eax
c00349f5:	0f 85 c5 03 00 00    	jne    c0034dc0 <_dtoa_r+0xda0>
c00349fb:	89 75 08             	mov    %esi,0x8(%ebp)
c00349fe:	bb 01 00 00 00       	mov    $0x1,%ebx
c0034a03:	8b 75 a4             	mov    -0x5c(%ebp),%esi
c0034a06:	eb 24                	jmp    c0034a2c <_dtoa_r+0xa0c>
c0034a08:	8b 45 08             	mov    0x8(%ebp),%eax
c0034a0b:	83 c3 01             	add    $0x1,%ebx
c0034a0e:	89 74 24 04          	mov    %esi,0x4(%esp)
c0034a12:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034a19:	00 
c0034a1a:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034a21:	00 
c0034a22:	89 04 24             	mov    %eax,(%esp)
c0034a25:	e8 e6 11 00 00       	call   c0035c10 <__multadd>
c0034a2a:	89 c6                	mov    %eax,%esi
c0034a2c:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034a2f:	89 f0                	mov    %esi,%eax
c0034a31:	e8 1a f4 ff ff       	call   c0033e50 <quorem>
c0034a36:	83 c0 30             	add    $0x30,%eax
c0034a39:	3b 5d a8             	cmp    -0x58(%ebp),%ebx
c0034a3c:	88 44 1f ff          	mov    %al,-0x1(%edi,%ebx,1)
c0034a40:	7c c6                	jl     c0034a08 <_dtoa_r+0x9e8>
c0034a42:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0034a45:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034a48:	ba 01 00 00 00       	mov    $0x1,%edx
c0034a4d:	89 75 a4             	mov    %esi,-0x5c(%ebp)
c0034a50:	8b 75 08             	mov    0x8(%ebp),%esi
c0034a53:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%ebp)
c0034a5a:	85 c0                	test   %eax,%eax
c0034a5c:	0f 4f d0             	cmovg  %eax,%edx
c0034a5f:	01 fa                	add    %edi,%edx
c0034a61:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034a64:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0034a6b:	00 
c0034a6c:	89 34 24             	mov    %esi,(%esp)
c0034a6f:	89 55 ac             	mov    %edx,-0x54(%ebp)
c0034a72:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034a76:	e8 75 17 00 00       	call   c00361f0 <__lshift>
c0034a7b:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0034a7e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0034a82:	89 04 24             	mov    %eax,(%esp)
c0034a85:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034a88:	e8 83 18 00 00       	call   c0036310 <__mcmp>
c0034a8d:	8b 55 ac             	mov    -0x54(%ebp),%edx
c0034a90:	83 f8 00             	cmp    $0x0,%eax
c0034a93:	0f 8e 41 06 00 00    	jle    c00350da <_dtoa_r+0x10ba>
c0034a99:	0f b6 4a ff          	movzbl -0x1(%edx),%ecx
c0034a9d:	eb 0f                	jmp    c0034aae <_dtoa_r+0xa8e>
c0034a9f:	90                   	nop
c0034aa0:	39 c7                	cmp    %eax,%edi
c0034aa2:	0f 84 70 05 00 00    	je     c0035018 <_dtoa_r+0xff8>
c0034aa8:	0f b6 48 ff          	movzbl -0x1(%eax),%ecx
c0034aac:	89 c2                	mov    %eax,%edx
c0034aae:	80 f9 39             	cmp    $0x39,%cl
c0034ab1:	8d 42 ff             	lea    -0x1(%edx),%eax
c0034ab4:	74 ea                	je     c0034aa0 <_dtoa_r+0xa80>
c0034ab6:	83 c1 01             	add    $0x1,%ecx
c0034ab9:	89 fb                	mov    %edi,%ebx
c0034abb:	88 08                	mov    %cl,(%eax)
c0034abd:	89 d7                	mov    %edx,%edi
c0034abf:	e9 7e fd ff ff       	jmp    c0034842 <_dtoa_r+0x822>
c0034ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ac8:	b8 1c 00 00 00       	mov    $0x1c,%eax
c0034acd:	01 45 a0             	add    %eax,-0x60(%ebp)
c0034ad0:	01 c3                	add    %eax,%ebx
c0034ad2:	01 45 ac             	add    %eax,-0x54(%ebp)
c0034ad5:	e9 b6 fc ff ff       	jmp    c0034790 <_dtoa_r+0x770>
c0034ada:	ba 01 00 00 00       	mov    $0x1,%edx
c0034adf:	c7 45 90 01 00 00 00 	movl   $0x1,-0x70(%ebp)
c0034ae6:	c7 45 a8 01 00 00 00 	movl   $0x1,-0x58(%ebp)
c0034aed:	c7 45 18 01 00 00 00 	movl   $0x1,0x18(%ebp)
c0034af4:	21 c2                	and    %eax,%edx
c0034af6:	88 55 b4             	mov    %dl,-0x4c(%ebp)
c0034af9:	31 d2                	xor    %edx,%edx
c0034afb:	c7 46 44 00 00 00 00 	movl   $0x0,0x44(%esi)
c0034b02:	e9 62 f8 ff ff       	jmp    c0034369 <_dtoa_r+0x349>
c0034b07:	90                   	nop
c0034b08:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034b0b:	85 d2                	test   %edx,%edx
c0034b0d:	0f 84 4e fd ff ff    	je     c0034861 <_dtoa_r+0x841>
c0034b13:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034b16:	89 34 24             	mov    %esi,(%esp)
c0034b19:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b1d:	e8 ce 10 00 00       	call   c0035bf0 <_Bfree>
c0034b22:	e9 3a fd ff ff       	jmp    c0034861 <_dtoa_r+0x841>
c0034b27:	90                   	nop
c0034b28:	89 d8                	mov    %ebx,%eax
c0034b2a:	e9 89 f5 ff ff       	jmp    c00340b8 <_dtoa_r+0x98>
c0034b2f:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034b32:	89 44 24 08          	mov    %eax,0x8(%esp)
c0034b36:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034b39:	89 34 24             	mov    %esi,(%esp)
c0034b3c:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034b40:	e8 8b 15 00 00       	call   c00360d0 <__pow5mult>
c0034b45:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034b48:	e9 c6 fb ff ff       	jmp    c0034713 <_dtoa_r+0x6f3>
c0034b4d:	dd d8                	fstp   %st(0)
c0034b4f:	dd d8                	fstp   %st(0)
c0034b51:	eb 15                	jmp    c0034b68 <_dtoa_r+0xb48>
c0034b53:	90                   	nop
c0034b54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034b58:	dd d8                	fstp   %st(0)
c0034b5a:	dd d8                	fstp   %st(0)
c0034b5c:	dd d8                	fstp   %st(0)
c0034b5e:	eb 08                	jmp    c0034b68 <_dtoa_r+0xb48>
c0034b60:	dd d8                	fstp   %st(0)
c0034b62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034b68:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034b6b:	e9 cf f9 ff ff       	jmp    c003453f <_dtoa_r+0x51f>
c0034b70:	8b 45 b8             	mov    -0x48(%ebp),%eax
c0034b73:	f7 d8                	neg    %eax
c0034b75:	0f 84 6a 04 00 00    	je     c0034fe5 <_dtoa_r+0xfc5>
c0034b7b:	89 c2                	mov    %eax,%edx
c0034b7d:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034b82:	83 e2 0f             	and    $0xf,%edx
c0034b85:	c1 f8 04             	sar    $0x4,%eax
c0034b88:	dd 04 d5 00 91 03 c0 	fldl   -0x3ffc6f00(,%edx,8)
c0034b8f:	85 c0                	test   %eax,%eax
c0034b91:	d8 c9                	fmul   %st(1),%st
c0034b93:	0f 84 4a f8 ff ff    	je     c00343e3 <_dtoa_r+0x3c3>
c0034b99:	31 d2                	xor    %edx,%edx
c0034b9b:	90                   	nop
c0034b9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034ba0:	a8 01                	test   $0x1,%al
c0034ba2:	74 0a                	je     c0034bae <_dtoa_r+0xb8e>
c0034ba4:	dc 0c d5 c0 90 03 c0 	fmull  -0x3ffc6f40(,%edx,8)
c0034bab:	83 c1 01             	add    $0x1,%ecx
c0034bae:	83 c2 01             	add    $0x1,%edx
c0034bb1:	d1 f8                	sar    %eax
c0034bb3:	75 eb                	jne    c0034ba0 <_dtoa_r+0xb80>
c0034bb5:	e9 29 f8 ff ff       	jmp    c00343e3 <_dtoa_r+0x3c3>
c0034bba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0034bc0:	dd d8                	fstp   %st(0)
c0034bc2:	dd d8                	fstp   %st(0)
c0034bc4:	dd d8                	fstp   %st(0)
c0034bc6:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034bcd:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034bd4:	e9 55 fc ff ff       	jmp    c003482e <_dtoa_r+0x80e>
c0034bd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034be0:	d9 7d d2             	fnstcw -0x2e(%ebp)
c0034be3:	8d 41 ff             	lea    -0x1(%ecx),%eax
c0034be6:	dd 45 c0             	fldl   -0x40(%ebp)
c0034be9:	dc 0c c5 00 91 03 c0 	fmull  -0x3ffc6f00(,%eax,8)
c0034bf0:	d9 c9                	fxch   %st(1)
c0034bf2:	89 45 88             	mov    %eax,-0x78(%ebp)
c0034bf5:	0f b7 45 d2          	movzwl -0x2e(%ebp),%eax
c0034bf9:	8d 57 01             	lea    0x1(%edi),%edx
c0034bfc:	8d 1c 0f             	lea    (%edi,%ecx,1),%ebx
c0034bff:	b4 0c                	mov    $0xc,%ah
c0034c01:	66 89 45 d0          	mov    %ax,-0x30(%ebp)
c0034c05:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c08:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c0b:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c0e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0034c11:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0034c14:	83 c0 30             	add    $0x30,%eax
c0034c17:	83 f9 01             	cmp    $0x1,%ecx
c0034c1a:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c1d:	de e9                	fsubrp %st,%st(1)
c0034c1f:	88 07                	mov    %al,(%edi)
c0034c21:	89 d0                	mov    %edx,%eax
c0034c23:	74 37                	je     c0034c5c <_dtoa_r+0xc3c>
c0034c25:	d9 05 1c 90 03 c0    	flds   0xc003901c
c0034c2b:	eb 05                	jmp    c0034c32 <_dtoa_r+0xc12>
c0034c2d:	8d 76 00             	lea    0x0(%esi),%esi
c0034c30:	d9 c9                	fxch   %st(1)
c0034c32:	dc c9                	fmul   %st,%st(1)
c0034c34:	d9 c9                	fxch   %st(1)
c0034c36:	83 c0 01             	add    $0x1,%eax
c0034c39:	d9 6d d0             	fldcw  -0x30(%ebp)
c0034c3c:	db 55 d4             	fistl  -0x2c(%ebp)
c0034c3f:	d9 6d d2             	fldcw  -0x2e(%ebp)
c0034c42:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
c0034c45:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034c48:	83 c1 30             	add    $0x30,%ecx
c0034c4b:	39 d8                	cmp    %ebx,%eax
c0034c4d:	db 45 d4             	fildl  -0x2c(%ebp)
c0034c50:	de e9                	fsubrp %st,%st(1)
c0034c52:	88 48 ff             	mov    %cl,-0x1(%eax)
c0034c55:	75 d9                	jne    c0034c30 <_dtoa_r+0xc10>
c0034c57:	dd d9                	fstp   %st(1)
c0034c59:	03 55 88             	add    -0x78(%ebp),%edx
c0034c5c:	d9 05 28 90 03 c0    	flds   0xc0039028
c0034c62:	d9 c2                	fld    %st(2)
c0034c64:	d8 c1                	fadd   %st(1),%st
c0034c66:	d9 ca                	fxch   %st(2)
c0034c68:	db ea                	fucomi %st(2),%st
c0034c6a:	dd da                	fstp   %st(2)
c0034c6c:	0f 86 7f 03 00 00    	jbe    c0034ff1 <_dtoa_r+0xfd1>
c0034c72:	dd d8                	fstp   %st(0)
c0034c74:	dd d8                	fstp   %st(0)
c0034c76:	dd d8                	fstp   %st(0)
c0034c78:	dd d8                	fstp   %st(0)
c0034c7a:	89 fb                	mov    %edi,%ebx
c0034c7c:	0f b6 42 ff          	movzbl -0x1(%edx),%eax
c0034c80:	89 d7                	mov    %edx,%edi
c0034c82:	e9 d7 f9 ff ff       	jmp    c003465e <_dtoa_r+0x63e>
c0034c87:	90                   	nop
c0034c88:	8b 4d b0             	mov    -0x50(%ebp),%ecx
c0034c8b:	8b 41 10             	mov    0x10(%ecx),%eax
c0034c8e:	8b 44 81 10          	mov    0x10(%ecx,%eax,4),%eax
c0034c92:	89 04 24             	mov    %eax,(%esp)
c0034c95:	e8 56 11 00 00       	call   c0035df0 <__hi0bits>
c0034c9a:	ba 20 00 00 00       	mov    $0x20,%edx
c0034c9f:	29 c2                	sub    %eax,%edx
c0034ca1:	e9 bb fa ff ff       	jmp    c0034761 <_dtoa_r+0x741>
c0034ca6:	66 90                	xchg   %ax,%ax
c0034ca8:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034cab:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034caf:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034cb2:	89 04 24             	mov    %eax,(%esp)
c0034cb5:	e8 56 16 00 00       	call   c0036310 <__mcmp>
c0034cba:	85 c0                	test   %eax,%eax
c0034cbc:	0f 89 13 fb ff ff    	jns    c00347d5 <_dtoa_r+0x7b5>
c0034cc2:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0034cc5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034ccc:	00 
c0034ccd:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034cd4:	00 
c0034cd5:	89 34 24             	mov    %esi,(%esp)
c0034cd8:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034cdc:	83 6d b8 01          	subl   $0x1,-0x48(%ebp)
c0034ce0:	e8 2b 0f 00 00       	call   c0035c10 <__multadd>
c0034ce5:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0034ce8:	85 c9                	test   %ecx,%ecx
c0034cea:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0034ced:	0f 85 8d 00 00 00    	jne    c0034d80 <_dtoa_r+0xd60>
c0034cf3:	83 7d 90 00          	cmpl   $0x0,-0x70(%ebp)
c0034cf7:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034cfa:	7f 0a                	jg     c0034d06 <_dtoa_r+0xce6>
c0034cfc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034d00:	0f 8f ff 04 00 00    	jg     c0035205 <_dtoa_r+0x11e5>
c0034d06:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034d09:	e9 ed fc ff ff       	jmp    c00349fb <_dtoa_r+0x9db>
c0034d0e:	66 90                	xchg   %ax,%ax
c0034d10:	8b 5d a8             	mov    -0x58(%ebp),%ebx
c0034d13:	85 db                	test   %ebx,%ebx
c0034d15:	0f 85 aa fc ff ff    	jne    c00349c5 <_dtoa_r+0x9a5>
c0034d1b:	d8 0d 24 90 03 c0    	fmuls  0xc0039024
c0034d21:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%ebp)
c0034d28:	c7 45 b4 00 00 00 00 	movl   $0x0,-0x4c(%ebp)
c0034d2f:	dd 45 c0             	fldl   -0x40(%ebp)
c0034d32:	d9 c9                	fxch   %st(1)
c0034d34:	df e9                	fucomip %st(1),%st
c0034d36:	dd d8                	fstp   %st(0)
c0034d38:	0f 83 97 fc ff ff    	jae    c00349d5 <_dtoa_r+0x9b5>
c0034d3e:	e9 eb fa ff ff       	jmp    c003482e <_dtoa_r+0x80e>
c0034d43:	90                   	nop
c0034d44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0034d48:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034d4b:	85 c0                	test   %eax,%eax
c0034d4d:	0f 85 fe f9 ff ff    	jne    c0034751 <_dtoa_r+0x731>
c0034d53:	8b 45 c4             	mov    -0x3c(%ebp),%eax
c0034d56:	a9 ff ff 0f 00       	test   $0xfffff,%eax
c0034d5b:	0f 85 f0 f9 ff ff    	jne    c0034751 <_dtoa_r+0x731>
c0034d61:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
c0034d66:	0f 84 e5 f9 ff ff    	je     c0034751 <_dtoa_r+0x731>
c0034d6c:	83 45 a0 01          	addl   $0x1,-0x60(%ebp)
c0034d70:	83 45 ac 01          	addl   $0x1,-0x54(%ebp)
c0034d74:	c7 45 8c 01 00 00 00 	movl   $0x1,-0x74(%ebp)
c0034d7b:	e9 d1 f9 ff ff       	jmp    c0034751 <_dtoa_r+0x731>
c0034d80:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034d83:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034d8a:	00 
c0034d8b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034d92:	00 
c0034d93:	89 34 24             	mov    %esi,(%esp)
c0034d96:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034d9a:	e8 71 0e 00 00       	call   c0035c10 <__multadd>
c0034d9f:	8b 55 90             	mov    -0x70(%ebp),%edx
c0034da2:	85 d2                	test   %edx,%edx
c0034da4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034da7:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034daa:	7f 0a                	jg     c0034db6 <_dtoa_r+0xd96>
c0034dac:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
c0034db0:	0f 8f 4f 04 00 00    	jg     c0035205 <_dtoa_r+0x11e5>
c0034db6:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034db9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0034dc0:	85 db                	test   %ebx,%ebx
c0034dc2:	7e 16                	jle    c0034dda <_dtoa_r+0xdba>
c0034dc4:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034dc7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0034dcb:	89 34 24             	mov    %esi,(%esp)
c0034dce:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034dd2:	e8 19 14 00 00       	call   c00361f0 <__lshift>
c0034dd7:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034dda:	8b 5d 8c             	mov    -0x74(%ebp),%ebx
c0034ddd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034de0:	85 db                	test   %ebx,%ebx
c0034de2:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034de5:	0f 85 11 03 00 00    	jne    c00350fc <_dtoa_r+0x10dc>
c0034deb:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034dee:	8d 5f 01             	lea    0x1(%edi),%ebx
c0034df1:	89 7d 8c             	mov    %edi,-0x74(%ebp)
c0034df4:	01 f8                	add    %edi,%eax
c0034df6:	8b 7d a4             	mov    -0x5c(%ebp),%edi
c0034df9:	89 45 90             	mov    %eax,-0x70(%ebp)
c0034dfc:	8b 45 c0             	mov    -0x40(%ebp),%eax
c0034dff:	83 e0 01             	and    $0x1,%eax
c0034e02:	89 45 9c             	mov    %eax,-0x64(%ebp)
c0034e05:	eb 2e                	jmp    c0034e35 <_dtoa_r+0xe15>
c0034e07:	90                   	nop
c0034e08:	e8 03 0e 00 00       	call   c0035c10 <__multadd>
c0034e0d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034e14:	00 
c0034e15:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034e1c:	00 
c0034e1d:	89 34 24             	mov    %esi,(%esp)
c0034e20:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034e23:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034e26:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e2a:	e8 e1 0d 00 00       	call   c0035c10 <__multadd>
c0034e2f:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034e32:	83 c3 01             	add    $0x1,%ebx
c0034e35:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0034e38:	8d 43 ff             	lea    -0x1(%ebx),%eax
c0034e3b:	89 45 98             	mov    %eax,-0x68(%ebp)
c0034e3e:	89 f8                	mov    %edi,%eax
c0034e40:	e8 0b f0 ff ff       	call   c0033e50 <quorem>
c0034e45:	89 3c 24             	mov    %edi,(%esp)
c0034e48:	8d 48 30             	lea    0x30(%eax),%ecx
c0034e4b:	89 4d a0             	mov    %ecx,-0x60(%ebp)
c0034e4e:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c0034e51:	89 45 94             	mov    %eax,-0x6c(%ebp)
c0034e54:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0034e58:	e8 b3 14 00 00       	call   c0036310 <__mcmp>
c0034e5d:	8b 4d ac             	mov    -0x54(%ebp),%ecx
c0034e60:	89 34 24             	mov    %esi,(%esp)
c0034e63:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0034e67:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0034e6a:	8b 45 b0             	mov    -0x50(%ebp),%eax
c0034e6d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e71:	e8 ea 14 00 00       	call   c0036360 <__mdiff>
c0034e76:	8b 48 0c             	mov    0xc(%eax),%ecx
c0034e79:	89 c2                	mov    %eax,%edx
c0034e7b:	85 c9                	test   %ecx,%ecx
c0034e7d:	0f 85 c5 00 00 00    	jne    c0034f48 <_dtoa_r+0xf28>
c0034e83:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034e87:	89 3c 24             	mov    %edi,(%esp)
c0034e8a:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034e8d:	e8 7e 14 00 00       	call   c0036310 <__mcmp>
c0034e92:	8b 55 a8             	mov    -0x58(%ebp),%edx
c0034e95:	89 54 24 04          	mov    %edx,0x4(%esp)
c0034e99:	89 34 24             	mov    %esi,(%esp)
c0034e9c:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0034e9f:	e8 4c 0d 00 00       	call   c0035bf0 <_Bfree>
c0034ea4:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034ea7:	89 c1                	mov    %eax,%ecx
c0034ea9:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034eac:	75 0b                	jne    c0034eb9 <_dtoa_r+0xe99>
c0034eae:	8b 55 9c             	mov    -0x64(%ebp),%edx
c0034eb1:	85 d2                	test   %edx,%edx
c0034eb3:	0f 84 fb 02 00 00    	je     c00351b4 <_dtoa_r+0x1194>
c0034eb9:	8b 55 c0             	mov    -0x40(%ebp),%edx
c0034ebc:	85 d2                	test   %edx,%edx
c0034ebe:	0f 88 7f 01 00 00    	js     c0035043 <_dtoa_r+0x1023>
c0034ec4:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c0034ec7:	0b 4d 14             	or     0x14(%ebp),%ecx
c0034eca:	75 0b                	jne    c0034ed7 <_dtoa_r+0xeb7>
c0034ecc:	8b 4d 9c             	mov    -0x64(%ebp),%ecx
c0034ecf:	85 c9                	test   %ecx,%ecx
c0034ed1:	0f 84 6c 01 00 00    	je     c0035043 <_dtoa_r+0x1023>
c0034ed7:	85 c0                	test   %eax,%eax
c0034ed9:	0f 8f 82 02 00 00    	jg     c0035161 <_dtoa_r+0x1141>
c0034edf:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0034ee3:	89 da                	mov    %ebx,%edx
c0034ee5:	3b 5d 90             	cmp    -0x70(%ebp),%ebx
c0034ee8:	88 43 ff             	mov    %al,-0x1(%ebx)
c0034eeb:	0f 84 8d 02 00 00    	je     c003517e <_dtoa_r+0x115e>
c0034ef1:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0034ef5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034efc:	00 
c0034efd:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f04:	00 
c0034f05:	89 34 24             	mov    %esi,(%esp)
c0034f08:	e8 03 0d 00 00       	call   c0035c10 <__multadd>
c0034f0d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c0034f14:	00 
c0034f15:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0034f1c:	00 
c0034f1d:	89 34 24             	mov    %esi,(%esp)
c0034f20:	89 c7                	mov    %eax,%edi
c0034f22:	8b 45 ac             	mov    -0x54(%ebp),%eax
c0034f25:	39 45 b4             	cmp    %eax,-0x4c(%ebp)
c0034f28:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034f2b:	89 44 24 04          	mov    %eax,0x4(%esp)
c0034f2f:	0f 85 d3 fe ff ff    	jne    c0034e08 <_dtoa_r+0xde8>
c0034f35:	e8 d6 0c 00 00       	call   c0035c10 <__multadd>
c0034f3a:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0034f3d:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0034f40:	e9 ed fe ff ff       	jmp    c0034e32 <_dtoa_r+0xe12>
c0034f45:	8d 76 00             	lea    0x0(%esi),%esi
c0034f48:	b8 01 00 00 00       	mov    $0x1,%eax
c0034f4d:	e9 43 ff ff ff       	jmp    c0034e95 <_dtoa_r+0xe75>
c0034f52:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%ebp)
c0034f59:	e9 d2 f2 ff ff       	jmp    c0034230 <_dtoa_r+0x210>
c0034f5e:	0f 85 87 f6 ff ff    	jne    c00345eb <_dtoa_r+0x5cb>
c0034f64:	dd d8                	fstp   %st(0)
c0034f66:	dd d8                	fstp   %st(0)
c0034f68:	dd d8                	fstp   %st(0)
c0034f6a:	89 fb                	mov    %edi,%ebx
c0034f6c:	8b 7d c0             	mov    -0x40(%ebp),%edi
c0034f6f:	e9 fc f8 ff ff       	jmp    c0034870 <_dtoa_r+0x850>
c0034f74:	89 c2                	mov    %eax,%edx
c0034f76:	2b 55 b0             	sub    -0x50(%ebp),%edx
c0034f79:	89 45 b0             	mov    %eax,-0x50(%ebp)
c0034f7c:	01 55 94             	add    %edx,-0x6c(%ebp)
c0034f7f:	31 d2                	xor    %edx,%edx
c0034f81:	e9 b8 f9 ff ff       	jmp    c003493e <_dtoa_r+0x91e>
c0034f86:	8b 45 a8             	mov    -0x58(%ebp),%eax
c0034f89:	85 c0                	test   %eax,%eax
c0034f8b:	0f 84 f3 f9 ff ff    	je     c0034984 <_dtoa_r+0x964>
c0034f91:	8b 45 90             	mov    -0x70(%ebp),%eax
c0034f94:	85 c0                	test   %eax,%eax
c0034f96:	0f 8e c4 fb ff ff    	jle    c0034b60 <_dtoa_r+0xb40>
c0034f9c:	d8 0d 1c 90 03 c0    	fmuls  0xc003901c
c0034fa2:	83 c1 01             	add    $0x1,%ecx
c0034fa5:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
c0034fa8:	8b 5d b8             	mov    -0x48(%ebp),%ebx
c0034fab:	89 c1                	mov    %eax,%ecx
c0034fad:	83 eb 01             	sub    $0x1,%ebx
c0034fb0:	db 45 d4             	fildl  -0x2c(%ebp)
c0034fb3:	d8 c9                	fmul   %st(1),%st
c0034fb5:	89 5d b4             	mov    %ebx,-0x4c(%ebp)
c0034fb8:	d8 05 20 90 03 c0    	fadds  0xc0039020
c0034fbe:	dd 5d c0             	fstpl  -0x40(%ebp)
c0034fc1:	81 6d c4 00 00 40 03 	subl   $0x3400000,-0x3c(%ebp)
c0034fc8:	e9 53 f4 ff ff       	jmp    c0034420 <_dtoa_r+0x400>
c0034fcd:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0034fd0:	c6 03 30             	movb   $0x30,(%ebx)
c0034fd3:	83 c0 01             	add    $0x1,%eax
c0034fd6:	89 45 b8             	mov    %eax,-0x48(%ebp)
c0034fd9:	b8 31 00 00 00       	mov    $0x31,%eax
c0034fde:	88 02                	mov    %al,(%edx)
c0034fe0:	e9 8b f8 ff ff       	jmp    c0034870 <_dtoa_r+0x850>
c0034fe5:	d9 c0                	fld    %st(0)
c0034fe7:	b9 02 00 00 00       	mov    $0x2,%ecx
c0034fec:	e9 f2 f3 ff ff       	jmp    c00343e3 <_dtoa_r+0x3c3>
c0034ff1:	de e2                	fsubp  %st,%st(2)
c0034ff3:	d9 c9                	fxch   %st(1)
c0034ff5:	df e9                	fucomip %st(1),%st
c0034ff7:	dd d8                	fstp   %st(0)
c0034ff9:	0f 86 69 fb ff ff    	jbe    c0034b68 <_dtoa_r+0xb48>
c0034fff:	dd d8                	fstp   %st(0)
c0035001:	eb 07                	jmp    c003500a <_dtoa_r+0xfea>
c0035003:	90                   	nop
c0035004:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035008:	89 c2                	mov    %eax,%edx
c003500a:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c003500e:	8d 42 ff             	lea    -0x1(%edx),%eax
c0035011:	74 f5                	je     c0035008 <_dtoa_r+0xfe8>
c0035013:	e9 d9 f4 ff ff       	jmp    c00344f1 <_dtoa_r+0x4d1>
c0035018:	c6 07 31             	movb   $0x31,(%edi)
c003501b:	89 fb                	mov    %edi,%ebx
c003501d:	89 d7                	mov    %edx,%edi
c003501f:	83 45 b8 01          	addl   $0x1,-0x48(%ebp)
c0035023:	e9 1a f8 ff ff       	jmp    c0034842 <_dtoa_r+0x822>
c0035028:	8b 55 8c             	mov    -0x74(%ebp),%edx
c003502b:	85 d2                	test   %edx,%edx
c003502d:	0f 84 1b 01 00 00    	je     c003514e <_dtoa_r+0x112e>
c0035033:	05 33 04 00 00       	add    $0x433,%eax
c0035038:	8b 55 b0             	mov    -0x50(%ebp),%edx
c003503b:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003503e:	e9 0b f9 ff ff       	jmp    c003494e <_dtoa_r+0x92e>
c0035043:	85 c0                	test   %eax,%eax
c0035045:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035048:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003504b:	7e 45                	jle    c0035092 <_dtoa_r+0x1072>
c003504d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
c0035050:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035057:	00 
c0035058:	89 34 24             	mov    %esi,(%esp)
c003505b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003505f:	e8 8c 11 00 00       	call   c00361f0 <__lshift>
c0035064:	8b 5d b0             	mov    -0x50(%ebp),%ebx
c0035067:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003506b:	89 04 24             	mov    %eax,(%esp)
c003506e:	89 45 a4             	mov    %eax,-0x5c(%ebp)
c0035071:	e8 9a 12 00 00       	call   c0036310 <__mcmp>
c0035076:	83 f8 00             	cmp    $0x0,%eax
c0035079:	0f 8e 5b 01 00 00    	jle    c00351da <_dtoa_r+0x11ba>
c003507f:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035083:	0f 84 0c 01 00 00    	je     c0035195 <_dtoa_r+0x1175>
c0035089:	8b 45 94             	mov    -0x6c(%ebp),%eax
c003508c:	83 c0 31             	add    $0x31,%eax
c003508f:	89 45 a0             	mov    %eax,-0x60(%ebp)
c0035092:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035095:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035099:	89 cb                	mov    %ecx,%ebx
c003509b:	88 03                	mov    %al,(%ebx)
c003509d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00350a0:	89 fb                	mov    %edi,%ebx
c00350a2:	8d 79 01             	lea    0x1(%ecx),%edi
c00350a5:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00350a8:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00350ab:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00350ae:	e9 8f f7 ff ff       	jmp    c0034842 <_dtoa_r+0x822>
c00350b3:	dd d8                	fstp   %st(0)
c00350b5:	dd d8                	fstp   %st(0)
c00350b7:	dd d8                	fstp   %st(0)
c00350b9:	eb 0d                	jmp    c00350c8 <_dtoa_r+0x10a8>
c00350bb:	90                   	nop
c00350bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00350c0:	dd d8                	fstp   %st(0)
c00350c2:	dd d8                	fstp   %st(0)
c00350c4:	dd d8                	fstp   %st(0)
c00350c6:	dd d8                	fstp   %st(0)
c00350c8:	89 fb                	mov    %edi,%ebx
c00350ca:	89 d7                	mov    %edx,%edi
c00350cc:	e9 8d f5 ff ff       	jmp    c003465e <_dtoa_r+0x63e>
c00350d1:	29 cb                	sub    %ecx,%ebx
c00350d3:	31 c0                	xor    %eax,%eax
c00350d5:	e9 74 f8 ff ff       	jmp    c003494e <_dtoa_r+0x92e>
c00350da:	75 0e                	jne    c00350ea <_dtoa_r+0x10ca>
c00350dc:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00350e0:	74 08                	je     c00350ea <_dtoa_r+0x10ca>
c00350e2:	e9 b2 f9 ff ff       	jmp    c0034a99 <_dtoa_r+0xa79>
c00350e7:	90                   	nop
c00350e8:	89 c2                	mov    %eax,%edx
c00350ea:	80 7a ff 30          	cmpb   $0x30,-0x1(%edx)
c00350ee:	8d 42 ff             	lea    -0x1(%edx),%eax
c00350f1:	74 f5                	je     c00350e8 <_dtoa_r+0x10c8>
c00350f3:	89 fb                	mov    %edi,%ebx
c00350f5:	89 d7                	mov    %edx,%edi
c00350f7:	e9 46 f7 ff ff       	jmp    c0034842 <_dtoa_r+0x822>
c00350fc:	8b 40 04             	mov    0x4(%eax),%eax
c00350ff:	89 34 24             	mov    %esi,(%esp)
c0035102:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035106:	e8 45 0a 00 00       	call   c0035b50 <_Balloc>
c003510b:	8b 4d b4             	mov    -0x4c(%ebp),%ecx
c003510e:	89 c3                	mov    %eax,%ebx
c0035110:	8b 41 10             	mov    0x10(%ecx),%eax
c0035113:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c003511a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003511e:	89 c8                	mov    %ecx,%eax
c0035120:	83 c0 0c             	add    $0xc,%eax
c0035123:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035127:	8d 43 0c             	lea    0xc(%ebx),%eax
c003512a:	89 04 24             	mov    %eax,(%esp)
c003512d:	e8 62 cc ff ff       	call   c0031d94 <memcpy>
c0035132:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
c0035139:	00 
c003513a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c003513e:	89 34 24             	mov    %esi,(%esp)
c0035141:	e8 aa 10 00 00       	call   c00361f0 <__lshift>
c0035146:	89 45 ac             	mov    %eax,-0x54(%ebp)
c0035149:	e9 9d fc ff ff       	jmp    c0034deb <_dtoa_r+0xdcb>
c003514e:	b8 36 00 00 00       	mov    $0x36,%eax
c0035153:	8b 55 b0             	mov    -0x50(%ebp),%edx
c0035156:	2b 45 e0             	sub    -0x20(%ebp),%eax
c0035159:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c003515c:	e9 ed f7 ff ff       	jmp    c003494e <_dtoa_r+0x92e>
c0035161:	83 7d a0 39          	cmpl   $0x39,-0x60(%ebp)
c0035165:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035168:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c003516b:	74 28                	je     c0035195 <_dtoa_r+0x1175>
c003516d:	0f b6 45 a0          	movzbl -0x60(%ebp),%eax
c0035171:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c0035174:	83 c0 01             	add    $0x1,%eax
c0035177:	89 cb                	mov    %ecx,%ebx
c0035179:	e9 1d ff ff ff       	jmp    c003509b <_dtoa_r+0x107b>
c003517e:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c0035181:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c0035184:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c0035187:	89 45 c0             	mov    %eax,-0x40(%ebp)
c003518a:	8b 45 ac             	mov    -0x54(%ebp),%eax
c003518d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c0035190:	e9 cc f8 ff ff       	jmp    c0034a61 <_dtoa_r+0xa41>
c0035195:	8b 45 98             	mov    -0x68(%ebp),%eax
c0035198:	b9 39 00 00 00       	mov    $0x39,%ecx
c003519d:	8d 50 01             	lea    0x1(%eax),%edx
c00351a0:	c6 00 39             	movb   $0x39,(%eax)
c00351a3:	8b 45 b4             	mov    -0x4c(%ebp),%eax
c00351a6:	89 45 c0             	mov    %eax,-0x40(%ebp)
c00351a9:	8b 45 ac             	mov    -0x54(%ebp),%eax
c00351ac:	89 45 b4             	mov    %eax,-0x4c(%ebp)
c00351af:	e9 fa f8 ff ff       	jmp    c0034aae <_dtoa_r+0xa8e>
c00351b4:	8b 5d a0             	mov    -0x60(%ebp),%ebx
c00351b7:	89 7d a4             	mov    %edi,-0x5c(%ebp)
c00351ba:	8b 7d 8c             	mov    -0x74(%ebp),%edi
c00351bd:	83 fb 39             	cmp    $0x39,%ebx
c00351c0:	74 d3                	je     c0035195 <_dtoa_r+0x1175>
c00351c2:	8b 4d c0             	mov    -0x40(%ebp),%ecx
c00351c5:	8b 45 94             	mov    -0x6c(%ebp),%eax
c00351c8:	83 c0 31             	add    $0x31,%eax
c00351cb:	85 c9                	test   %ecx,%ecx
c00351cd:	8b 4d 98             	mov    -0x68(%ebp),%ecx
c00351d0:	0f 4e c3             	cmovle %ebx,%eax
c00351d3:	89 cb                	mov    %ecx,%ebx
c00351d5:	e9 c1 fe ff ff       	jmp    c003509b <_dtoa_r+0x107b>
c00351da:	0f 85 b2 fe ff ff    	jne    c0035092 <_dtoa_r+0x1072>
c00351e0:	f6 45 a0 01          	testb  $0x1,-0x60(%ebp)
c00351e4:	0f 84 a8 fe ff ff    	je     c0035092 <_dtoa_r+0x1072>
c00351ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00351f0:	e9 8a fe ff ff       	jmp    c003507f <_dtoa_r+0x105f>
c00351f5:	0f 85 c7 f3 ff ff    	jne    c00345c2 <_dtoa_r+0x5a2>
c00351fb:	dd d8                	fstp   %st(0)
c00351fd:	dd d8                	fstp   %st(0)
c00351ff:	90                   	nop
c0035200:	e9 65 fd ff ff       	jmp    c0034f6a <_dtoa_r+0xf4a>
c0035205:	89 45 a8             	mov    %eax,-0x58(%ebp)
c0035208:	e9 dd f5 ff ff       	jmp    c00347ea <_dtoa_r+0x7ca>
c003520d:	8d 76 00             	lea    0x0(%esi),%esi
c0035210:	0f 84 7a f5 ff ff    	je     c0034790 <_dtoa_r+0x770>
c0035216:	b8 3c 00 00 00       	mov    $0x3c,%eax
c003521b:	29 d0                	sub    %edx,%eax
c003521d:	e9 ab f8 ff ff       	jmp    c0034acd <_dtoa_r+0xaad>
c0035222:	b8 01 00 00 00       	mov    $0x1,%eax
c0035227:	e9 d9 ef ff ff       	jmp    c0034205 <_dtoa_r+0x1e5>
c003522c:	31 d2                	xor    %edx,%edx
c003522e:	e9 36 f1 ff ff       	jmp    c0034369 <_dtoa_r+0x349>
c0035233:	66 90                	xchg   %ax,%ax
c0035235:	66 90                	xchg   %ax,%ax
c0035237:	66 90                	xchg   %ax,%ax
c0035239:	66 90                	xchg   %ax,%ax
c003523b:	66 90                	xchg   %ax,%ax
c003523d:	66 90                	xchg   %ax,%ax
c003523f:	90                   	nop

c0035240 <_setlocale_r>:
c0035240:	55                   	push   %ebp
c0035241:	89 e5                	mov    %esp,%ebp
c0035243:	53                   	push   %ebx
c0035244:	83 ec 14             	sub    $0x14,%esp
c0035247:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003524a:	85 db                	test   %ebx,%ebx
c003524c:	74 14                	je     c0035262 <_setlocale_r+0x22>
c003524e:	c7 44 24 04 48 90 03 	movl   $0xc0039048,0x4(%esp)
c0035255:	c0 
c0035256:	89 1c 24             	mov    %ebx,(%esp)
c0035259:	e8 82 17 00 00       	call   c00369e0 <strcmp>
c003525e:	85 c0                	test   %eax,%eax
c0035260:	75 0e                	jne    c0035270 <_setlocale_r+0x30>
c0035262:	83 c4 14             	add    $0x14,%esp
c0035265:	b8 40 8e 03 c0       	mov    $0xc0038e40,%eax
c003526a:	5b                   	pop    %ebx
c003526b:	5d                   	pop    %ebp
c003526c:	c3                   	ret    
c003526d:	8d 76 00             	lea    0x0(%esi),%esi
c0035270:	c7 44 24 04 40 8e 03 	movl   $0xc0038e40,0x4(%esp)
c0035277:	c0 
c0035278:	89 1c 24             	mov    %ebx,(%esp)
c003527b:	e8 60 17 00 00       	call   c00369e0 <strcmp>
c0035280:	85 c0                	test   %eax,%eax
c0035282:	74 de                	je     c0035262 <_setlocale_r+0x22>
c0035284:	89 1c 24             	mov    %ebx,(%esp)
c0035287:	c7 44 24 04 7a 8e 03 	movl   $0xc0038e7a,0x4(%esp)
c003528e:	c0 
c003528f:	e8 4c 17 00 00       	call   c00369e0 <strcmp>
c0035294:	89 c2                	mov    %eax,%edx
c0035296:	31 c0                	xor    %eax,%eax
c0035298:	85 d2                	test   %edx,%edx
c003529a:	ba 40 8e 03 c0       	mov    $0xc0038e40,%edx
c003529f:	0f 44 c2             	cmove  %edx,%eax
c00352a2:	83 c4 14             	add    $0x14,%esp
c00352a5:	5b                   	pop    %ebx
c00352a6:	5d                   	pop    %ebp
c00352a7:	c3                   	ret    
c00352a8:	90                   	nop
c00352a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c00352b0 <__locale_charset>:
c00352b0:	55                   	push   %ebp
c00352b1:	b8 c0 c4 03 c0       	mov    $0xc003c4c0,%eax
c00352b6:	89 e5                	mov    %esp,%ebp
c00352b8:	5d                   	pop    %ebp
c00352b9:	c3                   	ret    
c00352ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00352c0 <__locale_mb_cur_max>:
c00352c0:	55                   	push   %ebp
c00352c1:	a1 18 c5 03 c0       	mov    0xc003c518,%eax
c00352c6:	89 e5                	mov    %esp,%ebp
c00352c8:	5d                   	pop    %ebp
c00352c9:	c3                   	ret    
c00352ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00352d0 <__locale_msgcharset>:
c00352d0:	55                   	push   %ebp
c00352d1:	b8 a0 c4 03 c0       	mov    $0xc003c4a0,%eax
c00352d6:	89 e5                	mov    %esp,%ebp
c00352d8:	5d                   	pop    %ebp
c00352d9:	c3                   	ret    
c00352da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c00352e0 <__locale_cjk_lang>:
c00352e0:	55                   	push   %ebp
c00352e1:	31 c0                	xor    %eax,%eax
c00352e3:	89 e5                	mov    %esp,%ebp
c00352e5:	5d                   	pop    %ebp
c00352e6:	c3                   	ret    
c00352e7:	89 f6                	mov    %esi,%esi
c00352e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00352f0 <_localeconv_r>:
c00352f0:	55                   	push   %ebp
c00352f1:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c00352f6:	89 e5                	mov    %esp,%ebp
c00352f8:	5d                   	pop    %ebp
c00352f9:	c3                   	ret    
c00352fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0035300 <setlocale>:
c0035300:	55                   	push   %ebp
c0035301:	89 e5                	mov    %esp,%ebp
c0035303:	83 ec 18             	sub    $0x18,%esp
c0035306:	e8 35 cc ff ff       	call   c0031f40 <__getreent>
c003530b:	8b 55 0c             	mov    0xc(%ebp),%edx
c003530e:	89 54 24 08          	mov    %edx,0x8(%esp)
c0035312:	8b 55 08             	mov    0x8(%ebp),%edx
c0035315:	89 04 24             	mov    %eax,(%esp)
c0035318:	89 54 24 04          	mov    %edx,0x4(%esp)
c003531c:	e8 1f ff ff ff       	call   c0035240 <_setlocale_r>
c0035321:	c9                   	leave  
c0035322:	c3                   	ret    
c0035323:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035329:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035330 <localeconv>:
c0035330:	55                   	push   %ebp
c0035331:	89 e5                	mov    %esp,%ebp
c0035333:	83 ec 08             	sub    $0x8,%esp
c0035336:	e8 05 cc ff ff       	call   c0031f40 <__getreent>
c003533b:	b8 e0 c4 03 c0       	mov    $0xc003c4e0,%eax
c0035340:	c9                   	leave  
c0035341:	c3                   	ret    
c0035342:	66 90                	xchg   %ax,%ax
c0035344:	66 90                	xchg   %ax,%ax
c0035346:	66 90                	xchg   %ax,%ax
c0035348:	66 90                	xchg   %ax,%ax
c003534a:	66 90                	xchg   %ax,%ax
c003534c:	66 90                	xchg   %ax,%ax
c003534e:	66 90                	xchg   %ax,%ax

c0035350 <_malloc_r>:
c0035350:	55                   	push   %ebp
c0035351:	89 e5                	mov    %esp,%ebp
c0035353:	57                   	push   %edi
c0035354:	56                   	push   %esi
c0035355:	53                   	push   %ebx
c0035356:	83 ec 2c             	sub    $0x2c,%esp
c0035359:	8b 45 0c             	mov    0xc(%ebp),%eax
c003535c:	8d 50 0b             	lea    0xb(%eax),%edx
c003535f:	83 fa 16             	cmp    $0x16,%edx
c0035362:	76 6c                	jbe    c00353d0 <_malloc_r+0x80>
c0035364:	89 d7                	mov    %edx,%edi
c0035366:	83 e7 f8             	and    $0xfffffff8,%edi
c0035369:	89 fe                	mov    %edi,%esi
c003536b:	c1 ee 1f             	shr    $0x1f,%esi
c003536e:	39 c7                	cmp    %eax,%edi
c0035370:	8b 45 08             	mov    0x8(%ebp),%eax
c0035373:	89 f2                	mov    %esi,%edx
c0035375:	72 67                	jb     c00353de <_malloc_r+0x8e>
c0035377:	84 d2                	test   %dl,%dl
c0035379:	75 63                	jne    c00353de <_malloc_r+0x8e>
c003537b:	89 04 24             	mov    %eax,(%esp)
c003537e:	e8 ad 07 00 00       	call   c0035b30 <__malloc_lock>
c0035383:	81 ff f7 01 00 00    	cmp    $0x1f7,%edi
c0035389:	77 65                	ja     c00353f0 <_malloc_r+0xa0>
c003538b:	89 fa                	mov    %edi,%edx
c003538d:	c1 ea 03             	shr    $0x3,%edx
c0035390:	8d 04 d5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%edx,8),%eax
c0035397:	8b 58 0c             	mov    0xc(%eax),%ebx
c003539a:	39 c3                	cmp    %eax,%ebx
c003539c:	0f 84 3e 05 00 00    	je     c00358e0 <_malloc_r+0x590>
c00353a2:	8b 43 04             	mov    0x4(%ebx),%eax
c00353a5:	83 e0 fc             	and    $0xfffffffc,%eax
c00353a8:	8b 53 0c             	mov    0xc(%ebx),%edx
c00353ab:	8b 4b 08             	mov    0x8(%ebx),%ecx
c00353ae:	89 51 0c             	mov    %edx,0xc(%ecx)
c00353b1:	89 4a 08             	mov    %ecx,0x8(%edx)
c00353b4:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c00353b9:	8b 45 08             	mov    0x8(%ebp),%eax
c00353bc:	89 04 24             	mov    %eax,(%esp)
c00353bf:	e8 7c 07 00 00       	call   c0035b40 <__malloc_unlock>
c00353c4:	8d 43 08             	lea    0x8(%ebx),%eax
c00353c7:	83 c4 2c             	add    $0x2c,%esp
c00353ca:	5b                   	pop    %ebx
c00353cb:	5e                   	pop    %esi
c00353cc:	5f                   	pop    %edi
c00353cd:	5d                   	pop    %ebp
c00353ce:	c3                   	ret    
c00353cf:	90                   	nop
c00353d0:	bf 10 00 00 00       	mov    $0x10,%edi
c00353d5:	31 d2                	xor    %edx,%edx
c00353d7:	39 c7                	cmp    %eax,%edi
c00353d9:	8b 45 08             	mov    0x8(%ebp),%eax
c00353dc:	73 99                	jae    c0035377 <_malloc_r+0x27>
c00353de:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c00353e4:	83 c4 2c             	add    $0x2c,%esp
c00353e7:	31 c0                	xor    %eax,%eax
c00353e9:	5b                   	pop    %ebx
c00353ea:	5e                   	pop    %esi
c00353eb:	5f                   	pop    %edi
c00353ec:	5d                   	pop    %ebp
c00353ed:	c3                   	ret    
c00353ee:	66 90                	xchg   %ax,%ax
c00353f0:	89 fe                	mov    %edi,%esi
c00353f2:	c1 ee 09             	shr    $0x9,%esi
c00353f5:	85 f6                	test   %esi,%esi
c00353f7:	0f 84 ab 01 00 00    	je     c00355a8 <_malloc_r+0x258>
c00353fd:	83 fe 04             	cmp    $0x4,%esi
c0035400:	0f 87 8a 03 00 00    	ja     c0035790 <_malloc_r+0x440>
c0035406:	89 fe                	mov    %edi,%esi
c0035408:	c1 ee 06             	shr    $0x6,%esi
c003540b:	83 c6 38             	add    $0x38,%esi
c003540e:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035411:	8d 0c 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%ecx
c0035418:	8b 59 0c             	mov    0xc(%ecx),%ebx
c003541b:	39 d9                	cmp    %ebx,%ecx
c003541d:	75 18                	jne    c0035437 <_malloc_r+0xe7>
c003541f:	eb 28                	jmp    c0035449 <_malloc_r+0xf9>
c0035421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035428:	85 d2                	test   %edx,%edx
c003542a:	0f 89 78 ff ff ff    	jns    c00353a8 <_malloc_r+0x58>
c0035430:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035433:	39 d9                	cmp    %ebx,%ecx
c0035435:	74 12                	je     c0035449 <_malloc_r+0xf9>
c0035437:	8b 43 04             	mov    0x4(%ebx),%eax
c003543a:	83 e0 fc             	and    $0xfffffffc,%eax
c003543d:	89 c2                	mov    %eax,%edx
c003543f:	29 fa                	sub    %edi,%edx
c0035441:	83 fa 0f             	cmp    $0xf,%edx
c0035444:	7e e2                	jle    c0035428 <_malloc_r+0xd8>
c0035446:	83 ee 01             	sub    $0x1,%esi
c0035449:	8d 46 01             	lea    0x1(%esi),%eax
c003544c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003544f:	8b 1d 50 c5 03 c0    	mov    0xc003c550,%ebx
c0035455:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c003545a:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0035460:	74 6b                	je     c00354cd <_malloc_r+0x17d>
c0035462:	8b 73 04             	mov    0x4(%ebx),%esi
c0035465:	83 e6 fc             	and    $0xfffffffc,%esi
c0035468:	89 f0                	mov    %esi,%eax
c003546a:	29 f8                	sub    %edi,%eax
c003546c:	83 f8 0f             	cmp    $0xf,%eax
c003546f:	0f 8f a3 03 00 00    	jg     c0035818 <_malloc_r+0x4c8>
c0035475:	85 c0                	test   %eax,%eax
c0035477:	c7 05 54 c5 03 c0 48 	movl   $0xc003c548,0xc003c554
c003547e:	c5 03 c0 
c0035481:	c7 05 50 c5 03 c0 48 	movl   $0xc003c548,0xc003c550
c0035488:	c5 03 c0 
c003548b:	0f 89 27 01 00 00    	jns    c00355b8 <_malloc_r+0x268>
c0035491:	81 fe ff 01 00 00    	cmp    $0x1ff,%esi
c0035497:	0f 87 1b 03 00 00    	ja     c00357b8 <_malloc_r+0x468>
c003549d:	c1 ee 03             	shr    $0x3,%esi
c00354a0:	b8 01 00 00 00       	mov    $0x1,%eax
c00354a5:	89 f1                	mov    %esi,%ecx
c00354a7:	8d 14 f5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%esi,8),%edx
c00354ae:	c1 f9 02             	sar    $0x2,%ecx
c00354b1:	d3 e0                	shl    %cl,%eax
c00354b3:	8b 4a 08             	mov    0x8(%edx),%ecx
c00354b6:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c00354bc:	89 53 0c             	mov    %edx,0xc(%ebx)
c00354bf:	89 4b 08             	mov    %ecx,0x8(%ebx)
c00354c2:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c00354c7:	89 5a 08             	mov    %ebx,0x8(%edx)
c00354ca:	89 59 0c             	mov    %ebx,0xc(%ecx)
c00354cd:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00354d0:	be 01 00 00 00       	mov    $0x1,%esi
c00354d5:	c1 f9 02             	sar    $0x2,%ecx
c00354d8:	d3 e6                	shl    %cl,%esi
c00354da:	39 c6                	cmp    %eax,%esi
c00354dc:	0f 87 f6 00 00 00    	ja     c00355d8 <_malloc_r+0x288>
c00354e2:	85 f0                	test   %esi,%eax
c00354e4:	0f 85 76 03 00 00    	jne    c0035860 <_malloc_r+0x510>
c00354ea:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00354ed:	01 f6                	add    %esi,%esi
c00354ef:	83 e2 fc             	and    $0xfffffffc,%edx
c00354f2:	85 f0                	test   %esi,%eax
c00354f4:	8d 4a 04             	lea    0x4(%edx),%ecx
c00354f7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00354fa:	0f 85 60 03 00 00    	jne    c0035860 <_malloc_r+0x510>
c0035500:	89 ca                	mov    %ecx,%edx
c0035502:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035508:	01 f6                	add    %esi,%esi
c003550a:	83 c2 04             	add    $0x4,%edx
c003550d:	85 f0                	test   %esi,%eax
c003550f:	74 f7                	je     c0035508 <_malloc_r+0x1b8>
c0035511:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0035514:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035517:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003551a:	8d 34 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%esi
c0035521:	89 f1                	mov    %esi,%ecx
c0035523:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035526:	8b 59 0c             	mov    0xc(%ecx),%ebx
c0035529:	39 d9                	cmp    %ebx,%ecx
c003552b:	75 1e                	jne    c003554b <_malloc_r+0x1fb>
c003552d:	e9 36 03 00 00       	jmp    c0035868 <_malloc_r+0x518>
c0035532:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035538:	85 d2                	test   %edx,%edx
c003553a:	0f 89 c0 03 00 00    	jns    c0035900 <_malloc_r+0x5b0>
c0035540:	8b 5b 0c             	mov    0xc(%ebx),%ebx
c0035543:	39 d9                	cmp    %ebx,%ecx
c0035545:	0f 84 1d 03 00 00    	je     c0035868 <_malloc_r+0x518>
c003554b:	8b 43 04             	mov    0x4(%ebx),%eax
c003554e:	83 e0 fc             	and    $0xfffffffc,%eax
c0035551:	89 c2                	mov    %eax,%edx
c0035553:	29 fa                	sub    %edi,%edx
c0035555:	83 fa 0f             	cmp    $0xf,%edx
c0035558:	7e de                	jle    c0035538 <_malloc_r+0x1e8>
c003555a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
c003555d:	8d 04 3b             	lea    (%ebx,%edi,1),%eax
c0035560:	83 cf 01             	or     $0x1,%edi
c0035563:	8b 73 08             	mov    0x8(%ebx),%esi
c0035566:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035569:	89 4e 0c             	mov    %ecx,0xc(%esi)
c003556c:	89 71 08             	mov    %esi,0x8(%ecx)
c003556f:	89 d1                	mov    %edx,%ecx
c0035571:	83 c9 01             	or     $0x1,%ecx
c0035574:	a3 54 c5 03 c0       	mov    %eax,0xc003c554
c0035579:	a3 50 c5 03 c0       	mov    %eax,0xc003c550
c003557e:	c7 40 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%eax)
c0035585:	c7 40 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%eax)
c003558c:	89 48 04             	mov    %ecx,0x4(%eax)
c003558f:	89 14 10             	mov    %edx,(%eax,%edx,1)
c0035592:	8b 45 08             	mov    0x8(%ebp),%eax
c0035595:	89 04 24             	mov    %eax,(%esp)
c0035598:	e8 a3 05 00 00       	call   c0035b40 <__malloc_unlock>
c003559d:	8d 43 08             	lea    0x8(%ebx),%eax
c00355a0:	e9 22 fe ff ff       	jmp    c00353c7 <_malloc_r+0x77>
c00355a5:	8d 76 00             	lea    0x0(%esi),%esi
c00355a8:	b8 7e 00 00 00       	mov    $0x7e,%eax
c00355ad:	be 3f 00 00 00       	mov    $0x3f,%esi
c00355b2:	e9 5a fe ff ff       	jmp    c0035411 <_malloc_r+0xc1>
c00355b7:	90                   	nop
c00355b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00355bb:	83 4c 33 04 01       	orl    $0x1,0x4(%ebx,%esi,1)
c00355c0:	89 04 24             	mov    %eax,(%esp)
c00355c3:	e8 78 05 00 00       	call   c0035b40 <__malloc_unlock>
c00355c8:	83 c4 2c             	add    $0x2c,%esp
c00355cb:	8d 43 08             	lea    0x8(%ebx),%eax
c00355ce:	5b                   	pop    %ebx
c00355cf:	5e                   	pop    %esi
c00355d0:	5f                   	pop    %edi
c00355d1:	5d                   	pop    %ebp
c00355d2:	c3                   	ret    
c00355d3:	90                   	nop
c00355d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00355d8:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c00355de:	8b 73 04             	mov    0x4(%ebx),%esi
c00355e1:	83 e6 fc             	and    $0xfffffffc,%esi
c00355e4:	39 f7                	cmp    %esi,%edi
c00355e6:	77 0d                	ja     c00355f5 <_malloc_r+0x2a5>
c00355e8:	89 f0                	mov    %esi,%eax
c00355ea:	29 f8                	sub    %edi,%eax
c00355ec:	83 f8 0f             	cmp    $0xf,%eax
c00355ef:	0f 8f 6b 01 00 00    	jg     c0035760 <_malloc_r+0x410>
c00355f5:	8b 0d 50 f0 06 c0    	mov    0xc006f050,%ecx
c00355fb:	8d 04 33             	lea    (%ebx,%esi,1),%eax
c00355fe:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035601:	01 f9                	add    %edi,%ecx
c0035603:	8d 81 0f 10 00 00    	lea    0x100f(%ecx),%eax
c0035609:	83 c1 10             	add    $0x10,%ecx
c003560c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0035611:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035618:	0f 44 c1             	cmove  %ecx,%eax
c003561b:	89 45 e0             	mov    %eax,-0x20(%ebp)
c003561e:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035622:	8b 45 08             	mov    0x8(%ebp),%eax
c0035625:	89 04 24             	mov    %eax,(%esp)
c0035628:	e8 03 13 00 00       	call   c0036930 <_sbrk_r>
c003562d:	83 f8 ff             	cmp    $0xffffffff,%eax
c0035630:	89 c1                	mov    %eax,%ecx
c0035632:	0f 84 17 03 00 00    	je     c003594f <_malloc_r+0x5ff>
c0035638:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c003563b:	0f 87 02 03 00 00    	ja     c0035943 <_malloc_r+0x5f3>
c0035641:	8b 55 e0             	mov    -0x20(%ebp),%edx
c0035644:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c003564a:	39 4d e4             	cmp    %ecx,-0x1c(%ebp)
c003564d:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c0035653:	0f 84 a9 03 00 00    	je     c0035a02 <_malloc_r+0x6b2>
c0035659:	83 3d 20 c5 03 c0 ff 	cmpl   $0xffffffff,0xc003c520
c0035660:	0f 84 ca 03 00 00    	je     c0035a30 <_malloc_r+0x6e0>
c0035666:	89 c8                	mov    %ecx,%eax
c0035668:	2b 45 e4             	sub    -0x1c(%ebp),%eax
c003566b:	01 d0                	add    %edx,%eax
c003566d:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0035672:	89 c8                	mov    %ecx,%eax
c0035674:	ba 00 10 00 00       	mov    $0x1000,%edx
c0035679:	83 e0 07             	and    $0x7,%eax
c003567c:	74 0c                	je     c003568a <_malloc_r+0x33a>
c003567e:	29 c1                	sub    %eax,%ecx
c0035680:	ba 08 10 00 00       	mov    $0x1008,%edx
c0035685:	8d 49 08             	lea    0x8(%ecx),%ecx
c0035688:	29 c2                	sub    %eax,%edx
c003568a:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003568d:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035690:	01 c8                	add    %ecx,%eax
c0035692:	25 ff 0f 00 00       	and    $0xfff,%eax
c0035697:	29 c2                	sub    %eax,%edx
c0035699:	8b 45 08             	mov    0x8(%ebp),%eax
c003569c:	89 54 24 04          	mov    %edx,0x4(%esp)
c00356a0:	89 55 e0             	mov    %edx,-0x20(%ebp)
c00356a3:	89 04 24             	mov    %eax,(%esp)
c00356a6:	e8 85 12 00 00       	call   c0036930 <_sbrk_r>
c00356ab:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00356ae:	83 f8 ff             	cmp    $0xffffffff,%eax
c00356b1:	0f 84 6d 03 00 00    	je     c0035a24 <_malloc_r+0x6d4>
c00356b7:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00356ba:	29 c8                	sub    %ecx,%eax
c00356bc:	01 d0                	add    %edx,%eax
c00356be:	83 c8 01             	or     $0x1,%eax
c00356c1:	03 15 20 f0 06 c0    	add    0xc006f020,%edx
c00356c7:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c00356cd:	89 0d 48 c5 03 c0    	mov    %ecx,0xc003c548
c00356d3:	89 41 04             	mov    %eax,0x4(%ecx)
c00356d6:	89 15 20 f0 06 c0    	mov    %edx,0xc006f020
c00356dc:	0f 84 f2 02 00 00    	je     c00359d4 <_malloc_r+0x684>
c00356e2:	83 fe 0f             	cmp    $0xf,%esi
c00356e5:	0f 86 8d 02 00 00    	jbe    c0035978 <_malloc_r+0x628>
c00356eb:	8b 43 04             	mov    0x4(%ebx),%eax
c00356ee:	83 ee 0c             	sub    $0xc,%esi
c00356f1:	83 e6 f8             	and    $0xfffffff8,%esi
c00356f4:	83 e0 01             	and    $0x1,%eax
c00356f7:	09 f0                	or     %esi,%eax
c00356f9:	83 fe 0f             	cmp    $0xf,%esi
c00356fc:	89 43 04             	mov    %eax,0x4(%ebx)
c00356ff:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035704:	c7 44 33 04 05 00 00 	movl   $0x5,0x4(%ebx,%esi,1)
c003570b:	00 
c003570c:	c7 44 33 08 05 00 00 	movl   $0x5,0x8(%ebx,%esi,1)
c0035713:	00 
c0035714:	0f 87 a2 02 00 00    	ja     c00359bc <_malloc_r+0x66c>
c003571a:	3b 15 4c f0 06 c0    	cmp    0xc006f04c,%edx
c0035720:	76 06                	jbe    c0035728 <_malloc_r+0x3d8>
c0035722:	89 15 4c f0 06 c0    	mov    %edx,0xc006f04c
c0035728:	3b 15 48 f0 06 c0    	cmp    0xc006f048,%edx
c003572e:	76 06                	jbe    c0035736 <_malloc_r+0x3e6>
c0035730:	89 15 48 f0 06 c0    	mov    %edx,0xc006f048
c0035736:	8b 50 04             	mov    0x4(%eax),%edx
c0035739:	89 c3                	mov    %eax,%ebx
c003573b:	83 e2 fc             	and    $0xfffffffc,%edx
c003573e:	89 d0                	mov    %edx,%eax
c0035740:	29 f8                	sub    %edi,%eax
c0035742:	39 d7                	cmp    %edx,%edi
c0035744:	77 05                	ja     c003574b <_malloc_r+0x3fb>
c0035746:	83 f8 0f             	cmp    $0xf,%eax
c0035749:	7f 15                	jg     c0035760 <_malloc_r+0x410>
c003574b:	8b 45 08             	mov    0x8(%ebp),%eax
c003574e:	89 04 24             	mov    %eax,(%esp)
c0035751:	e8 ea 03 00 00       	call   c0035b40 <__malloc_unlock>
c0035756:	31 c0                	xor    %eax,%eax
c0035758:	e9 6a fc ff ff       	jmp    c00353c7 <_malloc_r+0x77>
c003575d:	8d 76 00             	lea    0x0(%esi),%esi
c0035760:	89 fa                	mov    %edi,%edx
c0035762:	83 c8 01             	or     $0x1,%eax
c0035765:	83 ca 01             	or     $0x1,%edx
c0035768:	89 53 04             	mov    %edx,0x4(%ebx)
c003576b:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003576e:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c0035774:	89 42 04             	mov    %eax,0x4(%edx)
c0035777:	8b 45 08             	mov    0x8(%ebp),%eax
c003577a:	89 04 24             	mov    %eax,(%esp)
c003577d:	e8 be 03 00 00       	call   c0035b40 <__malloc_unlock>
c0035782:	83 c4 2c             	add    $0x2c,%esp
c0035785:	8d 43 08             	lea    0x8(%ebx),%eax
c0035788:	5b                   	pop    %ebx
c0035789:	5e                   	pop    %esi
c003578a:	5f                   	pop    %edi
c003578b:	5d                   	pop    %ebp
c003578c:	c3                   	ret    
c003578d:	8d 76 00             	lea    0x0(%esi),%esi
c0035790:	83 fe 14             	cmp    $0x14,%esi
c0035793:	0f 86 8f 01 00 00    	jbe    c0035928 <_malloc_r+0x5d8>
c0035799:	83 fe 54             	cmp    $0x54,%esi
c003579c:	0f 87 be 01 00 00    	ja     c0035960 <_malloc_r+0x610>
c00357a2:	89 fe                	mov    %edi,%esi
c00357a4:	c1 ee 0c             	shr    $0xc,%esi
c00357a7:	83 c6 6e             	add    $0x6e,%esi
c00357aa:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00357ad:	e9 5f fc ff ff       	jmp    c0035411 <_malloc_r+0xc1>
c00357b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00357b8:	89 f1                	mov    %esi,%ecx
c00357ba:	c1 e9 09             	shr    $0x9,%ecx
c00357bd:	83 f9 04             	cmp    $0x4,%ecx
c00357c0:	0f 86 6d 01 00 00    	jbe    c0035933 <_malloc_r+0x5e3>
c00357c6:	83 f9 14             	cmp    $0x14,%ecx
c00357c9:	0f 87 0f 02 00 00    	ja     c00359de <_malloc_r+0x68e>
c00357cf:	83 c1 5b             	add    $0x5b,%ecx
c00357d2:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00357d5:	8d 04 85 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,4),%eax
c00357dc:	8b 50 08             	mov    0x8(%eax),%edx
c00357df:	39 c2                	cmp    %eax,%edx
c00357e1:	0f 84 a1 01 00 00    	je     c0035988 <_malloc_r+0x638>
c00357e7:	90                   	nop
c00357e8:	8b 4a 04             	mov    0x4(%edx),%ecx
c00357eb:	83 e1 fc             	and    $0xfffffffc,%ecx
c00357ee:	39 ce                	cmp    %ecx,%esi
c00357f0:	73 07                	jae    c00357f9 <_malloc_r+0x4a9>
c00357f2:	8b 52 08             	mov    0x8(%edx),%edx
c00357f5:	39 d0                	cmp    %edx,%eax
c00357f7:	75 ef                	jne    c00357e8 <_malloc_r+0x498>
c00357f9:	8b 4a 0c             	mov    0xc(%edx),%ecx
c00357fc:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035801:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0035804:	89 53 08             	mov    %edx,0x8(%ebx)
c0035807:	89 59 08             	mov    %ebx,0x8(%ecx)
c003580a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003580d:	e9 bb fc ff ff       	jmp    c00354cd <_malloc_r+0x17d>
c0035812:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035818:	89 c1                	mov    %eax,%ecx
c003581a:	8d 14 3b             	lea    (%ebx,%edi,1),%edx
c003581d:	83 c9 01             	or     $0x1,%ecx
c0035820:	83 cf 01             	or     $0x1,%edi
c0035823:	89 7b 04             	mov    %edi,0x4(%ebx)
c0035826:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c003582c:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0035832:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0035839:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c0035840:	89 4a 04             	mov    %ecx,0x4(%edx)
c0035843:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0035846:	8b 45 08             	mov    0x8(%ebp),%eax
c0035849:	89 04 24             	mov    %eax,(%esp)
c003584c:	e8 ef 02 00 00       	call   c0035b40 <__malloc_unlock>
c0035851:	8d 43 08             	lea    0x8(%ebx),%eax
c0035854:	e9 6e fb ff ff       	jmp    c00353c7 <_malloc_r+0x77>
c0035859:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035860:	89 75 dc             	mov    %esi,-0x24(%ebp)
c0035863:	e9 af fc ff ff       	jmp    c0035517 <_malloc_r+0x1c7>
c0035868:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
c003586c:	83 c1 08             	add    $0x8,%ecx
c003586f:	f6 45 e0 03          	testb  $0x3,-0x20(%ebp)
c0035873:	0f 85 ad fc ff ff    	jne    c0035526 <_malloc_r+0x1d6>
c0035879:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c003587c:	eb 12                	jmp    c0035890 <_malloc_r+0x540>
c003587e:	66 90                	xchg   %ax,%ax
c0035880:	8d 56 f8             	lea    -0x8(%esi),%edx
c0035883:	8b 36                	mov    (%esi),%esi
c0035885:	83 e8 01             	sub    $0x1,%eax
c0035888:	39 d6                	cmp    %edx,%esi
c003588a:	0f 85 ea 01 00 00    	jne    c0035a7a <_malloc_r+0x72a>
c0035890:	a8 03                	test   $0x3,%al
c0035892:	75 ec                	jne    c0035880 <_malloc_r+0x530>
c0035894:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0035897:	f7 d0                	not    %eax
c0035899:	23 05 44 c5 03 c0    	and    0xc003c544,%eax
c003589f:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c00358a4:	d1 65 dc             	shll   -0x24(%ebp)
c00358a7:	8b 55 dc             	mov    -0x24(%ebp),%edx
c00358aa:	39 c2                	cmp    %eax,%edx
c00358ac:	0f 87 26 fd ff ff    	ja     c00355d8 <_malloc_r+0x288>
c00358b2:	85 d2                	test   %edx,%edx
c00358b4:	0f 84 1e fd ff ff    	je     c00355d8 <_malloc_r+0x288>
c00358ba:	85 c2                	test   %eax,%edx
c00358bc:	0f 85 c2 01 00 00    	jne    c0035a84 <_malloc_r+0x734>
c00358c2:	8b 75 e0             	mov    -0x20(%ebp),%esi
c00358c5:	89 f1                	mov    %esi,%ecx
c00358c7:	01 d2                	add    %edx,%edx
c00358c9:	83 c1 04             	add    $0x4,%ecx
c00358cc:	85 d0                	test   %edx,%eax
c00358ce:	74 f7                	je     c00358c7 <_malloc_r+0x577>
c00358d0:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00358d3:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00358d6:	e9 3c fc ff ff       	jmp    c0035517 <_malloc_r+0x1c7>
c00358db:	90                   	nop
c00358dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00358e0:	8d 43 08             	lea    0x8(%ebx),%eax
c00358e3:	8b 5b 14             	mov    0x14(%ebx),%ebx
c00358e6:	39 d8                	cmp    %ebx,%eax
c00358e8:	0f 85 b4 fa ff ff    	jne    c00353a2 <_malloc_r+0x52>
c00358ee:	8d 42 02             	lea    0x2(%edx),%eax
c00358f1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00358f4:	e9 56 fb ff ff       	jmp    c003544f <_malloc_r+0xff>
c00358f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035900:	83 4c 03 04 01       	orl    $0x1,0x4(%ebx,%eax,1)
c0035905:	8b 53 08             	mov    0x8(%ebx),%edx
c0035908:	8b 43 0c             	mov    0xc(%ebx),%eax
c003590b:	89 42 0c             	mov    %eax,0xc(%edx)
c003590e:	89 50 08             	mov    %edx,0x8(%eax)
c0035911:	8b 45 08             	mov    0x8(%ebp),%eax
c0035914:	89 04 24             	mov    %eax,(%esp)
c0035917:	e8 24 02 00 00       	call   c0035b40 <__malloc_unlock>
c003591c:	8d 43 08             	lea    0x8(%ebx),%eax
c003591f:	e9 a3 fa ff ff       	jmp    c00353c7 <_malloc_r+0x77>
c0035924:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035928:	83 c6 5b             	add    $0x5b,%esi
c003592b:	8d 04 36             	lea    (%esi,%esi,1),%eax
c003592e:	e9 de fa ff ff       	jmp    c0035411 <_malloc_r+0xc1>
c0035933:	89 f1                	mov    %esi,%ecx
c0035935:	c1 e9 06             	shr    $0x6,%ecx
c0035938:	83 c1 38             	add    $0x38,%ecx
c003593b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c003593e:	e9 92 fe ff ff       	jmp    c00357d5 <_malloc_r+0x485>
c0035943:	81 fb 40 c5 03 c0    	cmp    $0xc003c540,%ebx
c0035949:	0f 84 f2 fc ff ff    	je     c0035641 <_malloc_r+0x2f1>
c003594f:	8b 1d 48 c5 03 c0    	mov    0xc003c548,%ebx
c0035955:	8b 53 04             	mov    0x4(%ebx),%edx
c0035958:	83 e2 fc             	and    $0xfffffffc,%edx
c003595b:	e9 de fd ff ff       	jmp    c003573e <_malloc_r+0x3ee>
c0035960:	81 fe 54 01 00 00    	cmp    $0x154,%esi
c0035966:	77 3c                	ja     c00359a4 <_malloc_r+0x654>
c0035968:	89 fe                	mov    %edi,%esi
c003596a:	c1 ee 0f             	shr    $0xf,%esi
c003596d:	83 c6 77             	add    $0x77,%esi
c0035970:	8d 04 36             	lea    (%esi,%esi,1),%eax
c0035973:	e9 99 fa ff ff       	jmp    c0035411 <_malloc_r+0xc1>
c0035978:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
c003597f:	89 cb                	mov    %ecx,%ebx
c0035981:	31 d2                	xor    %edx,%edx
c0035983:	e9 b6 fd ff ff       	jmp    c003573e <_malloc_r+0x3ee>
c0035988:	c1 f9 02             	sar    $0x2,%ecx
c003598b:	b8 01 00 00 00       	mov    $0x1,%eax
c0035990:	d3 e0                	shl    %cl,%eax
c0035992:	89 d1                	mov    %edx,%ecx
c0035994:	0b 05 44 c5 03 c0    	or     0xc003c544,%eax
c003599a:	a3 44 c5 03 c0       	mov    %eax,0xc003c544
c003599f:	e9 5d fe ff ff       	jmp    c0035801 <_malloc_r+0x4b1>
c00359a4:	81 fe 54 05 00 00    	cmp    $0x554,%esi
c00359aa:	77 47                	ja     c00359f3 <_malloc_r+0x6a3>
c00359ac:	89 fe                	mov    %edi,%esi
c00359ae:	c1 ee 12             	shr    $0x12,%esi
c00359b1:	83 c6 7c             	add    $0x7c,%esi
c00359b4:	8d 04 36             	lea    (%esi,%esi,1),%eax
c00359b7:	e9 55 fa ff ff       	jmp    c0035411 <_malloc_r+0xc1>
c00359bc:	8b 45 08             	mov    0x8(%ebp),%eax
c00359bf:	83 c3 08             	add    $0x8,%ebx
c00359c2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c00359c6:	89 04 24             	mov    %eax,(%esp)
c00359c9:	e8 c2 22 00 00       	call   c0037c90 <_free_r>
c00359ce:	8b 15 20 f0 06 c0    	mov    0xc006f020,%edx
c00359d4:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c00359d9:	e9 3c fd ff ff       	jmp    c003571a <_malloc_r+0x3ca>
c00359de:	83 f9 54             	cmp    $0x54,%ecx
c00359e1:	77 58                	ja     c0035a3b <_malloc_r+0x6eb>
c00359e3:	89 f1                	mov    %esi,%ecx
c00359e5:	c1 e9 0c             	shr    $0xc,%ecx
c00359e8:	83 c1 6e             	add    $0x6e,%ecx
c00359eb:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c00359ee:	e9 e2 fd ff ff       	jmp    c00357d5 <_malloc_r+0x485>
c00359f3:	b8 fc 00 00 00       	mov    $0xfc,%eax
c00359f8:	be 7e 00 00 00       	mov    $0x7e,%esi
c00359fd:	e9 0f fa ff ff       	jmp    c0035411 <_malloc_r+0xc1>
c0035a02:	f7 45 e4 ff 0f 00 00 	testl  $0xfff,-0x1c(%ebp)
c0035a09:	0f 85 4a fc ff ff    	jne    c0035659 <_malloc_r+0x309>
c0035a0f:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0035a12:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0035a17:	01 f1                	add    %esi,%ecx
c0035a19:	83 c9 01             	or     $0x1,%ecx
c0035a1c:	89 48 04             	mov    %ecx,0x4(%eax)
c0035a1f:	e9 f6 fc ff ff       	jmp    c003571a <_malloc_r+0x3ca>
c0035a24:	b8 01 00 00 00       	mov    $0x1,%eax
c0035a29:	31 d2                	xor    %edx,%edx
c0035a2b:	e9 91 fc ff ff       	jmp    c00356c1 <_malloc_r+0x371>
c0035a30:	89 0d 20 c5 03 c0    	mov    %ecx,0xc003c520
c0035a36:	e9 37 fc ff ff       	jmp    c0035672 <_malloc_r+0x322>
c0035a3b:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0035a41:	77 10                	ja     c0035a53 <_malloc_r+0x703>
c0035a43:	89 f1                	mov    %esi,%ecx
c0035a45:	c1 e9 0f             	shr    $0xf,%ecx
c0035a48:	83 c1 77             	add    $0x77,%ecx
c0035a4b:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a4e:	e9 82 fd ff ff       	jmp    c00357d5 <_malloc_r+0x485>
c0035a53:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0035a59:	77 10                	ja     c0035a6b <_malloc_r+0x71b>
c0035a5b:	89 f1                	mov    %esi,%ecx
c0035a5d:	c1 e9 12             	shr    $0x12,%ecx
c0035a60:	83 c1 7c             	add    $0x7c,%ecx
c0035a63:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
c0035a66:	e9 6a fd ff ff       	jmp    c00357d5 <_malloc_r+0x485>
c0035a6b:	b8 fc 00 00 00       	mov    $0xfc,%eax
c0035a70:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0035a75:	e9 5b fd ff ff       	jmp    c00357d5 <_malloc_r+0x485>
c0035a7a:	a1 44 c5 03 c0       	mov    0xc003c544,%eax
c0035a7f:	e9 20 fe ff ff       	jmp    c00358a4 <_malloc_r+0x554>
c0035a84:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0035a87:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035a8a:	e9 88 fa ff ff       	jmp    c0035517 <_malloc_r+0x1c7>
c0035a8f:	90                   	nop

c0035a90 <memchr>:
c0035a90:	55                   	push   %ebp
c0035a91:	89 e5                	mov    %esp,%ebp
c0035a93:	57                   	push   %edi
c0035a94:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
c0035a98:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035a9b:	8b 7d 08             	mov    0x8(%ebp),%edi
c0035a9e:	31 d2                	xor    %edx,%edx
c0035aa0:	85 c9                	test   %ecx,%ecx
c0035aa2:	74 79                	je     c0035b1d <L20>
c0035aa4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035aaa:	74 28                	je     c0035ad4 <L5>
c0035aac:	3a 07                	cmp    (%edi),%al
c0035aae:	74 6a                	je     c0035b1a <L15>
c0035ab0:	47                   	inc    %edi
c0035ab1:	49                   	dec    %ecx
c0035ab2:	74 69                	je     c0035b1d <L20>
c0035ab4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035aba:	74 18                	je     c0035ad4 <L5>
c0035abc:	3a 07                	cmp    (%edi),%al
c0035abe:	74 5a                	je     c0035b1a <L15>
c0035ac0:	47                   	inc    %edi
c0035ac1:	49                   	dec    %ecx
c0035ac2:	74 59                	je     c0035b1d <L20>
c0035ac4:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0035aca:	74 08                	je     c0035ad4 <L5>
c0035acc:	3a 07                	cmp    (%edi),%al
c0035ace:	74 4a                	je     c0035b1a <L15>
c0035ad0:	47                   	inc    %edi
c0035ad1:	49                   	dec    %ecx
c0035ad2:	74 49                	je     c0035b1d <L20>

c0035ad4 <L5>:
c0035ad4:	88 c4                	mov    %al,%ah
c0035ad6:	89 c2                	mov    %eax,%edx
c0035ad8:	c1 e2 10             	shl    $0x10,%edx
c0035adb:	09 d0                	or     %edx,%eax
c0035add:	53                   	push   %ebx
c0035ade:	66 90                	xchg   %ax,%ax

c0035ae0 <L8>:
c0035ae0:	83 e9 04             	sub    $0x4,%ecx
c0035ae3:	72 1c                	jb     c0035b01 <L9>
c0035ae5:	8b 17                	mov    (%edi),%edx
c0035ae7:	83 c7 04             	add    $0x4,%edi
c0035aea:	31 c2                	xor    %eax,%edx
c0035aec:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
c0035af2:	f7 d2                	not    %edx
c0035af4:	21 d3                	and    %edx,%ebx
c0035af6:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
c0035afc:	74 e2                	je     c0035ae0 <L8>
c0035afe:	83 ef 04             	sub    $0x4,%edi

c0035b01 <L9>:
c0035b01:	5b                   	pop    %ebx
c0035b02:	31 d2                	xor    %edx,%edx
c0035b04:	83 c1 04             	add    $0x4,%ecx
c0035b07:	74 14                	je     c0035b1d <L20>
c0035b09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035b10 <L10>:
c0035b10:	3a 07                	cmp    (%edi),%al
c0035b12:	74 06                	je     c0035b1a <L15>
c0035b14:	47                   	inc    %edi
c0035b15:	49                   	dec    %ecx
c0035b16:	75 f8                	jne    c0035b10 <L10>
c0035b18:	31 ff                	xor    %edi,%edi

c0035b1a <L15>:
c0035b1a:	4a                   	dec    %edx
c0035b1b:	21 fa                	and    %edi,%edx

c0035b1d <L20>:
c0035b1d:	89 d0                	mov    %edx,%eax
c0035b1f:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0035b22:	5f                   	pop    %edi
c0035b23:	c9                   	leave  
c0035b24:	c3                   	ret    
c0035b25:	66 90                	xchg   %ax,%ax
c0035b27:	66 90                	xchg   %ax,%ax
c0035b29:	66 90                	xchg   %ax,%ax
c0035b2b:	66 90                	xchg   %ax,%ax
c0035b2d:	66 90                	xchg   %ax,%ax
c0035b2f:	90                   	nop

c0035b30 <__malloc_lock>:
c0035b30:	55                   	push   %ebp
c0035b31:	89 e5                	mov    %esp,%ebp
c0035b33:	5d                   	pop    %ebp
c0035b34:	c3                   	ret    
c0035b35:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035b39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035b40 <__malloc_unlock>:
c0035b40:	55                   	push   %ebp
c0035b41:	89 e5                	mov    %esp,%ebp
c0035b43:	5d                   	pop    %ebp
c0035b44:	c3                   	ret    
c0035b45:	66 90                	xchg   %ax,%ax
c0035b47:	66 90                	xchg   %ax,%ax
c0035b49:	66 90                	xchg   %ax,%ax
c0035b4b:	66 90                	xchg   %ax,%ax
c0035b4d:	66 90                	xchg   %ax,%ax
c0035b4f:	90                   	nop

c0035b50 <_Balloc>:
c0035b50:	55                   	push   %ebp
c0035b51:	89 e5                	mov    %esp,%ebp
c0035b53:	57                   	push   %edi
c0035b54:	56                   	push   %esi
c0035b55:	53                   	push   %ebx
c0035b56:	83 ec 1c             	sub    $0x1c,%esp
c0035b59:	8b 75 08             	mov    0x8(%ebp),%esi
c0035b5c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0035b5f:	8b 46 4c             	mov    0x4c(%esi),%eax
c0035b62:	85 c0                	test   %eax,%eax
c0035b64:	74 2a                	je     c0035b90 <_Balloc+0x40>
c0035b66:	8d 14 98             	lea    (%eax,%ebx,4),%edx
c0035b69:	8b 02                	mov    (%edx),%eax
c0035b6b:	85 c0                	test   %eax,%eax
c0035b6d:	74 49                	je     c0035bb8 <_Balloc+0x68>
c0035b6f:	8b 08                	mov    (%eax),%ecx
c0035b71:	89 0a                	mov    %ecx,(%edx)
c0035b73:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
c0035b7a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
c0035b81:	83 c4 1c             	add    $0x1c,%esp
c0035b84:	5b                   	pop    %ebx
c0035b85:	5e                   	pop    %esi
c0035b86:	5f                   	pop    %edi
c0035b87:	5d                   	pop    %ebp
c0035b88:	c3                   	ret    
c0035b89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035b90:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
c0035b97:	00 
c0035b98:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
c0035b9f:	00 
c0035ba0:	89 34 24             	mov    %esi,(%esp)
c0035ba3:	e8 38 1f 00 00       	call   c0037ae0 <_calloc_r>
c0035ba8:	85 c0                	test   %eax,%eax
c0035baa:	89 46 4c             	mov    %eax,0x4c(%esi)
c0035bad:	75 b7                	jne    c0035b66 <_Balloc+0x16>
c0035baf:	31 c0                	xor    %eax,%eax
c0035bb1:	eb ce                	jmp    c0035b81 <_Balloc+0x31>
c0035bb3:	90                   	nop
c0035bb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035bb8:	89 d9                	mov    %ebx,%ecx
c0035bba:	bf 01 00 00 00       	mov    $0x1,%edi
c0035bbf:	d3 e7                	shl    %cl,%edi
c0035bc1:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
c0035bc8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035bcc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035bd3:	00 
c0035bd4:	89 34 24             	mov    %esi,(%esp)
c0035bd7:	e8 04 1f 00 00       	call   c0037ae0 <_calloc_r>
c0035bdc:	85 c0                	test   %eax,%eax
c0035bde:	74 cf                	je     c0035baf <_Balloc+0x5f>
c0035be0:	89 58 04             	mov    %ebx,0x4(%eax)
c0035be3:	89 78 08             	mov    %edi,0x8(%eax)
c0035be6:	eb 8b                	jmp    c0035b73 <_Balloc+0x23>
c0035be8:	90                   	nop
c0035be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035bf0 <_Bfree>:
c0035bf0:	55                   	push   %ebp
c0035bf1:	89 e5                	mov    %esp,%ebp
c0035bf3:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035bf6:	85 c0                	test   %eax,%eax
c0035bf8:	74 12                	je     c0035c0c <_Bfree+0x1c>
c0035bfa:	8b 55 08             	mov    0x8(%ebp),%edx
c0035bfd:	8b 48 04             	mov    0x4(%eax),%ecx
c0035c00:	8b 52 4c             	mov    0x4c(%edx),%edx
c0035c03:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
c0035c06:	8b 0a                	mov    (%edx),%ecx
c0035c08:	89 08                	mov    %ecx,(%eax)
c0035c0a:	89 02                	mov    %eax,(%edx)
c0035c0c:	5d                   	pop    %ebp
c0035c0d:	c3                   	ret    
c0035c0e:	66 90                	xchg   %ax,%ax

c0035c10 <__multadd>:
c0035c10:	55                   	push   %ebp
c0035c11:	89 e5                	mov    %esp,%ebp
c0035c13:	57                   	push   %edi
c0035c14:	56                   	push   %esi
c0035c15:	53                   	push   %ebx
c0035c16:	83 ec 2c             	sub    $0x2c,%esp
c0035c19:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c1c:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0035c1f:	8b 40 10             	mov    0x10(%eax),%eax
c0035c22:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0035c25:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c28:	8d 78 14             	lea    0x14(%eax),%edi
c0035c2b:	31 c0                	xor    %eax,%eax
c0035c2d:	8d 76 00             	lea    0x0(%esi),%esi
c0035c30:	8b 0c 87             	mov    (%edi,%eax,4),%ecx
c0035c33:	0f b7 d1             	movzwl %cx,%edx
c0035c36:	0f af 55 10          	imul   0x10(%ebp),%edx
c0035c3a:	c1 e9 10             	shr    $0x10,%ecx
c0035c3d:	0f af 4d 10          	imul   0x10(%ebp),%ecx
c0035c41:	01 da                	add    %ebx,%edx
c0035c43:	89 d3                	mov    %edx,%ebx
c0035c45:	0f b7 d2             	movzwl %dx,%edx
c0035c48:	c1 eb 10             	shr    $0x10,%ebx
c0035c4b:	01 d9                	add    %ebx,%ecx
c0035c4d:	89 ce                	mov    %ecx,%esi
c0035c4f:	c1 e1 10             	shl    $0x10,%ecx
c0035c52:	01 d1                	add    %edx,%ecx
c0035c54:	c1 ee 10             	shr    $0x10,%esi
c0035c57:	89 0c 87             	mov    %ecx,(%edi,%eax,4)
c0035c5a:	83 c0 01             	add    $0x1,%eax
c0035c5d:	89 f3                	mov    %esi,%ebx
c0035c5f:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c0035c62:	7f cc                	jg     c0035c30 <__multadd+0x20>
c0035c64:	85 f6                	test   %esi,%esi
c0035c66:	74 1b                	je     c0035c83 <__multadd+0x73>
c0035c68:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c6b:	8b 7d e4             	mov    -0x1c(%ebp),%edi
c0035c6e:	3b 78 08             	cmp    0x8(%eax),%edi
c0035c71:	7d 1d                	jge    c0035c90 <__multadd+0x80>
c0035c73:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035c76:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0035c79:	89 74 87 14          	mov    %esi,0x14(%edi,%eax,4)
c0035c7d:	83 c0 01             	add    $0x1,%eax
c0035c80:	89 47 10             	mov    %eax,0x10(%edi)
c0035c83:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035c86:	83 c4 2c             	add    $0x2c,%esp
c0035c89:	5b                   	pop    %ebx
c0035c8a:	5e                   	pop    %esi
c0035c8b:	5f                   	pop    %edi
c0035c8c:	5d                   	pop    %ebp
c0035c8d:	c3                   	ret    
c0035c8e:	66 90                	xchg   %ax,%ax
c0035c90:	8b 40 04             	mov    0x4(%eax),%eax
c0035c93:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0035c96:	83 c0 01             	add    $0x1,%eax
c0035c99:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035c9d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035ca0:	89 04 24             	mov    %eax,(%esp)
c0035ca3:	e8 a8 fe ff ff       	call   c0035b50 <_Balloc>
c0035ca8:	89 c3                	mov    %eax,%ebx
c0035caa:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cad:	8b 40 10             	mov    0x10(%eax),%eax
c0035cb0:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
c0035cb7:	89 44 24 08          	mov    %eax,0x8(%esp)
c0035cbb:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cbe:	83 c0 0c             	add    $0xc,%eax
c0035cc1:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035cc5:	8d 43 0c             	lea    0xc(%ebx),%eax
c0035cc8:	89 04 24             	mov    %eax,(%esp)
c0035ccb:	e8 c4 c0 ff ff       	call   c0031d94 <memcpy>
c0035cd0:	8b 45 0c             	mov    0xc(%ebp),%eax
c0035cd3:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0035cd6:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0035cd9:	8b 50 04             	mov    0x4(%eax),%edx
c0035cdc:	8b 45 08             	mov    0x8(%ebp),%eax
c0035cdf:	8b 40 4c             	mov    0x4c(%eax),%eax
c0035ce2:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0035ce5:	8b 10                	mov    (%eax),%edx
c0035ce7:	89 17                	mov    %edx,(%edi)
c0035ce9:	89 38                	mov    %edi,(%eax)
c0035ceb:	eb 86                	jmp    c0035c73 <__multadd+0x63>
c0035ced:	8d 76 00             	lea    0x0(%esi),%esi

c0035cf0 <__s2b>:
c0035cf0:	55                   	push   %ebp
c0035cf1:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
c0035cf6:	89 e5                	mov    %esp,%ebp
c0035cf8:	57                   	push   %edi
c0035cf9:	56                   	push   %esi
c0035cfa:	53                   	push   %ebx
c0035cfb:	83 ec 2c             	sub    $0x2c,%esp
c0035cfe:	8b 45 14             	mov    0x14(%ebp),%eax
c0035d01:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035d04:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035d07:	8d 48 08             	lea    0x8(%eax),%ecx
c0035d0a:	89 c8                	mov    %ecx,%eax
c0035d0c:	f7 ea                	imul   %edx
c0035d0e:	c1 f9 1f             	sar    $0x1f,%ecx
c0035d11:	d1 fa                	sar    %edx
c0035d13:	29 ca                	sub    %ecx,%edx
c0035d15:	83 fa 01             	cmp    $0x1,%edx
c0035d18:	0f 8e be 00 00 00    	jle    c0035ddc <__s2b+0xec>
c0035d1e:	b8 01 00 00 00       	mov    $0x1,%eax
c0035d23:	31 c9                	xor    %ecx,%ecx
c0035d25:	8d 76 00             	lea    0x0(%esi),%esi
c0035d28:	01 c0                	add    %eax,%eax
c0035d2a:	83 c1 01             	add    $0x1,%ecx
c0035d2d:	39 c2                	cmp    %eax,%edx
c0035d2f:	7f f7                	jg     c0035d28 <__s2b+0x38>
c0035d31:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0035d35:	89 1c 24             	mov    %ebx,(%esp)
c0035d38:	e8 13 fe ff ff       	call   c0035b50 <_Balloc>
c0035d3d:	8b 55 18             	mov    0x18(%ebp),%edx
c0035d40:	83 7d 10 09          	cmpl   $0x9,0x10(%ebp)
c0035d44:	89 50 14             	mov    %edx,0x14(%eax)
c0035d47:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035d4e:	0f 8e 7c 00 00 00    	jle    c0035dd0 <__s2b+0xe0>
c0035d54:	8d 4e 09             	lea    0x9(%esi),%ecx
c0035d57:	03 75 10             	add    0x10(%ebp),%esi
c0035d5a:	89 cf                	mov    %ecx,%edi
c0035d5c:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0035d5f:	90                   	nop
c0035d60:	83 c7 01             	add    $0x1,%edi
c0035d63:	0f be 57 ff          	movsbl -0x1(%edi),%edx
c0035d67:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035d6e:	00 
c0035d6f:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035d73:	89 1c 24             	mov    %ebx,(%esp)
c0035d76:	83 ea 30             	sub    $0x30,%edx
c0035d79:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035d7d:	e8 8e fe ff ff       	call   c0035c10 <__multadd>
c0035d82:	39 f7                	cmp    %esi,%edi
c0035d84:	75 da                	jne    c0035d60 <__s2b+0x70>
c0035d86:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0035d89:	8b 7d 10             	mov    0x10(%ebp),%edi
c0035d8c:	8d 74 39 f8          	lea    -0x8(%ecx,%edi,1),%esi
c0035d90:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0035d93:	39 4d 14             	cmp    %ecx,0x14(%ebp)
c0035d96:	7e 2e                	jle    c0035dc6 <__s2b+0xd6>
c0035d98:	8b 7d 14             	mov    0x14(%ebp),%edi
c0035d9b:	29 cf                	sub    %ecx,%edi
c0035d9d:	01 f7                	add    %esi,%edi
c0035d9f:	90                   	nop
c0035da0:	83 c6 01             	add    $0x1,%esi
c0035da3:	0f be 56 ff          	movsbl -0x1(%esi),%edx
c0035da7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
c0035dae:	00 
c0035daf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035db3:	89 1c 24             	mov    %ebx,(%esp)
c0035db6:	83 ea 30             	sub    $0x30,%edx
c0035db9:	89 54 24 0c          	mov    %edx,0xc(%esp)
c0035dbd:	e8 4e fe ff ff       	call   c0035c10 <__multadd>
c0035dc2:	39 fe                	cmp    %edi,%esi
c0035dc4:	75 da                	jne    c0035da0 <__s2b+0xb0>
c0035dc6:	83 c4 2c             	add    $0x2c,%esp
c0035dc9:	5b                   	pop    %ebx
c0035dca:	5e                   	pop    %esi
c0035dcb:	5f                   	pop    %edi
c0035dcc:	5d                   	pop    %ebp
c0035dcd:	c3                   	ret    
c0035dce:	66 90                	xchg   %ax,%ax
c0035dd0:	83 c6 0a             	add    $0xa,%esi
c0035dd3:	c7 45 10 09 00 00 00 	movl   $0x9,0x10(%ebp)
c0035dda:	eb b4                	jmp    c0035d90 <__s2b+0xa0>
c0035ddc:	31 c9                	xor    %ecx,%ecx
c0035dde:	e9 4e ff ff ff       	jmp    c0035d31 <__s2b+0x41>
c0035de3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0035de9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0035df0 <__hi0bits>:
c0035df0:	55                   	push   %ebp
c0035df1:	31 c9                	xor    %ecx,%ecx
c0035df3:	89 e5                	mov    %esp,%ebp
c0035df5:	8b 55 08             	mov    0x8(%ebp),%edx
c0035df8:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
c0035dfe:	75 05                	jne    c0035e05 <__hi0bits+0x15>
c0035e00:	c1 e2 10             	shl    $0x10,%edx
c0035e03:	b1 10                	mov    $0x10,%cl
c0035e05:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
c0035e0b:	75 06                	jne    c0035e13 <__hi0bits+0x23>
c0035e0d:	83 c1 08             	add    $0x8,%ecx
c0035e10:	c1 e2 08             	shl    $0x8,%edx
c0035e13:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
c0035e19:	75 06                	jne    c0035e21 <__hi0bits+0x31>
c0035e1b:	83 c1 04             	add    $0x4,%ecx
c0035e1e:	c1 e2 04             	shl    $0x4,%edx
c0035e21:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
c0035e27:	75 06                	jne    c0035e2f <__hi0bits+0x3f>
c0035e29:	83 c1 02             	add    $0x2,%ecx
c0035e2c:	c1 e2 02             	shl    $0x2,%edx
c0035e2f:	85 d2                	test   %edx,%edx
c0035e31:	89 c8                	mov    %ecx,%eax
c0035e33:	78 0d                	js     c0035e42 <__hi0bits+0x52>
c0035e35:	81 e2 00 00 00 40    	and    $0x40000000,%edx
c0035e3b:	b8 20 00 00 00       	mov    $0x20,%eax
c0035e40:	75 06                	jne    c0035e48 <__hi0bits+0x58>
c0035e42:	5d                   	pop    %ebp
c0035e43:	c3                   	ret    
c0035e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035e48:	8d 41 01             	lea    0x1(%ecx),%eax
c0035e4b:	5d                   	pop    %ebp
c0035e4c:	c3                   	ret    
c0035e4d:	8d 76 00             	lea    0x0(%esi),%esi

c0035e50 <__lo0bits>:
c0035e50:	55                   	push   %ebp
c0035e51:	89 e5                	mov    %esp,%ebp
c0035e53:	53                   	push   %ebx
c0035e54:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0035e57:	8b 13                	mov    (%ebx),%edx
c0035e59:	f6 c2 07             	test   $0x7,%dl
c0035e5c:	74 1a                	je     c0035e78 <__lo0bits+0x28>
c0035e5e:	31 c0                	xor    %eax,%eax
c0035e60:	f6 c2 01             	test   $0x1,%dl
c0035e63:	75 0f                	jne    c0035e74 <__lo0bits+0x24>
c0035e65:	f6 c2 02             	test   $0x2,%dl
c0035e68:	75 56                	jne    c0035ec0 <__lo0bits+0x70>
c0035e6a:	c1 ea 02             	shr    $0x2,%edx
c0035e6d:	b8 02 00 00 00       	mov    $0x2,%eax
c0035e72:	89 13                	mov    %edx,(%ebx)
c0035e74:	5b                   	pop    %ebx
c0035e75:	5d                   	pop    %ebp
c0035e76:	c3                   	ret    
c0035e77:	90                   	nop
c0035e78:	31 c9                	xor    %ecx,%ecx
c0035e7a:	66 85 d2             	test   %dx,%dx
c0035e7d:	75 05                	jne    c0035e84 <__lo0bits+0x34>
c0035e7f:	c1 ea 10             	shr    $0x10,%edx
c0035e82:	b1 10                	mov    $0x10,%cl
c0035e84:	84 d2                	test   %dl,%dl
c0035e86:	75 06                	jne    c0035e8e <__lo0bits+0x3e>
c0035e88:	83 c1 08             	add    $0x8,%ecx
c0035e8b:	c1 ea 08             	shr    $0x8,%edx
c0035e8e:	f6 c2 0f             	test   $0xf,%dl
c0035e91:	75 06                	jne    c0035e99 <__lo0bits+0x49>
c0035e93:	83 c1 04             	add    $0x4,%ecx
c0035e96:	c1 ea 04             	shr    $0x4,%edx
c0035e99:	f6 c2 03             	test   $0x3,%dl
c0035e9c:	75 06                	jne    c0035ea4 <__lo0bits+0x54>
c0035e9e:	83 c1 02             	add    $0x2,%ecx
c0035ea1:	c1 ea 02             	shr    $0x2,%edx
c0035ea4:	f6 c2 01             	test   $0x1,%dl
c0035ea7:	75 0c                	jne    c0035eb5 <__lo0bits+0x65>
c0035ea9:	d1 ea                	shr    %edx
c0035eab:	b8 20 00 00 00       	mov    $0x20,%eax
c0035eb0:	74 c2                	je     c0035e74 <__lo0bits+0x24>
c0035eb2:	83 c1 01             	add    $0x1,%ecx
c0035eb5:	89 13                	mov    %edx,(%ebx)
c0035eb7:	89 c8                	mov    %ecx,%eax
c0035eb9:	5b                   	pop    %ebx
c0035eba:	5d                   	pop    %ebp
c0035ebb:	c3                   	ret    
c0035ebc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035ec0:	d1 ea                	shr    %edx
c0035ec2:	b0 01                	mov    $0x1,%al
c0035ec4:	89 13                	mov    %edx,(%ebx)
c0035ec6:	5b                   	pop    %ebx
c0035ec7:	5d                   	pop    %ebp
c0035ec8:	c3                   	ret    
c0035ec9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035ed0 <__i2b>:
c0035ed0:	55                   	push   %ebp
c0035ed1:	89 e5                	mov    %esp,%ebp
c0035ed3:	83 ec 18             	sub    $0x18,%esp
c0035ed6:	8b 45 08             	mov    0x8(%ebp),%eax
c0035ed9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0035ee0:	00 
c0035ee1:	89 04 24             	mov    %eax,(%esp)
c0035ee4:	e8 67 fc ff ff       	call   c0035b50 <_Balloc>
c0035ee9:	8b 55 0c             	mov    0xc(%ebp),%edx
c0035eec:	89 50 14             	mov    %edx,0x14(%eax)
c0035eef:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c0035ef6:	c9                   	leave  
c0035ef7:	c3                   	ret    
c0035ef8:	90                   	nop
c0035ef9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0035f00 <__multiply>:
c0035f00:	55                   	push   %ebp
c0035f01:	89 e5                	mov    %esp,%ebp
c0035f03:	57                   	push   %edi
c0035f04:	56                   	push   %esi
c0035f05:	53                   	push   %ebx
c0035f06:	83 ec 3c             	sub    $0x3c,%esp
c0035f09:	8b 75 0c             	mov    0xc(%ebp),%esi
c0035f0c:	8b 45 10             	mov    0x10(%ebp),%eax
c0035f0f:	8b 7e 10             	mov    0x10(%esi),%edi
c0035f12:	8b 58 10             	mov    0x10(%eax),%ebx
c0035f15:	39 df                	cmp    %ebx,%edi
c0035f17:	7d 0e                	jge    c0035f27 <__multiply+0x27>
c0035f19:	89 f8                	mov    %edi,%eax
c0035f1b:	89 df                	mov    %ebx,%edi
c0035f1d:	89 c3                	mov    %eax,%ebx
c0035f1f:	89 f0                	mov    %esi,%eax
c0035f21:	8b 75 10             	mov    0x10(%ebp),%esi
c0035f24:	89 45 10             	mov    %eax,0x10(%ebp)
c0035f27:	8d 04 1f             	lea    (%edi,%ebx,1),%eax
c0035f2a:	3b 46 08             	cmp    0x8(%esi),%eax
c0035f2d:	89 45 c8             	mov    %eax,-0x38(%ebp)
c0035f30:	0f 9f c0             	setg   %al
c0035f33:	0f b6 c0             	movzbl %al,%eax
c0035f36:	03 46 04             	add    0x4(%esi),%eax
c0035f39:	89 44 24 04          	mov    %eax,0x4(%esp)
c0035f3d:	8b 45 08             	mov    0x8(%ebp),%eax
c0035f40:	89 04 24             	mov    %eax,(%esp)
c0035f43:	e8 08 fc ff ff       	call   c0035b50 <_Balloc>
c0035f48:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0035f4b:	89 45 c0             	mov    %eax,-0x40(%ebp)
c0035f4e:	8d 40 14             	lea    0x14(%eax),%eax
c0035f51:	8d 14 90             	lea    (%eax,%edx,4),%edx
c0035f54:	89 d1                	mov    %edx,%ecx
c0035f56:	39 c8                	cmp    %ecx,%eax
c0035f58:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0035f5b:	89 55 c4             	mov    %edx,-0x3c(%ebp)
c0035f5e:	73 15                	jae    c0035f75 <__multiply+0x75>
c0035f60:	8b 55 c4             	mov    -0x3c(%ebp),%edx
c0035f63:	90                   	nop
c0035f64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0035f68:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0035f6e:	83 c0 04             	add    $0x4,%eax
c0035f71:	39 c2                	cmp    %eax,%edx
c0035f73:	77 f3                	ja     c0035f68 <__multiply+0x68>
c0035f75:	8d 46 14             	lea    0x14(%esi),%eax
c0035f78:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0035f7b:	8d 04 b8             	lea    (%eax,%edi,4),%eax
c0035f7e:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0035f81:	8b 45 10             	mov    0x10(%ebp),%eax
c0035f84:	83 c0 14             	add    $0x14,%eax
c0035f87:	8d 3c 98             	lea    (%eax,%ebx,4),%edi
c0035f8a:	39 f8                	cmp    %edi,%eax
c0035f8c:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0035f8f:	89 7d cc             	mov    %edi,-0x34(%ebp)
c0035f92:	0f 83 e8 00 00 00    	jae    c0036080 <__multiply+0x180>
c0035f98:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0035f9b:	8b 00                	mov    (%eax),%eax
c0035f9d:	0f b7 f8             	movzwl %ax,%edi
c0035fa0:	85 ff                	test   %edi,%edi
c0035fa2:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0035fa5:	74 5a                	je     c0036001 <__multiply+0x101>
c0035fa7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c0035faa:	31 db                	xor    %ebx,%ebx
c0035fac:	8b 75 d0             	mov    -0x30(%ebp),%esi
c0035faf:	eb 09                	jmp    c0035fba <__multiply+0xba>
c0035fb1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0035fb8:	89 fa                	mov    %edi,%edx
c0035fba:	8b 0e                	mov    (%esi),%ecx
c0035fbc:	83 c6 04             	add    $0x4,%esi
c0035fbf:	0f b7 3a             	movzwl (%edx),%edi
c0035fc2:	0f b7 c1             	movzwl %cx,%eax
c0035fc5:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
c0035fc9:	c1 e9 10             	shr    $0x10,%ecx
c0035fcc:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0035fd0:	01 f8                	add    %edi,%eax
c0035fd2:	01 d8                	add    %ebx,%eax
c0035fd4:	8b 1a                	mov    (%edx),%ebx
c0035fd6:	8d 7a 04             	lea    0x4(%edx),%edi
c0035fd9:	c1 eb 10             	shr    $0x10,%ebx
c0035fdc:	01 d9                	add    %ebx,%ecx
c0035fde:	89 c3                	mov    %eax,%ebx
c0035fe0:	c1 eb 10             	shr    $0x10,%ebx
c0035fe3:	0f b7 c0             	movzwl %ax,%eax
c0035fe6:	01 d9                	add    %ebx,%ecx
c0035fe8:	89 cb                	mov    %ecx,%ebx
c0035fea:	c1 e1 10             	shl    $0x10,%ecx
c0035fed:	09 c1                	or     %eax,%ecx
c0035fef:	c1 eb 10             	shr    $0x10,%ebx
c0035ff2:	39 75 dc             	cmp    %esi,-0x24(%ebp)
c0035ff5:	89 0a                	mov    %ecx,(%edx)
c0035ff7:	77 bf                	ja     c0035fb8 <__multiply+0xb8>
c0035ff9:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0035ffc:	89 5a 04             	mov    %ebx,0x4(%edx)
c0035fff:	8b 00                	mov    (%eax),%eax
c0036001:	c1 e8 10             	shr    $0x10,%eax
c0036004:	85 c0                	test   %eax,%eax
c0036006:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036009:	74 61                	je     c003606c <__multiply+0x16c>
c003600b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003600e:	31 ff                	xor    %edi,%edi
c0036010:	89 fe                	mov    %edi,%esi
c0036012:	8b 10                	mov    (%eax),%edx
c0036014:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036017:	8b 45 d0             	mov    -0x30(%ebp),%eax
c003601a:	89 d3                	mov    %edx,%ebx
c003601c:	eb 05                	jmp    c0036023 <__multiply+0x123>
c003601e:	66 90                	xchg   %ax,%ax
c0036020:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036023:	0f b7 08             	movzwl (%eax),%ecx
c0036026:	c1 eb 10             	shr    $0x10,%ebx
c0036029:	0f b7 d2             	movzwl %dx,%edx
c003602c:	0f af 4d e4          	imul   -0x1c(%ebp),%ecx
c0036030:	83 c0 04             	add    $0x4,%eax
c0036033:	8d 3c 19             	lea    (%ecx,%ebx,1),%edi
c0036036:	01 f7                	add    %esi,%edi
c0036038:	8b 75 e0             	mov    -0x20(%ebp),%esi
c003603b:	89 fb                	mov    %edi,%ebx
c003603d:	c1 e3 10             	shl    $0x10,%ebx
c0036040:	09 d3                	or     %edx,%ebx
c0036042:	89 1e                	mov    %ebx,(%esi)
c0036044:	8b 5e 04             	mov    0x4(%esi),%ebx
c0036047:	8d 4e 04             	lea    0x4(%esi),%ecx
c003604a:	0f b7 50 fe          	movzwl -0x2(%eax),%edx
c003604e:	c1 ef 10             	shr    $0x10,%edi
c0036051:	0f af 55 e4          	imul   -0x1c(%ebp),%edx
c0036055:	0f b7 f3             	movzwl %bx,%esi
c0036058:	01 f2                	add    %esi,%edx
c003605a:	01 fa                	add    %edi,%edx
c003605c:	89 d6                	mov    %edx,%esi
c003605e:	c1 ee 10             	shr    $0x10,%esi
c0036061:	39 45 dc             	cmp    %eax,-0x24(%ebp)
c0036064:	77 ba                	ja     c0036020 <__multiply+0x120>
c0036066:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036069:	89 50 04             	mov    %edx,0x4(%eax)
c003606c:	83 45 d8 04          	addl   $0x4,-0x28(%ebp)
c0036070:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036073:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
c0036077:	39 45 cc             	cmp    %eax,-0x34(%ebp)
c003607a:	0f 87 18 ff ff ff    	ja     c0035f98 <__multiply+0x98>
c0036080:	8b 75 c8             	mov    -0x38(%ebp),%esi
c0036083:	85 f6                	test   %esi,%esi
c0036085:	7e 29                	jle    c00360b0 <__multiply+0x1b0>
c0036087:	8b 7d c4             	mov    -0x3c(%ebp),%edi
c003608a:	8b 5f fc             	mov    -0x4(%edi),%ebx
c003608d:	85 db                	test   %ebx,%ebx
c003608f:	75 1f                	jne    c00360b0 <__multiply+0x1b0>
c0036091:	8b 55 c8             	mov    -0x38(%ebp),%edx
c0036094:	89 d0                	mov    %edx,%eax
c0036096:	c1 e0 02             	shl    $0x2,%eax
c0036099:	29 c7                	sub    %eax,%edi
c003609b:	89 f8                	mov    %edi,%eax
c003609d:	eb 09                	jmp    c00360a8 <__multiply+0x1a8>
c003609f:	90                   	nop
c00360a0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c00360a4:	85 c9                	test   %ecx,%ecx
c00360a6:	75 05                	jne    c00360ad <__multiply+0x1ad>
c00360a8:	83 ea 01             	sub    $0x1,%edx
c00360ab:	75 f3                	jne    c00360a0 <__multiply+0x1a0>
c00360ad:	89 55 c8             	mov    %edx,-0x38(%ebp)
c00360b0:	8b 45 c0             	mov    -0x40(%ebp),%eax
c00360b3:	8b 7d c8             	mov    -0x38(%ebp),%edi
c00360b6:	89 78 10             	mov    %edi,0x10(%eax)
c00360b9:	83 c4 3c             	add    $0x3c,%esp
c00360bc:	5b                   	pop    %ebx
c00360bd:	5e                   	pop    %esi
c00360be:	5f                   	pop    %edi
c00360bf:	5d                   	pop    %ebp
c00360c0:	c3                   	ret    
c00360c1:	eb 0d                	jmp    c00360d0 <__pow5mult>
c00360c3:	90                   	nop
c00360c4:	90                   	nop
c00360c5:	90                   	nop
c00360c6:	90                   	nop
c00360c7:	90                   	nop
c00360c8:	90                   	nop
c00360c9:	90                   	nop
c00360ca:	90                   	nop
c00360cb:	90                   	nop
c00360cc:	90                   	nop
c00360cd:	90                   	nop
c00360ce:	90                   	nop
c00360cf:	90                   	nop

c00360d0 <__pow5mult>:
c00360d0:	55                   	push   %ebp
c00360d1:	89 e5                	mov    %esp,%ebp
c00360d3:	57                   	push   %edi
c00360d4:	56                   	push   %esi
c00360d5:	53                   	push   %ebx
c00360d6:	83 ec 2c             	sub    $0x2c,%esp
c00360d9:	8b 5d 10             	mov    0x10(%ebp),%ebx
c00360dc:	8b 4d 08             	mov    0x8(%ebp),%ecx
c00360df:	8b 7d 0c             	mov    0xc(%ebp),%edi
c00360e2:	89 d8                	mov    %ebx,%eax
c00360e4:	83 e0 03             	and    $0x3,%eax
c00360e7:	0f 85 a3 00 00 00    	jne    c0036190 <__pow5mult+0xc0>
c00360ed:	c1 fb 02             	sar    $0x2,%ebx
c00360f0:	85 db                	test   %ebx,%ebx
c00360f2:	74 5c                	je     c0036150 <__pow5mult+0x80>
c00360f4:	8b 71 48             	mov    0x48(%ecx),%esi
c00360f7:	85 f6                	test   %esi,%esi
c00360f9:	0f 84 bd 00 00 00    	je     c00361bc <__pow5mult+0xec>
c00360ff:	f6 c3 01             	test   $0x1,%bl
c0036102:	75 15                	jne    c0036119 <__pow5mult+0x49>
c0036104:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036108:	d1 fb                	sar    %ebx
c003610a:	74 44                	je     c0036150 <__pow5mult+0x80>
c003610c:	8b 06                	mov    (%esi),%eax
c003610e:	85 c0                	test   %eax,%eax
c0036110:	74 4e                	je     c0036160 <__pow5mult+0x90>
c0036112:	89 c6                	mov    %eax,%esi
c0036114:	f6 c3 01             	test   $0x1,%bl
c0036117:	74 ef                	je     c0036108 <__pow5mult+0x38>
c0036119:	89 0c 24             	mov    %ecx,(%esp)
c003611c:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036120:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0036124:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036127:	e8 d4 fd ff ff       	call   c0035f00 <__multiply>
c003612c:	85 ff                	test   %edi,%edi
c003612e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036131:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036134:	74 52                	je     c0036188 <__pow5mult+0xb8>
c0036136:	8b 57 04             	mov    0x4(%edi),%edx
c0036139:	d1 fb                	sar    %ebx
c003613b:	8b 41 4c             	mov    0x4c(%ecx),%eax
c003613e:	8d 04 90             	lea    (%eax,%edx,4),%eax
c0036141:	8b 10                	mov    (%eax),%edx
c0036143:	89 17                	mov    %edx,(%edi)
c0036145:	89 38                	mov    %edi,(%eax)
c0036147:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003614a:	75 c0                	jne    c003610c <__pow5mult+0x3c>
c003614c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036150:	83 c4 2c             	add    $0x2c,%esp
c0036153:	89 f8                	mov    %edi,%eax
c0036155:	5b                   	pop    %ebx
c0036156:	5e                   	pop    %esi
c0036157:	5f                   	pop    %edi
c0036158:	5d                   	pop    %ebp
c0036159:	c3                   	ret    
c003615a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036160:	89 74 24 08          	mov    %esi,0x8(%esp)
c0036164:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036168:	89 0c 24             	mov    %ecx,(%esp)
c003616b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c003616e:	e8 8d fd ff ff       	call   c0035f00 <__multiply>
c0036173:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036176:	89 06                	mov    %eax,(%esi)
c0036178:	89 c6                	mov    %eax,%esi
c003617a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c0036180:	eb 92                	jmp    c0036114 <__pow5mult+0x44>
c0036182:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036188:	8b 7d e0             	mov    -0x20(%ebp),%edi
c003618b:	e9 78 ff ff ff       	jmp    c0036108 <__pow5mult+0x38>
c0036190:	8b 04 85 5c 90 03 c0 	mov    -0x3ffc6fa4(,%eax,4),%eax
c0036197:	89 7c 24 04          	mov    %edi,0x4(%esp)
c003619b:	89 0c 24             	mov    %ecx,(%esp)
c003619e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
c00361a5:	00 
c00361a6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00361aa:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361ad:	e8 5e fa ff ff       	call   c0035c10 <__multadd>
c00361b2:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361b5:	89 c7                	mov    %eax,%edi
c00361b7:	e9 31 ff ff ff       	jmp    c00360ed <__pow5mult+0x1d>
c00361bc:	89 0c 24             	mov    %ecx,(%esp)
c00361bf:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c00361c6:	00 
c00361c7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00361ca:	e8 81 f9 ff ff       	call   c0035b50 <_Balloc>
c00361cf:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c00361d2:	c7 40 14 71 02 00 00 	movl   $0x271,0x14(%eax)
c00361d9:	89 c6                	mov    %eax,%esi
c00361db:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00361e2:	89 41 48             	mov    %eax,0x48(%ecx)
c00361e5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
c00361eb:	e9 0f ff ff ff       	jmp    c00360ff <__pow5mult+0x2f>

c00361f0 <__lshift>:
c00361f0:	55                   	push   %ebp
c00361f1:	89 e5                	mov    %esp,%ebp
c00361f3:	57                   	push   %edi
c00361f4:	56                   	push   %esi
c00361f5:	53                   	push   %ebx
c00361f6:	83 ec 2c             	sub    $0x2c,%esp
c00361f9:	8b 45 0c             	mov    0xc(%ebp),%eax
c00361fc:	8b 75 10             	mov    0x10(%ebp),%esi
c00361ff:	89 c7                	mov    %eax,%edi
c0036201:	8b 50 04             	mov    0x4(%eax),%edx
c0036204:	8b 40 10             	mov    0x10(%eax),%eax
c0036207:	89 f3                	mov    %esi,%ebx
c0036209:	c1 fb 05             	sar    $0x5,%ebx
c003620c:	01 d8                	add    %ebx,%eax
c003620e:	89 45 d0             	mov    %eax,-0x30(%ebp)
c0036211:	83 c0 01             	add    $0x1,%eax
c0036214:	89 c1                	mov    %eax,%ecx
c0036216:	89 45 d8             	mov    %eax,-0x28(%ebp)
c0036219:	8b 47 08             	mov    0x8(%edi),%eax
c003621c:	39 c1                	cmp    %eax,%ecx
c003621e:	7e 09                	jle    c0036229 <__lshift+0x39>
c0036220:	01 c0                	add    %eax,%eax
c0036222:	83 c2 01             	add    $0x1,%edx
c0036225:	39 c1                	cmp    %eax,%ecx
c0036227:	7f f7                	jg     c0036220 <__lshift+0x30>
c0036229:	8b 45 08             	mov    0x8(%ebp),%eax
c003622c:	89 54 24 04          	mov    %edx,0x4(%esp)
c0036230:	89 04 24             	mov    %eax,(%esp)
c0036233:	e8 18 f9 ff ff       	call   c0035b50 <_Balloc>
c0036238:	85 db                	test   %ebx,%ebx
c003623a:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003623d:	8d 50 14             	lea    0x14(%eax),%edx
c0036240:	7e 17                	jle    c0036259 <__lshift+0x69>
c0036242:	31 c0                	xor    %eax,%eax
c0036244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036248:	c7 04 82 00 00 00 00 	movl   $0x0,(%edx,%eax,4)
c003624f:	83 c0 01             	add    $0x1,%eax
c0036252:	39 d8                	cmp    %ebx,%eax
c0036254:	75 f2                	jne    c0036248 <__lshift+0x58>
c0036256:	8d 14 82             	lea    (%edx,%eax,4),%edx
c0036259:	8b 7d 0c             	mov    0xc(%ebp),%edi
c003625c:	8b 45 0c             	mov    0xc(%ebp),%eax
c003625f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036262:	83 c0 14             	add    $0x14,%eax
c0036265:	83 e6 1f             	and    $0x1f,%esi
c0036268:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003626b:	8d 3c 88             	lea    (%eax,%ecx,4),%edi
c003626e:	89 7d e4             	mov    %edi,-0x1c(%ebp)
c0036271:	74 7d                	je     c00362f0 <__lshift+0x100>
c0036273:	c7 45 dc 20 00 00 00 	movl   $0x20,-0x24(%ebp)
c003627a:	29 75 dc             	sub    %esi,-0x24(%ebp)
c003627d:	31 f6                	xor    %esi,%esi
c003627f:	eb 09                	jmp    c003628a <__lshift+0x9a>
c0036281:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036288:	89 fa                	mov    %edi,%edx
c003628a:	8b 18                	mov    (%eax),%ebx
c003628c:	83 c0 04             	add    $0x4,%eax
c003628f:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c0036293:	8d 7a 04             	lea    0x4(%edx),%edi
c0036296:	d3 e3                	shl    %cl,%ebx
c0036298:	0f b6 4d dc          	movzbl -0x24(%ebp),%ecx
c003629c:	09 f3                	or     %esi,%ebx
c003629e:	89 1a                	mov    %ebx,(%edx)
c00362a0:	8b 70 fc             	mov    -0x4(%eax),%esi
c00362a3:	d3 ee                	shr    %cl,%esi
c00362a5:	39 45 e4             	cmp    %eax,-0x1c(%ebp)
c00362a8:	77 de                	ja     c0036288 <__lshift+0x98>
c00362aa:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00362ad:	89 72 04             	mov    %esi,0x4(%edx)
c00362b0:	83 c0 02             	add    $0x2,%eax
c00362b3:	85 f6                	test   %esi,%esi
c00362b5:	0f 44 45 d8          	cmove  -0x28(%ebp),%eax
c00362b9:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00362bc:	8b 45 d8             	mov    -0x28(%ebp),%eax
c00362bf:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00362c2:	8b 75 0c             	mov    0xc(%ebp),%esi
c00362c5:	83 e8 01             	sub    $0x1,%eax
c00362c8:	89 47 10             	mov    %eax,0x10(%edi)
c00362cb:	8b 45 0c             	mov    0xc(%ebp),%eax
c00362ce:	8b 50 04             	mov    0x4(%eax),%edx
c00362d1:	8b 45 08             	mov    0x8(%ebp),%eax
c00362d4:	8b 40 4c             	mov    0x4c(%eax),%eax
c00362d7:	8d 04 90             	lea    (%eax,%edx,4),%eax
c00362da:	8b 10                	mov    (%eax),%edx
c00362dc:	89 16                	mov    %edx,(%esi)
c00362de:	89 30                	mov    %esi,(%eax)
c00362e0:	83 c4 2c             	add    $0x2c,%esp
c00362e3:	89 f8                	mov    %edi,%eax
c00362e5:	5b                   	pop    %ebx
c00362e6:	5e                   	pop    %esi
c00362e7:	5f                   	pop    %edi
c00362e8:	5d                   	pop    %ebp
c00362e9:	c3                   	ret    
c00362ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00362f0:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
c00362f3:	90                   	nop
c00362f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00362f8:	83 c0 04             	add    $0x4,%eax
c00362fb:	8b 48 fc             	mov    -0x4(%eax),%ecx
c00362fe:	83 c2 04             	add    $0x4,%edx
c0036301:	39 c3                	cmp    %eax,%ebx
c0036303:	89 4a fc             	mov    %ecx,-0x4(%edx)
c0036306:	77 f0                	ja     c00362f8 <__lshift+0x108>
c0036308:	eb b2                	jmp    c00362bc <__lshift+0xcc>
c003630a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

c0036310 <__mcmp>:
c0036310:	55                   	push   %ebp
c0036311:	89 e5                	mov    %esp,%ebp
c0036313:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036316:	8b 55 0c             	mov    0xc(%ebp),%edx
c0036319:	53                   	push   %ebx
c003631a:	8b 41 10             	mov    0x10(%ecx),%eax
c003631d:	8b 5a 10             	mov    0x10(%edx),%ebx
c0036320:	29 d8                	sub    %ebx,%eax
c0036322:	85 c0                	test   %eax,%eax
c0036324:	75 27                	jne    c003634d <__mcmp+0x3d>
c0036326:	c1 e3 02             	shl    $0x2,%ebx
c0036329:	83 c1 14             	add    $0x14,%ecx
c003632c:	8d 04 19             	lea    (%ecx,%ebx,1),%eax
c003632f:	8d 54 1a 14          	lea    0x14(%edx,%ebx,1),%edx
c0036333:	eb 07                	jmp    c003633c <__mcmp+0x2c>
c0036335:	8d 76 00             	lea    0x0(%esi),%esi
c0036338:	39 c1                	cmp    %eax,%ecx
c003633a:	73 14                	jae    c0036350 <__mcmp+0x40>
c003633c:	83 ea 04             	sub    $0x4,%edx
c003633f:	83 e8 04             	sub    $0x4,%eax
c0036342:	8b 1a                	mov    (%edx),%ebx
c0036344:	39 18                	cmp    %ebx,(%eax)
c0036346:	74 f0                	je     c0036338 <__mcmp+0x28>
c0036348:	19 c0                	sbb    %eax,%eax
c003634a:	83 c8 01             	or     $0x1,%eax
c003634d:	5b                   	pop    %ebx
c003634e:	5d                   	pop    %ebp
c003634f:	c3                   	ret    
c0036350:	31 c0                	xor    %eax,%eax
c0036352:	5b                   	pop    %ebx
c0036353:	5d                   	pop    %ebp
c0036354:	c3                   	ret    
c0036355:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036359:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036360 <__mdiff>:
c0036360:	55                   	push   %ebp
c0036361:	89 e5                	mov    %esp,%ebp
c0036363:	57                   	push   %edi
c0036364:	56                   	push   %esi
c0036365:	53                   	push   %ebx
c0036366:	83 ec 2c             	sub    $0x2c,%esp
c0036369:	8b 75 0c             	mov    0xc(%ebp),%esi
c003636c:	8b 5d 10             	mov    0x10(%ebp),%ebx
c003636f:	89 34 24             	mov    %esi,(%esp)
c0036372:	89 5c 24 04          	mov    %ebx,0x4(%esp)
c0036376:	e8 95 ff ff ff       	call   c0036310 <__mcmp>
c003637b:	85 c0                	test   %eax,%eax
c003637d:	0f 84 25 01 00 00    	je     c00364a8 <__mdiff+0x148>
c0036383:	0f 88 0f 01 00 00    	js     c0036498 <__mdiff+0x138>
c0036389:	31 ff                	xor    %edi,%edi
c003638b:	8b 46 04             	mov    0x4(%esi),%eax
c003638e:	83 c6 14             	add    $0x14,%esi
c0036391:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036395:	8b 45 08             	mov    0x8(%ebp),%eax
c0036398:	89 04 24             	mov    %eax,(%esp)
c003639b:	e8 b0 f7 ff ff       	call   c0035b50 <_Balloc>
c00363a0:	8d 4b 14             	lea    0x14(%ebx),%ecx
c00363a3:	89 c2                	mov    %eax,%edx
c00363a5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c00363a8:	89 78 0c             	mov    %edi,0xc(%eax)
c00363ab:	8b 46 fc             	mov    -0x4(%esi),%eax
c00363ae:	89 75 e4             	mov    %esi,-0x1c(%ebp)
c00363b1:	89 45 dc             	mov    %eax,-0x24(%ebp)
c00363b4:	8d 04 86             	lea    (%esi,%eax,4),%eax
c00363b7:	89 45 d8             	mov    %eax,-0x28(%ebp)
c00363ba:	8b 43 10             	mov    0x10(%ebx),%eax
c00363bd:	31 db                	xor    %ebx,%ebx
c00363bf:	8d 04 81             	lea    (%ecx,%eax,4),%eax
c00363c2:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00363c5:	89 d0                	mov    %edx,%eax
c00363c7:	83 c0 14             	add    $0x14,%eax
c00363ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00363d0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00363d3:	83 c0 04             	add    $0x4,%eax
c00363d6:	83 c1 04             	add    $0x4,%ecx
c00363d9:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
c00363dd:	8b 3e                	mov    (%esi),%edi
c00363df:	8b 71 fc             	mov    -0x4(%ecx),%esi
c00363e2:	0f b7 d7             	movzwl %di,%edx
c00363e5:	01 da                	add    %ebx,%edx
c00363e7:	0f b7 de             	movzwl %si,%ebx
c00363ea:	29 da                	sub    %ebx,%edx
c00363ec:	c1 ef 10             	shr    $0x10,%edi
c00363ef:	89 d3                	mov    %edx,%ebx
c00363f1:	c1 ee 10             	shr    $0x10,%esi
c00363f4:	0f b7 d2             	movzwl %dx,%edx
c00363f7:	c1 fb 10             	sar    $0x10,%ebx
c00363fa:	29 f7                	sub    %esi,%edi
c00363fc:	01 df                	add    %ebx,%edi
c00363fe:	89 fb                	mov    %edi,%ebx
c0036400:	c1 e7 10             	shl    $0x10,%edi
c0036403:	09 d7                	or     %edx,%edi
c0036405:	c1 fb 10             	sar    $0x10,%ebx
c0036408:	39 4d e0             	cmp    %ecx,-0x20(%ebp)
c003640b:	89 78 fc             	mov    %edi,-0x4(%eax)
c003640e:	77 c0                	ja     c00363d0 <__mdiff+0x70>
c0036410:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c0036413:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036416:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0036419:	89 75 e0             	mov    %esi,-0x20(%ebp)
c003641c:	39 f1                	cmp    %esi,%ecx
c003641e:	76 3f                	jbe    c003645f <__mdiff+0xff>
c0036420:	8b 3e                	mov    (%esi),%edi
c0036422:	83 c6 04             	add    $0x4,%esi
c0036425:	83 c0 04             	add    $0x4,%eax
c0036428:	0f b7 d7             	movzwl %di,%edx
c003642b:	01 da                	add    %ebx,%edx
c003642d:	89 d3                	mov    %edx,%ebx
c003642f:	0f b7 d2             	movzwl %dx,%edx
c0036432:	c1 fb 10             	sar    $0x10,%ebx
c0036435:	c1 ef 10             	shr    $0x10,%edi
c0036438:	01 df                	add    %ebx,%edi
c003643a:	89 fb                	mov    %edi,%ebx
c003643c:	c1 e7 10             	shl    $0x10,%edi
c003643f:	09 d7                	or     %edx,%edi
c0036441:	c1 fb 10             	sar    $0x10,%ebx
c0036444:	39 f1                	cmp    %esi,%ecx
c0036446:	89 78 fc             	mov    %edi,-0x4(%eax)
c0036449:	77 d5                	ja     c0036420 <__mdiff+0xc0>
c003644b:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003644e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
c0036451:	f7 d0                	not    %eax
c0036453:	01 c8                	add    %ecx,%eax
c0036455:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036458:	c1 e8 02             	shr    $0x2,%eax
c003645b:	8d 44 81 04          	lea    0x4(%ecx,%eax,4),%eax
c003645f:	85 ff                	test   %edi,%edi
c0036461:	75 23                	jne    c0036486 <__mdiff+0x126>
c0036463:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c0036466:	8d 14 8d 00 00 00 00 	lea    0x0(,%ecx,4),%edx
c003646d:	29 d0                	sub    %edx,%eax
c003646f:	89 ca                	mov    %ecx,%edx
c0036471:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036478:	83 ea 01             	sub    $0x1,%edx
c003647b:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
c003647f:	85 c9                	test   %ecx,%ecx
c0036481:	74 f5                	je     c0036478 <__mdiff+0x118>
c0036483:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036486:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c0036489:	8b 4d dc             	mov    -0x24(%ebp),%ecx
c003648c:	89 48 10             	mov    %ecx,0x10(%eax)
c003648f:	83 c4 2c             	add    $0x2c,%esp
c0036492:	5b                   	pop    %ebx
c0036493:	5e                   	pop    %esi
c0036494:	5f                   	pop    %edi
c0036495:	5d                   	pop    %ebp
c0036496:	c3                   	ret    
c0036497:	90                   	nop
c0036498:	89 f0                	mov    %esi,%eax
c003649a:	bf 01 00 00 00       	mov    $0x1,%edi
c003649f:	89 de                	mov    %ebx,%esi
c00364a1:	89 c3                	mov    %eax,%ebx
c00364a3:	e9 e3 fe ff ff       	jmp    c003638b <__mdiff+0x2b>
c00364a8:	8b 45 08             	mov    0x8(%ebp),%eax
c00364ab:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c00364b2:	00 
c00364b3:	89 04 24             	mov    %eax,(%esp)
c00364b6:	e8 95 f6 ff ff       	call   c0035b50 <_Balloc>
c00364bb:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
c00364c2:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
c00364c9:	83 c4 2c             	add    $0x2c,%esp
c00364cc:	5b                   	pop    %ebx
c00364cd:	5e                   	pop    %esi
c00364ce:	5f                   	pop    %edi
c00364cf:	5d                   	pop    %ebp
c00364d0:	c3                   	ret    
c00364d1:	eb 0d                	jmp    c00364e0 <__ulp>
c00364d3:	90                   	nop
c00364d4:	90                   	nop
c00364d5:	90                   	nop
c00364d6:	90                   	nop
c00364d7:	90                   	nop
c00364d8:	90                   	nop
c00364d9:	90                   	nop
c00364da:	90                   	nop
c00364db:	90                   	nop
c00364dc:	90                   	nop
c00364dd:	90                   	nop
c00364de:	90                   	nop
c00364df:	90                   	nop

c00364e0 <__ulp>:
c00364e0:	55                   	push   %ebp
c00364e1:	89 e5                	mov    %esp,%ebp
c00364e3:	83 ec 08             	sub    $0x8,%esp
c00364e6:	dd 45 08             	fldl   0x8(%ebp)
c00364e9:	dd 5d f8             	fstpl  -0x8(%ebp)
c00364ec:	8b 4d fc             	mov    -0x4(%ebp),%ecx
c00364ef:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
c00364f5:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
c00364fb:	85 c9                	test   %ecx,%ecx
c00364fd:	7e 11                	jle    c0036510 <__ulp+0x30>
c00364ff:	89 4d fc             	mov    %ecx,-0x4(%ebp)
c0036502:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036509:	dd 45 f8             	fldl   -0x8(%ebp)
c003650c:	c9                   	leave  
c003650d:	c3                   	ret    
c003650e:	66 90                	xchg   %ax,%ax
c0036510:	f7 d9                	neg    %ecx
c0036512:	c1 f9 14             	sar    $0x14,%ecx
c0036515:	83 f9 13             	cmp    $0x13,%ecx
c0036518:	7e 26                	jle    c0036540 <__ulp+0x60>
c003651a:	83 f9 32             	cmp    $0x32,%ecx
c003651d:	b8 01 00 00 00       	mov    $0x1,%eax
c0036522:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
c0036529:	7f 0b                	jg     c0036536 <__ulp+0x56>
c003652b:	ba 33 00 00 00       	mov    $0x33,%edx
c0036530:	29 ca                	sub    %ecx,%edx
c0036532:	89 d1                	mov    %edx,%ecx
c0036534:	d3 e0                	shl    %cl,%eax
c0036536:	89 45 f8             	mov    %eax,-0x8(%ebp)
c0036539:	dd 45 f8             	fldl   -0x8(%ebp)
c003653c:	c9                   	leave  
c003653d:	c3                   	ret    
c003653e:	66 90                	xchg   %ax,%ax
c0036540:	b8 00 00 08 00       	mov    $0x80000,%eax
c0036545:	d3 f8                	sar    %cl,%eax
c0036547:	89 45 fc             	mov    %eax,-0x4(%ebp)
c003654a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
c0036551:	dd 45 f8             	fldl   -0x8(%ebp)
c0036554:	c9                   	leave  
c0036555:	c3                   	ret    
c0036556:	8d 76 00             	lea    0x0(%esi),%esi
c0036559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036560 <__b2d>:
c0036560:	55                   	push   %ebp
c0036561:	89 e5                	mov    %esp,%ebp
c0036563:	57                   	push   %edi
c0036564:	56                   	push   %esi
c0036565:	53                   	push   %ebx
c0036566:	83 ec 18             	sub    $0x18,%esp
c0036569:	8b 45 08             	mov    0x8(%ebp),%eax
c003656c:	8d 78 14             	lea    0x14(%eax),%edi
c003656f:	8b 40 10             	mov    0x10(%eax),%eax
c0036572:	8d 1c 87             	lea    (%edi,%eax,4),%ebx
c0036575:	8b 73 fc             	mov    -0x4(%ebx),%esi
c0036578:	8d 43 fc             	lea    -0x4(%ebx),%eax
c003657b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c003657e:	89 34 24             	mov    %esi,(%esp)
c0036581:	e8 6a f8 ff ff       	call   c0035df0 <__hi0bits>
c0036586:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c0036589:	ba 20 00 00 00       	mov    $0x20,%edx
c003658e:	29 c2                	sub    %eax,%edx
c0036590:	83 f8 0a             	cmp    $0xa,%eax
c0036593:	89 11                	mov    %edx,(%ecx)
c0036595:	7f 41                	jg     c00365d8 <__b2d+0x78>
c0036597:	b9 0b 00 00 00       	mov    $0xb,%ecx
c003659c:	89 f2                	mov    %esi,%edx
c003659e:	29 c1                	sub    %eax,%ecx
c00365a0:	d3 ea                	shr    %cl,%edx
c00365a2:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
c00365a8:	89 55 ec             	mov    %edx,-0x14(%ebp)
c00365ab:	31 d2                	xor    %edx,%edx
c00365ad:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00365b0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c00365b7:	73 05                	jae    c00365be <__b2d+0x5e>
c00365b9:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00365bc:	d3 ea                	shr    %cl,%edx
c00365be:	8d 48 15             	lea    0x15(%eax),%ecx
c00365c1:	d3 e6                	shl    %cl,%esi
c00365c3:	09 f2                	or     %esi,%edx
c00365c5:	89 55 e8             	mov    %edx,-0x18(%ebp)
c00365c8:	dd 45 e8             	fldl   -0x18(%ebp)
c00365cb:	83 c4 18             	add    $0x18,%esp
c00365ce:	5b                   	pop    %ebx
c00365cf:	5e                   	pop    %esi
c00365d0:	5f                   	pop    %edi
c00365d1:	5d                   	pop    %ebp
c00365d2:	c3                   	ret    
c00365d3:	90                   	nop
c00365d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00365d8:	31 d2                	xor    %edx,%edx
c00365da:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
c00365dd:	73 09                	jae    c00365e8 <__b2d+0x88>
c00365df:	8b 53 f8             	mov    -0x8(%ebx),%edx
c00365e2:	8d 4b f8             	lea    -0x8(%ebx),%ecx
c00365e5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c00365e8:	89 c3                	mov    %eax,%ebx
c00365ea:	83 eb 0b             	sub    $0xb,%ebx
c00365ed:	89 5d e0             	mov    %ebx,-0x20(%ebp)
c00365f0:	74 4e                	je     c0036640 <__b2d+0xe0>
c00365f2:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c00365f6:	bb 2b 00 00 00       	mov    $0x2b,%ebx
c00365fb:	29 c3                	sub    %eax,%ebx
c00365fd:	89 d0                	mov    %edx,%eax
c00365ff:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
c0036606:	d3 e6                	shl    %cl,%esi
c0036608:	89 d9                	mov    %ebx,%ecx
c003660a:	d3 e8                	shr    %cl,%eax
c003660c:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c003660f:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036615:	09 c6                	or     %eax,%esi
c0036617:	31 c0                	xor    %eax,%eax
c0036619:	89 75 ec             	mov    %esi,-0x14(%ebp)
c003661c:	39 f9                	cmp    %edi,%ecx
c003661e:	76 07                	jbe    c0036627 <__b2d+0xc7>
c0036620:	8b 41 fc             	mov    -0x4(%ecx),%eax
c0036623:	89 d9                	mov    %ebx,%ecx
c0036625:	d3 e8                	shr    %cl,%eax
c0036627:	0f b6 4d e0          	movzbl -0x20(%ebp),%ecx
c003662b:	d3 e2                	shl    %cl,%edx
c003662d:	09 d0                	or     %edx,%eax
c003662f:	89 45 e8             	mov    %eax,-0x18(%ebp)
c0036632:	dd 45 e8             	fldl   -0x18(%ebp)
c0036635:	83 c4 18             	add    $0x18,%esp
c0036638:	5b                   	pop    %ebx
c0036639:	5e                   	pop    %esi
c003663a:	5f                   	pop    %edi
c003663b:	5d                   	pop    %ebp
c003663c:	c3                   	ret    
c003663d:	8d 76 00             	lea    0x0(%esi),%esi
c0036640:	81 ce 00 00 f0 3f    	or     $0x3ff00000,%esi
c0036646:	89 75 ec             	mov    %esi,-0x14(%ebp)
c0036649:	89 55 e8             	mov    %edx,-0x18(%ebp)
c003664c:	dd 45 e8             	fldl   -0x18(%ebp)
c003664f:	83 c4 18             	add    $0x18,%esp
c0036652:	5b                   	pop    %ebx
c0036653:	5e                   	pop    %esi
c0036654:	5f                   	pop    %edi
c0036655:	5d                   	pop    %ebp
c0036656:	c3                   	ret    
c0036657:	89 f6                	mov    %esi,%esi
c0036659:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036660 <__d2b>:
c0036660:	55                   	push   %ebp
c0036661:	89 e5                	mov    %esp,%ebp
c0036663:	57                   	push   %edi
c0036664:	56                   	push   %esi
c0036665:	53                   	push   %ebx
c0036666:	83 ec 2c             	sub    $0x2c,%esp
c0036669:	8b 45 08             	mov    0x8(%ebp),%eax
c003666c:	dd 45 0c             	fldl   0xc(%ebp)
c003666f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
c0036676:	00 
c0036677:	dd 5d d0             	fstpl  -0x30(%ebp)
c003667a:	89 04 24             	mov    %eax,(%esp)
c003667d:	e8 ce f4 ff ff       	call   c0035b50 <_Balloc>
c0036682:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
c0036685:	89 c6                	mov    %eax,%esi
c0036687:	89 d8                	mov    %ebx,%eax
c0036689:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
c003668f:	25 ff ff 0f 00       	and    $0xfffff,%eax
c0036694:	c1 eb 14             	shr    $0x14,%ebx
c0036697:	85 db                	test   %ebx,%ebx
c0036699:	74 05                	je     c00366a0 <__d2b+0x40>
c003669b:	0d 00 00 10 00       	or     $0x100000,%eax
c00366a0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c00366a3:	8b 45 d0             	mov    -0x30(%ebp),%eax
c00366a6:	85 c0                	test   %eax,%eax
c00366a8:	74 56                	je     c0036700 <__d2b+0xa0>
c00366aa:	89 45 e0             	mov    %eax,-0x20(%ebp)
c00366ad:	8d 45 e0             	lea    -0x20(%ebp),%eax
c00366b0:	89 04 24             	mov    %eax,(%esp)
c00366b3:	e8 98 f7 ff ff       	call   c0035e50 <__lo0bits>
c00366b8:	85 c0                	test   %eax,%eax
c00366ba:	0f 85 90 00 00 00    	jne    c0036750 <__d2b+0xf0>
c00366c0:	8b 55 e0             	mov    -0x20(%ebp),%edx
c00366c3:	89 56 14             	mov    %edx,0x14(%esi)
c00366c6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c00366c9:	83 fa 01             	cmp    $0x1,%edx
c00366cc:	19 ff                	sbb    %edi,%edi
c00366ce:	83 c7 02             	add    $0x2,%edi
c00366d1:	85 db                	test   %ebx,%ebx
c00366d3:	89 56 18             	mov    %edx,0x18(%esi)
c00366d6:	89 7e 10             	mov    %edi,0x10(%esi)
c00366d9:	74 49                	je     c0036724 <__d2b+0xc4>
c00366db:	8b 4d 14             	mov    0x14(%ebp),%ecx
c00366de:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
c00366e5:	89 11                	mov    %edx,(%ecx)
c00366e7:	ba 35 00 00 00       	mov    $0x35,%edx
c00366ec:	29 c2                	sub    %eax,%edx
c00366ee:	8b 45 18             	mov    0x18(%ebp),%eax
c00366f1:	89 10                	mov    %edx,(%eax)
c00366f3:	83 c4 2c             	add    $0x2c,%esp
c00366f6:	89 f0                	mov    %esi,%eax
c00366f8:	5b                   	pop    %ebx
c00366f9:	5e                   	pop    %esi
c00366fa:	5f                   	pop    %edi
c00366fb:	5d                   	pop    %ebp
c00366fc:	c3                   	ret    
c00366fd:	8d 76 00             	lea    0x0(%esi),%esi
c0036700:	8d 45 e4             	lea    -0x1c(%ebp),%eax
c0036703:	bf 01 00 00 00       	mov    $0x1,%edi
c0036708:	89 04 24             	mov    %eax,(%esp)
c003670b:	e8 40 f7 ff ff       	call   c0035e50 <__lo0bits>
c0036710:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036713:	c7 46 10 01 00 00 00 	movl   $0x1,0x10(%esi)
c003671a:	89 56 14             	mov    %edx,0x14(%esi)
c003671d:	83 c0 20             	add    $0x20,%eax
c0036720:	85 db                	test   %ebx,%ebx
c0036722:	75 b7                	jne    c00366db <__d2b+0x7b>
c0036724:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0036727:	2d 32 04 00 00       	sub    $0x432,%eax
c003672c:	89 01                	mov    %eax,(%ecx)
c003672e:	8b 44 be 10          	mov    0x10(%esi,%edi,4),%eax
c0036732:	c1 e7 05             	shl    $0x5,%edi
c0036735:	89 04 24             	mov    %eax,(%esp)
c0036738:	e8 b3 f6 ff ff       	call   c0035df0 <__hi0bits>
c003673d:	29 c7                	sub    %eax,%edi
c003673f:	8b 45 18             	mov    0x18(%ebp),%eax
c0036742:	89 38                	mov    %edi,(%eax)
c0036744:	83 c4 2c             	add    $0x2c,%esp
c0036747:	89 f0                	mov    %esi,%eax
c0036749:	5b                   	pop    %ebx
c003674a:	5e                   	pop    %esi
c003674b:	5f                   	pop    %edi
c003674c:	5d                   	pop    %ebp
c003674d:	c3                   	ret    
c003674e:	66 90                	xchg   %ax,%ax
c0036750:	8b 55 e4             	mov    -0x1c(%ebp),%edx
c0036753:	b9 20 00 00 00       	mov    $0x20,%ecx
c0036758:	29 c1                	sub    %eax,%ecx
c003675a:	89 d7                	mov    %edx,%edi
c003675c:	d3 e7                	shl    %cl,%edi
c003675e:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036761:	09 f9                	or     %edi,%ecx
c0036763:	89 4e 14             	mov    %ecx,0x14(%esi)
c0036766:	89 c1                	mov    %eax,%ecx
c0036768:	d3 ea                	shr    %cl,%edx
c003676a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c003676d:	e9 57 ff ff ff       	jmp    c00366c9 <__d2b+0x69>
c0036772:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0036780 <__ratio>:
c0036780:	55                   	push   %ebp
c0036781:	89 e5                	mov    %esp,%ebp
c0036783:	56                   	push   %esi
c0036784:	53                   	push   %ebx
c0036785:	83 ec 30             	sub    $0x30,%esp
c0036788:	8b 75 08             	mov    0x8(%ebp),%esi
c003678b:	8d 45 f0             	lea    -0x10(%ebp),%eax
c003678e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036791:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036795:	89 34 24             	mov    %esi,(%esp)
c0036798:	e8 c3 fd ff ff       	call   c0036560 <__b2d>
c003679d:	8d 45 f4             	lea    -0xc(%ebp),%eax
c00367a0:	89 44 24 04          	mov    %eax,0x4(%esp)
c00367a4:	89 1c 24             	mov    %ebx,(%esp)
c00367a7:	dd 55 e0             	fstl   -0x20(%ebp)
c00367aa:	dd 5d d8             	fstpl  -0x28(%ebp)
c00367ad:	e8 ae fd ff ff       	call   c0036560 <__b2d>
c00367b2:	8b 46 10             	mov    0x10(%esi),%eax
c00367b5:	2b 43 10             	sub    0x10(%ebx),%eax
c00367b8:	8b 55 f0             	mov    -0x10(%ebp),%edx
c00367bb:	2b 55 f4             	sub    -0xc(%ebp),%edx
c00367be:	c1 e0 05             	shl    $0x5,%eax
c00367c1:	01 d0                	add    %edx,%eax
c00367c3:	dd 55 d0             	fstl   -0x30(%ebp)
c00367c6:	85 c0                	test   %eax,%eax
c00367c8:	dd 45 d8             	fldl   -0x28(%ebp)
c00367cb:	7e 1b                	jle    c00367e8 <__ratio+0x68>
c00367cd:	dd d8                	fstp   %st(0)
c00367cf:	c1 e0 14             	shl    $0x14,%eax
c00367d2:	01 45 e4             	add    %eax,-0x1c(%ebp)
c00367d5:	dd 45 e0             	fldl   -0x20(%ebp)
c00367d8:	83 c4 30             	add    $0x30,%esp
c00367db:	5b                   	pop    %ebx
c00367dc:	de f1                	fdivp  %st,%st(1)
c00367de:	5e                   	pop    %esi
c00367df:	5d                   	pop    %ebp
c00367e0:	c3                   	ret    
c00367e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00367e8:	dd d9                	fstp   %st(1)
c00367ea:	c1 e0 14             	shl    $0x14,%eax
c00367ed:	29 45 d4             	sub    %eax,-0x2c(%ebp)
c00367f0:	dd 45 d0             	fldl   -0x30(%ebp)
c00367f3:	83 c4 30             	add    $0x30,%esp
c00367f6:	5b                   	pop    %ebx
c00367f7:	de f9                	fdivrp %st,%st(1)
c00367f9:	5e                   	pop    %esi
c00367fa:	5d                   	pop    %ebp
c00367fb:	c3                   	ret    
c00367fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

c0036800 <_mprec_log10>:
c0036800:	55                   	push   %ebp
c0036801:	89 e5                	mov    %esp,%ebp
c0036803:	8b 45 08             	mov    0x8(%ebp),%eax
c0036806:	83 f8 17             	cmp    $0x17,%eax
c0036809:	7e 1d                	jle    c0036828 <_mprec_log10+0x28>
c003680b:	d9 e8                	fld1   
c003680d:	d9 05 1c 90 03 c0    	flds   0xc003901c
c0036813:	90                   	nop
c0036814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036818:	83 e8 01             	sub    $0x1,%eax
c003681b:	dc c9                	fmul   %st,%st(1)
c003681d:	75 f9                	jne    c0036818 <_mprec_log10+0x18>
c003681f:	dd d8                	fstp   %st(0)
c0036821:	5d                   	pop    %ebp
c0036822:	c3                   	ret    
c0036823:	90                   	nop
c0036824:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036828:	dd 04 c5 00 91 03 c0 	fldl   -0x3ffc6f00(,%eax,8)
c003682f:	5d                   	pop    %ebp
c0036830:	c3                   	ret    
c0036831:	eb 0d                	jmp    c0036840 <__copybits>
c0036833:	90                   	nop
c0036834:	90                   	nop
c0036835:	90                   	nop
c0036836:	90                   	nop
c0036837:	90                   	nop
c0036838:	90                   	nop
c0036839:	90                   	nop
c003683a:	90                   	nop
c003683b:	90                   	nop
c003683c:	90                   	nop
c003683d:	90                   	nop
c003683e:	90                   	nop
c003683f:	90                   	nop

c0036840 <__copybits>:
c0036840:	55                   	push   %ebp
c0036841:	89 e5                	mov    %esp,%ebp
c0036843:	57                   	push   %edi
c0036844:	8b 7d 10             	mov    0x10(%ebp),%edi
c0036847:	56                   	push   %esi
c0036848:	8b 75 0c             	mov    0xc(%ebp),%esi
c003684b:	8b 45 08             	mov    0x8(%ebp),%eax
c003684e:	53                   	push   %ebx
c003684f:	8b 4f 10             	mov    0x10(%edi),%ecx
c0036852:	8d 56 ff             	lea    -0x1(%esi),%edx
c0036855:	c1 fa 05             	sar    $0x5,%edx
c0036858:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
c003685c:	8d 57 14             	lea    0x14(%edi),%edx
c003685f:	8d 1c 8a             	lea    (%edx,%ecx,4),%ebx
c0036862:	39 da                	cmp    %ebx,%edx
c0036864:	73 34                	jae    c003689a <__copybits+0x5a>
c0036866:	89 c1                	mov    %eax,%ecx
c0036868:	83 c2 04             	add    $0x4,%edx
c003686b:	8b 42 fc             	mov    -0x4(%edx),%eax
c003686e:	83 c1 04             	add    $0x4,%ecx
c0036871:	39 d3                	cmp    %edx,%ebx
c0036873:	89 41 fc             	mov    %eax,-0x4(%ecx)
c0036876:	77 f0                	ja     c0036868 <__copybits+0x28>
c0036878:	8b 45 08             	mov    0x8(%ebp),%eax
c003687b:	29 fb                	sub    %edi,%ebx
c003687d:	8d 53 eb             	lea    -0x15(%ebx),%edx
c0036880:	c1 ea 02             	shr    $0x2,%edx
c0036883:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
c0036887:	39 c6                	cmp    %eax,%esi
c0036889:	76 13                	jbe    c003689e <__copybits+0x5e>
c003688b:	90                   	nop
c003688c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036890:	83 c0 04             	add    $0x4,%eax
c0036893:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
c003689a:	39 c6                	cmp    %eax,%esi
c003689c:	77 f2                	ja     c0036890 <__copybits+0x50>
c003689e:	5b                   	pop    %ebx
c003689f:	5e                   	pop    %esi
c00368a0:	5f                   	pop    %edi
c00368a1:	5d                   	pop    %ebp
c00368a2:	c3                   	ret    
c00368a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00368a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c00368b0 <__any_on>:
c00368b0:	55                   	push   %ebp
c00368b1:	89 e5                	mov    %esp,%ebp
c00368b3:	8b 45 08             	mov    0x8(%ebp),%eax
c00368b6:	57                   	push   %edi
c00368b7:	56                   	push   %esi
c00368b8:	53                   	push   %ebx
c00368b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c00368bc:	8d 50 14             	lea    0x14(%eax),%edx
c00368bf:	8b 40 10             	mov    0x10(%eax),%eax
c00368c2:	c1 fb 05             	sar    $0x5,%ebx
c00368c5:	39 d8                	cmp    %ebx,%eax
c00368c7:	7d 2f                	jge    c00368f8 <__any_on+0x48>
c00368c9:	8d 1c 82             	lea    (%edx,%eax,4),%ebx
c00368cc:	39 da                	cmp    %ebx,%edx
c00368ce:	73 1d                	jae    c00368ed <__any_on+0x3d>
c00368d0:	8d 43 fc             	lea    -0x4(%ebx),%eax
c00368d3:	8b 5b fc             	mov    -0x4(%ebx),%ebx
c00368d6:	85 db                	test   %ebx,%ebx
c00368d8:	74 0f                	je     c00368e9 <__any_on+0x39>
c00368da:	eb 44                	jmp    c0036920 <__any_on+0x70>
c00368dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368e0:	83 e8 04             	sub    $0x4,%eax
c00368e3:	8b 08                	mov    (%eax),%ecx
c00368e5:	85 c9                	test   %ecx,%ecx
c00368e7:	75 37                	jne    c0036920 <__any_on+0x70>
c00368e9:	39 c2                	cmp    %eax,%edx
c00368eb:	72 f3                	jb     c00368e0 <__any_on+0x30>
c00368ed:	31 c0                	xor    %eax,%eax
c00368ef:	5b                   	pop    %ebx
c00368f0:	5e                   	pop    %esi
c00368f1:	5f                   	pop    %edi
c00368f2:	5d                   	pop    %ebp
c00368f3:	c3                   	ret    
c00368f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00368f8:	7e 1e                	jle    c0036918 <__any_on+0x68>
c00368fa:	8b 4d 0c             	mov    0xc(%ebp),%ecx
c00368fd:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c0036900:	83 e1 1f             	and    $0x1f,%ecx
c0036903:	74 c7                	je     c00368cc <__any_on+0x1c>
c0036905:	8b 3b                	mov    (%ebx),%edi
c0036907:	b8 01 00 00 00       	mov    $0x1,%eax
c003690c:	89 fe                	mov    %edi,%esi
c003690e:	d3 ee                	shr    %cl,%esi
c0036910:	d3 e6                	shl    %cl,%esi
c0036912:	39 fe                	cmp    %edi,%esi
c0036914:	75 d9                	jne    c00368ef <__any_on+0x3f>
c0036916:	eb b4                	jmp    c00368cc <__any_on+0x1c>
c0036918:	8d 1c 9a             	lea    (%edx,%ebx,4),%ebx
c003691b:	eb af                	jmp    c00368cc <__any_on+0x1c>
c003691d:	8d 76 00             	lea    0x0(%esi),%esi
c0036920:	5b                   	pop    %ebx
c0036921:	b8 01 00 00 00       	mov    $0x1,%eax
c0036926:	5e                   	pop    %esi
c0036927:	5f                   	pop    %edi
c0036928:	5d                   	pop    %ebp
c0036929:	c3                   	ret    
c003692a:	66 90                	xchg   %ax,%ax
c003692c:	66 90                	xchg   %ax,%ax
c003692e:	66 90                	xchg   %ax,%ax

c0036930 <_sbrk_r>:
c0036930:	55                   	push   %ebp
c0036931:	89 e5                	mov    %esp,%ebp
c0036933:	83 ec 18             	sub    $0x18,%esp
c0036936:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036939:	c7 05 04 30 09 c0 00 	movl   $0x0,0xc0093004
c0036940:	00 00 00 
c0036943:	89 04 24             	mov    %eax,(%esp)
c0036946:	e8 72 98 ff ff       	call   c00301bd <sbrk>
c003694b:	83 f8 ff             	cmp    $0xffffffff,%eax
c003694e:	74 08                	je     c0036958 <_sbrk_r+0x28>
c0036950:	c9                   	leave  
c0036951:	c3                   	ret    
c0036952:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036958:	8b 15 04 30 09 c0    	mov    0xc0093004,%edx
c003695e:	85 d2                	test   %edx,%edx
c0036960:	74 ee                	je     c0036950 <_sbrk_r+0x20>
c0036962:	8b 4d 08             	mov    0x8(%ebp),%ecx
c0036965:	89 11                	mov    %edx,(%ecx)
c0036967:	c9                   	leave  
c0036968:	c3                   	ret    
c0036969:	66 90                	xchg   %ax,%ax
c003696b:	66 90                	xchg   %ax,%ax
c003696d:	66 90                	xchg   %ax,%ax
c003696f:	90                   	nop

c0036970 <__fpclassifyd>:
c0036970:	55                   	push   %ebp
c0036971:	b8 02 00 00 00       	mov    $0x2,%eax
c0036976:	89 e5                	mov    %esp,%ebp
c0036978:	53                   	push   %ebx
c0036979:	83 ec 0c             	sub    $0xc,%esp
c003697c:	dd 45 08             	fldl   0x8(%ebp)
c003697f:	dd 5d f0             	fstpl  -0x10(%ebp)
c0036982:	8b 55 f0             	mov    -0x10(%ebp),%edx
c0036985:	8b 4d f4             	mov    -0xc(%ebp),%ecx
c0036988:	89 d3                	mov    %edx,%ebx
c003698a:	09 cb                	or     %ecx,%ebx
c003698c:	75 0a                	jne    c0036998 <__fpclassifyd+0x28>
c003698e:	83 c4 0c             	add    $0xc,%esp
c0036991:	5b                   	pop    %ebx
c0036992:	5d                   	pop    %ebp
c0036993:	c3                   	ret    
c0036994:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036998:	85 d2                	test   %edx,%edx
c003699a:	0f 94 c2             	sete   %dl
c003699d:	75 08                	jne    c00369a7 <__fpclassifyd+0x37>
c003699f:	81 f9 00 00 00 80    	cmp    $0x80000000,%ecx
c00369a5:	74 e7                	je     c003698e <__fpclassifyd+0x1e>
c00369a7:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
c00369ad:	b8 04 00 00 00       	mov    $0x4,%eax
c00369b2:	8d 99 00 00 f0 ff    	lea    -0x100000(%ecx),%ebx
c00369b8:	81 fb ff ff df 7f    	cmp    $0x7fdfffff,%ebx
c00369be:	76 ce                	jbe    c003698e <__fpclassifyd+0x1e>
c00369c0:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
c00369c6:	b0 03                	mov    $0x3,%al
c00369c8:	76 c4                	jbe    c003698e <__fpclassifyd+0x1e>
c00369ca:	31 c0                	xor    %eax,%eax
c00369cc:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
c00369d2:	0f 94 c0             	sete   %al
c00369d5:	21 d0                	and    %edx,%eax
c00369d7:	eb b5                	jmp    c003698e <__fpclassifyd+0x1e>
c00369d9:	66 90                	xchg   %ax,%ax
c00369db:	66 90                	xchg   %ax,%ax
c00369dd:	66 90                	xchg   %ax,%ax
c00369df:	90                   	nop

c00369e0 <strcmp>:
c00369e0:	55                   	push   %ebp
c00369e1:	89 e5                	mov    %esp,%ebp
c00369e3:	8b 45 08             	mov    0x8(%ebp),%eax
c00369e6:	8b 55 0c             	mov    0xc(%ebp),%edx
c00369e9:	53                   	push   %ebx
c00369ea:	89 c1                	mov    %eax,%ecx
c00369ec:	09 d1                	or     %edx,%ecx
c00369ee:	83 e1 03             	and    $0x3,%ecx
c00369f1:	75 17                	jne    c0036a0a <strcmp+0x2a>
c00369f3:	8b 08                	mov    (%eax),%ecx
c00369f5:	3b 0a                	cmp    (%edx),%ecx
c00369f7:	74 33                	je     c0036a2c <strcmp+0x4c>
c00369f9:	eb 0f                	jmp    c0036a0a <strcmp+0x2a>
c00369fb:	90                   	nop
c00369fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a00:	3a 0a                	cmp    (%edx),%cl
c0036a02:	75 0d                	jne    c0036a11 <strcmp+0x31>
c0036a04:	83 c0 01             	add    $0x1,%eax
c0036a07:	83 c2 01             	add    $0x1,%edx
c0036a0a:	0f b6 08             	movzbl (%eax),%ecx
c0036a0d:	84 c9                	test   %cl,%cl
c0036a0f:	75 ef                	jne    c0036a00 <strcmp+0x20>
c0036a11:	0f b6 00             	movzbl (%eax),%eax
c0036a14:	0f b6 12             	movzbl (%edx),%edx
c0036a17:	5b                   	pop    %ebx
c0036a18:	5d                   	pop    %ebp
c0036a19:	29 d0                	sub    %edx,%eax
c0036a1b:	c3                   	ret    
c0036a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036a20:	83 c0 04             	add    $0x4,%eax
c0036a23:	83 c2 04             	add    $0x4,%edx
c0036a26:	8b 08                	mov    (%eax),%ecx
c0036a28:	3b 0a                	cmp    (%edx),%ecx
c0036a2a:	75 de                	jne    c0036a0a <strcmp+0x2a>
c0036a2c:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
c0036a32:	f7 d1                	not    %ecx
c0036a34:	21 cb                	and    %ecx,%ebx
c0036a36:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
c0036a3c:	74 e2                	je     c0036a20 <strcmp+0x40>
c0036a3e:	31 c0                	xor    %eax,%eax
c0036a40:	5b                   	pop    %ebx
c0036a41:	5d                   	pop    %ebp
c0036a42:	c3                   	ret    
c0036a43:	66 90                	xchg   %ax,%ax
c0036a45:	66 90                	xchg   %ax,%ax
c0036a47:	66 90                	xchg   %ax,%ax
c0036a49:	66 90                	xchg   %ax,%ax
c0036a4b:	66 90                	xchg   %ax,%ax
c0036a4d:	66 90                	xchg   %ax,%ax
c0036a4f:	90                   	nop

c0036a50 <strlen>:
c0036a50:	55                   	push   %ebp
c0036a51:	89 e5                	mov    %esp,%ebp
c0036a53:	57                   	push   %edi
c0036a54:	8b 55 08             	mov    0x8(%ebp),%edx
c0036a57:	89 d7                	mov    %edx,%edi
c0036a59:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036a5f:	74 25                	je     c0036a86 <L5>
c0036a61:	8a 0f                	mov    (%edi),%cl
c0036a63:	47                   	inc    %edi
c0036a64:	84 c9                	test   %cl,%cl
c0036a66:	74 56                	je     c0036abe <L15>
c0036a68:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036a6e:	74 16                	je     c0036a86 <L5>
c0036a70:	8a 0f                	mov    (%edi),%cl
c0036a72:	47                   	inc    %edi
c0036a73:	84 c9                	test   %cl,%cl
c0036a75:	74 47                	je     c0036abe <L15>
c0036a77:	f7 c7 03 00 00 00    	test   $0x3,%edi
c0036a7d:	74 07                	je     c0036a86 <L5>
c0036a7f:	8a 0f                	mov    (%edi),%cl
c0036a81:	47                   	inc    %edi
c0036a82:	84 c9                	test   %cl,%cl
c0036a84:	74 38                	je     c0036abe <L15>

c0036a86 <L5>:
c0036a86:	83 ef 04             	sub    $0x4,%edi
c0036a89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

c0036a90 <L10>:
c0036a90:	83 c7 04             	add    $0x4,%edi
c0036a93:	8b 0f                	mov    (%edi),%ecx
c0036a95:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
c0036a9b:	f7 d1                	not    %ecx
c0036a9d:	21 c8                	and    %ecx,%eax
c0036a9f:	a9 80 80 80 80       	test   $0x80808080,%eax
c0036aa4:	74 ea                	je     c0036a90 <L10>
c0036aa6:	f7 d1                	not    %ecx
c0036aa8:	47                   	inc    %edi
c0036aa9:	84 c9                	test   %cl,%cl
c0036aab:	74 11                	je     c0036abe <L15>
c0036aad:	47                   	inc    %edi
c0036aae:	c1 e9 08             	shr    $0x8,%ecx
c0036ab1:	84 c9                	test   %cl,%cl
c0036ab3:	74 09                	je     c0036abe <L15>
c0036ab5:	47                   	inc    %edi
c0036ab6:	c1 e9 08             	shr    $0x8,%ecx
c0036ab9:	84 c9                	test   %cl,%cl
c0036abb:	74 01                	je     c0036abe <L15>
c0036abd:	47                   	inc    %edi

c0036abe <L15>:
c0036abe:	29 d7                	sub    %edx,%edi
c0036ac0:	8d 47 ff             	lea    -0x1(%edi),%eax
c0036ac3:	8d 65 fc             	lea    -0x4(%ebp),%esp
c0036ac6:	5f                   	pop    %edi
c0036ac7:	c9                   	leave  
c0036ac8:	c3                   	ret    
c0036ac9:	66 90                	xchg   %ax,%ax
c0036acb:	66 90                	xchg   %ax,%ax
c0036acd:	66 90                	xchg   %ax,%ax
c0036acf:	90                   	nop

c0036ad0 <__ssprint_r>:
c0036ad0:	55                   	push   %ebp
c0036ad1:	89 e5                	mov    %esp,%ebp
c0036ad3:	57                   	push   %edi
c0036ad4:	56                   	push   %esi
c0036ad5:	53                   	push   %ebx
c0036ad6:	83 ec 2c             	sub    $0x2c,%esp
c0036ad9:	8b 45 10             	mov    0x10(%ebp),%eax
c0036adc:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c0036adf:	8b 00                	mov    (%eax),%eax
c0036ae1:	89 c7                	mov    %eax,%edi
c0036ae3:	8b 45 10             	mov    0x10(%ebp),%eax
c0036ae6:	8b 40 08             	mov    0x8(%eax),%eax
c0036ae9:	85 c0                	test   %eax,%eax
c0036aeb:	0f 84 af 01 00 00    	je     c0036ca0 <__ssprint_r+0x1d0>
c0036af1:	31 c9                	xor    %ecx,%ecx
c0036af3:	31 d2                	xor    %edx,%edx
c0036af5:	8b 03                	mov    (%ebx),%eax
c0036af7:	89 ce                	mov    %ecx,%esi
c0036af9:	85 f6                	test   %esi,%esi
c0036afb:	89 55 e4             	mov    %edx,-0x1c(%ebp)
c0036afe:	0f 84 ec 00 00 00    	je     c0036bf0 <__ssprint_r+0x120>
c0036b04:	8b 53 08             	mov    0x8(%ebx),%edx
c0036b07:	39 d6                	cmp    %edx,%esi
c0036b09:	0f 82 fc 00 00 00    	jb     c0036c0b <__ssprint_r+0x13b>
c0036b0f:	0f b7 4b 0c          	movzwl 0xc(%ebx),%ecx
c0036b13:	66 f7 c1 80 04       	test   $0x480,%cx
c0036b18:	0f 84 fa 00 00 00    	je     c0036c18 <__ssprint_r+0x148>
c0036b1e:	8b 53 10             	mov    0x10(%ebx),%edx
c0036b21:	29 d0                	sub    %edx,%eax
c0036b23:	89 45 dc             	mov    %eax,-0x24(%ebp)
c0036b26:	8b 43 14             	mov    0x14(%ebx),%eax
c0036b29:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036b2c:	8d 04 40             	lea    (%eax,%eax,2),%eax
c0036b2f:	89 c2                	mov    %eax,%edx
c0036b31:	c1 ea 1f             	shr    $0x1f,%edx
c0036b34:	01 d0                	add    %edx,%eax
c0036b36:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b39:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036b3c:	d1 7d e0             	sarl   -0x20(%ebp)
c0036b3f:	8d 44 06 01          	lea    0x1(%esi,%eax,1),%eax
c0036b43:	39 45 e0             	cmp    %eax,-0x20(%ebp)
c0036b46:	0f 83 34 01 00 00    	jae    c0036c80 <__ssprint_r+0x1b0>
c0036b4c:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0036b4f:	80 e5 04             	and    $0x4,%ch
c0036b52:	0f 84 c8 00 00 00    	je     c0036c20 <__ssprint_r+0x150>
c0036b58:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036b5c:	8b 45 08             	mov    0x8(%ebp),%eax
c0036b5f:	89 04 24             	mov    %eax,(%esp)
c0036b62:	e8 e9 e7 ff ff       	call   c0035350 <_malloc_r>
c0036b67:	85 c0                	test   %eax,%eax
c0036b69:	89 c2                	mov    %eax,%edx
c0036b6b:	0f 84 e1 00 00 00    	je     c0036c52 <__ssprint_r+0x182>
c0036b71:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036b74:	89 55 d8             	mov    %edx,-0x28(%ebp)
c0036b77:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036b7b:	8b 43 10             	mov    0x10(%ebx),%eax
c0036b7e:	89 14 24             	mov    %edx,(%esp)
c0036b81:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036b85:	e8 0a b2 ff ff       	call   c0031d94 <memcpy>
c0036b8a:	0f b7 43 0c          	movzwl 0xc(%ebx),%eax
c0036b8e:	8b 55 d8             	mov    -0x28(%ebp),%edx
c0036b91:	66 25 7f fb          	and    $0xfb7f,%ax
c0036b95:	0c 80                	or     $0x80,%al
c0036b97:	66 89 43 0c          	mov    %ax,0xc(%ebx)
c0036b9b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036b9e:	8b 45 dc             	mov    -0x24(%ebp),%eax
c0036ba1:	89 53 10             	mov    %edx,0x10(%ebx)
c0036ba4:	89 4b 14             	mov    %ecx,0x14(%ebx)
c0036ba7:	2b 4d dc             	sub    -0x24(%ebp),%ecx
c0036baa:	01 d0                	add    %edx,%eax
c0036bac:	89 03                	mov    %eax,(%ebx)
c0036bae:	89 f2                	mov    %esi,%edx
c0036bb0:	89 4b 08             	mov    %ecx,0x8(%ebx)
c0036bb3:	89 f1                	mov    %esi,%ecx
c0036bb5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
c0036bb9:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0036bbc:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
c0036bbf:	89 04 24             	mov    %eax,(%esp)
c0036bc2:	89 55 dc             	mov    %edx,-0x24(%ebp)
c0036bc5:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c0036bc9:	e8 22 13 00 00       	call   c0037ef0 <memmove>
c0036bce:	8b 03                	mov    (%ebx),%eax
c0036bd0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0036bd3:	8b 55 dc             	mov    -0x24(%ebp),%edx
c0036bd6:	29 53 08             	sub    %edx,0x8(%ebx)
c0036bd9:	01 c8                	add    %ecx,%eax
c0036bdb:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0036bde:	89 03                	mov    %eax,(%ebx)
c0036be0:	8b 51 08             	mov    0x8(%ecx),%edx
c0036be3:	29 f2                	sub    %esi,%edx
c0036be5:	85 d2                	test   %edx,%edx
c0036be7:	89 51 08             	mov    %edx,0x8(%ecx)
c0036bea:	0f 84 98 00 00 00    	je     c0036c88 <__ssprint_r+0x1b8>
c0036bf0:	8b 77 04             	mov    0x4(%edi),%esi
c0036bf3:	83 c7 08             	add    $0x8,%edi
c0036bf6:	8b 4f f8             	mov    -0x8(%edi),%ecx
c0036bf9:	85 f6                	test   %esi,%esi
c0036bfb:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
c0036bfe:	74 f0                	je     c0036bf0 <__ssprint_r+0x120>
c0036c00:	8b 53 08             	mov    0x8(%ebx),%edx
c0036c03:	39 d6                	cmp    %edx,%esi
c0036c05:	0f 83 04 ff ff ff    	jae    c0036b0f <__ssprint_r+0x3f>
c0036c0b:	89 f2                	mov    %esi,%edx
c0036c0d:	89 f1                	mov    %esi,%ecx
c0036c0f:	eb a4                	jmp    c0036bb5 <__ssprint_r+0xe5>
c0036c11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036c18:	89 d1                	mov    %edx,%ecx
c0036c1a:	eb 99                	jmp    c0036bb5 <__ssprint_r+0xe5>
c0036c1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0036c20:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036c24:	8b 45 d8             	mov    -0x28(%ebp),%eax
c0036c27:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c2b:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c2e:	89 04 24             	mov    %eax,(%esp)
c0036c31:	e8 4a 13 00 00       	call   c0037f80 <_realloc_r>
c0036c36:	85 c0                	test   %eax,%eax
c0036c38:	89 c2                	mov    %eax,%edx
c0036c3a:	0f 85 5b ff ff ff    	jne    c0036b9b <__ssprint_r+0xcb>
c0036c40:	8b 43 10             	mov    0x10(%ebx),%eax
c0036c43:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036c47:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c4a:	89 04 24             	mov    %eax,(%esp)
c0036c4d:	e8 3e 10 00 00       	call   c0037c90 <_free_r>
c0036c52:	8b 45 08             	mov    0x8(%ebp),%eax
c0036c55:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0036c5b:	8b 45 10             	mov    0x10(%ebp),%eax
c0036c5e:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
c0036c63:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
c0036c6a:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036c71:	83 c4 2c             	add    $0x2c,%esp
c0036c74:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0036c79:	5b                   	pop    %ebx
c0036c7a:	5e                   	pop    %esi
c0036c7b:	5f                   	pop    %edi
c0036c7c:	5d                   	pop    %ebp
c0036c7d:	c3                   	ret    
c0036c7e:	66 90                	xchg   %ax,%ax
c0036c80:	8b 45 e0             	mov    -0x20(%ebp),%eax
c0036c83:	e9 c7 fe ff ff       	jmp    c0036b4f <__ssprint_r+0x7f>
c0036c88:	c7 41 04 00 00 00 00 	movl   $0x0,0x4(%ecx)
c0036c8f:	83 c4 2c             	add    $0x2c,%esp
c0036c92:	31 c0                	xor    %eax,%eax
c0036c94:	5b                   	pop    %ebx
c0036c95:	5e                   	pop    %esi
c0036c96:	5f                   	pop    %edi
c0036c97:	5d                   	pop    %ebp
c0036c98:	c3                   	ret    
c0036c99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036ca0:	8b 45 10             	mov    0x10(%ebp),%eax
c0036ca3:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
c0036caa:	83 c4 2c             	add    $0x2c,%esp
c0036cad:	31 c0                	xor    %eax,%eax
c0036caf:	5b                   	pop    %ebx
c0036cb0:	5e                   	pop    %esi
c0036cb1:	5f                   	pop    %edi
c0036cb2:	5d                   	pop    %ebp
c0036cb3:	c3                   	ret    
c0036cb4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036cba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

c0036cc0 <_svfiprintf_r>:
c0036cc0:	55                   	push   %ebp
c0036cc1:	89 e5                	mov    %esp,%ebp
c0036cc3:	57                   	push   %edi
c0036cc4:	56                   	push   %esi
c0036cc5:	53                   	push   %ebx
c0036cc6:	81 ec cc 00 00 00    	sub    $0xcc,%esp
c0036ccc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036ccf:	f6 40 0c 80          	testb  $0x80,0xc(%eax)
c0036cd3:	74 0b                	je     c0036ce0 <_svfiprintf_r+0x20>
c0036cd5:	8b 50 10             	mov    0x10(%eax),%edx
c0036cd8:	85 d2                	test   %edx,%edx
c0036cda:	0f 84 1c 0d 00 00    	je     c00379fc <_svfiprintf_r+0xd3c>
c0036ce0:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036ce3:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0036ce6:	89 c6                	mov    %eax,%esi
c0036ce8:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%ebp)
c0036cee:	29 d8                	sub    %ebx,%eax
c0036cf0:	c7 85 7c ff ff ff 00 	movl   $0x0,-0x84(%ebp)
c0036cf7:	00 00 00 
c0036cfa:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c0036d01:	00 00 00 
c0036d04:	c7 85 44 ff ff ff 00 	movl   $0x0,-0xbc(%ebp)
c0036d0b:	00 00 00 
c0036d0e:	c7 85 50 ff ff ff 00 	movl   $0x0,-0xb0(%ebp)
c0036d15:	00 00 00 
c0036d18:	89 85 3c ff ff ff    	mov    %eax,-0xc4(%ebp)
c0036d1e:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d21:	8b 5d 10             	mov    0x10(%ebp),%ebx
c0036d24:	0f b6 00             	movzbl (%eax),%eax
c0036d27:	84 c0                	test   %al,%al
c0036d29:	74 58                	je     c0036d83 <_svfiprintf_r+0xc3>
c0036d2b:	3c 25                	cmp    $0x25,%al
c0036d2d:	75 13                	jne    c0036d42 <_svfiprintf_r+0x82>
c0036d2f:	eb 52                	jmp    c0036d83 <_svfiprintf_r+0xc3>
c0036d31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0036d38:	84 c0                	test   %al,%al
c0036d3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0036d40:	74 0a                	je     c0036d4c <_svfiprintf_r+0x8c>
c0036d42:	83 c3 01             	add    $0x1,%ebx
c0036d45:	0f b6 03             	movzbl (%ebx),%eax
c0036d48:	3c 25                	cmp    $0x25,%al
c0036d4a:	75 ec                	jne    c0036d38 <_svfiprintf_r+0x78>
c0036d4c:	89 df                	mov    %ebx,%edi
c0036d4e:	2b 7d 10             	sub    0x10(%ebp),%edi
c0036d51:	74 30                	je     c0036d83 <_svfiprintf_r+0xc3>
c0036d53:	8b 45 10             	mov    0x10(%ebp),%eax
c0036d56:	83 c6 08             	add    $0x8,%esi
c0036d59:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036d5c:	01 bd 7c ff ff ff    	add    %edi,-0x84(%ebp)
c0036d62:	89 46 f8             	mov    %eax,-0x8(%esi)
c0036d65:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036d6b:	83 c0 01             	add    $0x1,%eax
c0036d6e:	83 f8 07             	cmp    $0x7,%eax
c0036d71:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036d77:	0f 8f eb 0a 00 00    	jg     c0037868 <_svfiprintf_r+0xba8>
c0036d7d:	01 bd 50 ff ff ff    	add    %edi,-0xb0(%ebp)
c0036d83:	80 3b 00             	cmpb   $0x0,(%ebx)
c0036d86:	0f 84 11 09 00 00    	je     c003769d <_svfiprintf_r+0x9dd>
c0036d8c:	8d 43 01             	lea    0x1(%ebx),%eax
c0036d8f:	31 ff                	xor    %edi,%edi
c0036d91:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036d98:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0036d9f:	ff ff ff 
c0036da2:	c7 85 54 ff ff ff 00 	movl   $0x0,-0xac(%ebp)
c0036da9:	00 00 00 
c0036dac:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%ebp)
c0036db3:	00 00 00 
c0036db6:	8d 50 01             	lea    0x1(%eax),%edx
c0036db9:	0f be 00             	movsbl (%eax),%eax
c0036dbc:	8d 48 e0             	lea    -0x20(%eax),%ecx
c0036dbf:	83 f9 58             	cmp    $0x58,%ecx
c0036dc2:	0f 87 63 03 00 00    	ja     c003712b <_svfiprintf_r+0x46b>
c0036dc8:	ff 24 8d c8 91 03 c0 	jmp    *-0x3ffc6e38(,%ecx,4)
c0036dcf:	90                   	nop
c0036dd0:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0036dd7:	89 d0                	mov    %edx,%eax
c0036dd9:	eb db                	jmp    c0036db6 <_svfiprintf_r+0xf6>
c0036ddb:	8b 45 14             	mov    0x14(%ebp),%eax
c0036dde:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0036de1:	8b 00                	mov    (%eax),%eax
c0036de3:	83 c3 04             	add    $0x4,%ebx
c0036de6:	89 5d 14             	mov    %ebx,0x14(%ebp)
c0036de9:	85 c0                	test   %eax,%eax
c0036deb:	89 85 54 ff ff ff    	mov    %eax,-0xac(%ebp)
c0036df1:	79 e4                	jns    c0036dd7 <_svfiprintf_r+0x117>
c0036df3:	f7 9d 54 ff ff ff    	negl   -0xac(%ebp)
c0036df9:	83 8d 64 ff ff ff 04 	orl    $0x4,-0x9c(%ebp)
c0036e00:	89 d0                	mov    %edx,%eax
c0036e02:	eb b2                	jmp    c0036db6 <_svfiprintf_r+0xf6>
c0036e04:	bf 2b 00 00 00       	mov    $0x2b,%edi
c0036e09:	89 d0                	mov    %edx,%eax
c0036e0b:	eb a9                	jmp    c0036db6 <_svfiprintf_r+0xf6>
c0036e0d:	8b 45 14             	mov    0x14(%ebp),%eax
c0036e10:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0036e17:	89 55 10             	mov    %edx,0x10(%ebp)
c0036e1a:	ba 02 00 00 00       	mov    $0x2,%edx
c0036e1f:	8b 08                	mov    (%eax),%ecx
c0036e21:	83 c0 04             	add    $0x4,%eax
c0036e24:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c0036e2b:	c6 85 73 ff ff ff 78 	movb   $0x78,-0x8d(%ebp)
c0036e32:	89 45 14             	mov    %eax,0x14(%ebp)
c0036e35:	c7 85 44 ff ff ff 63 	movl   $0xc0038e63,-0xbc(%ebp)
c0036e3c:	8e 03 c0 
c0036e3f:	90                   	nop
c0036e40:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0036e47:	31 ff                	xor    %edi,%edi
c0036e49:	8b 9d 64 ff ff ff    	mov    -0x9c(%ebp),%ebx
c0036e4f:	89 d8                	mov    %ebx,%eax
c0036e51:	24 7f                	and    $0x7f,%al
c0036e53:	83 bd 5c ff ff ff 00 	cmpl   $0x0,-0xa4(%ebp)
c0036e5a:	0f 48 c3             	cmovs  %ebx,%eax
c0036e5d:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%ebp)
c0036e63:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036e69:	85 c0                	test   %eax,%eax
c0036e6b:	75 08                	jne    c0036e75 <_svfiprintf_r+0x1b5>
c0036e6d:	85 c9                	test   %ecx,%ecx
c0036e6f:	0f 84 03 08 00 00    	je     c0037678 <_svfiprintf_r+0x9b8>
c0036e75:	80 fa 01             	cmp    $0x1,%dl
c0036e78:	0f 84 8a 0a 00 00    	je     c0037908 <_svfiprintf_r+0xc48>
c0036e7e:	80 fa 02             	cmp    $0x2,%dl
c0036e81:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0036e84:	0f 85 86 01 00 00    	jne    c0037010 <_svfiprintf_r+0x350>
c0036e8a:	8b 95 44 ff ff ff    	mov    -0xbc(%ebp),%edx
c0036e90:	89 c8                	mov    %ecx,%eax
c0036e92:	83 eb 01             	sub    $0x1,%ebx
c0036e95:	83 e0 0f             	and    $0xf,%eax
c0036e98:	0f b6 04 02          	movzbl (%edx,%eax,1),%eax
c0036e9c:	c1 e9 04             	shr    $0x4,%ecx
c0036e9f:	85 c9                	test   %ecx,%ecx
c0036ea1:	88 03                	mov    %al,(%ebx)
c0036ea3:	75 eb                	jne    c0036e90 <_svfiprintf_r+0x1d0>
c0036ea5:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0036ea8:	29 d8                	sub    %ebx,%eax
c0036eaa:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0036eb0:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0036eb6:	8b 8d 58 ff ff ff    	mov    -0xa8(%ebp),%ecx
c0036ebc:	39 c1                	cmp    %eax,%ecx
c0036ebe:	0f 4d c1             	cmovge %ecx,%eax
c0036ec1:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036ec7:	89 f8                	mov    %edi,%eax
c0036ec9:	3c 01                	cmp    $0x1,%al
c0036ecb:	83 9d 60 ff ff ff ff 	sbbl   $0xffffffff,-0xa0(%ebp)
c0036ed2:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0036ed8:	8b 8d 64 ff ff ff    	mov    -0x9c(%ebp),%ecx
c0036ede:	89 d0                	mov    %edx,%eax
c0036ee0:	89 cf                	mov    %ecx,%edi
c0036ee2:	83 c0 02             	add    $0x2,%eax
c0036ee5:	83 e7 02             	and    $0x2,%edi
c0036ee8:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%ebp)
c0036eee:	89 cf                	mov    %ecx,%edi
c0036ef0:	0f 44 c2             	cmove  %edx,%eax
c0036ef3:	81 e7 84 00 00 00    	and    $0x84,%edi
c0036ef9:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%ebp)
c0036eff:	89 bd 48 ff ff ff    	mov    %edi,-0xb8(%ebp)
c0036f05:	0f 85 cd 04 00 00    	jne    c00373d8 <_svfiprintf_r+0x718>
c0036f0b:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0036f11:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0036f17:	85 ff                	test   %edi,%edi
c0036f19:	0f 8e b9 04 00 00    	jle    c00373d8 <_svfiprintf_r+0x718>
c0036f1f:	83 ff 10             	cmp    $0x10,%edi
c0036f22:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036f28:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036f2e:	7e 7c                	jle    c0036fac <_svfiprintf_r+0x2ec>
c0036f30:	89 9d 40 ff ff ff    	mov    %ebx,-0xc0(%ebp)
c0036f36:	89 f1                	mov    %esi,%ecx
c0036f38:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0036f3b:	8b 75 0c             	mov    0xc(%ebp),%esi
c0036f3e:	eb 08                	jmp    c0036f48 <_svfiprintf_r+0x288>
c0036f40:	83 ef 10             	sub    $0x10,%edi
c0036f43:	83 ff 10             	cmp    $0x10,%edi
c0036f46:	7e 5c                	jle    c0036fa4 <_svfiprintf_r+0x2e4>
c0036f48:	83 c0 01             	add    $0x1,%eax
c0036f4b:	83 c2 10             	add    $0x10,%edx
c0036f4e:	c7 01 3c 93 03 c0    	movl   $0xc003933c,(%ecx)
c0036f54:	83 c1 08             	add    $0x8,%ecx
c0036f57:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c0036f5e:	83 f8 07             	cmp    $0x7,%eax
c0036f61:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036f67:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036f6d:	7e d1                	jle    c0036f40 <_svfiprintf_r+0x280>
c0036f6f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036f75:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036f79:	89 74 24 04          	mov    %esi,0x4(%esp)
c0036f7d:	89 1c 24             	mov    %ebx,(%esp)
c0036f80:	e8 4b fb ff ff       	call   c0036ad0 <__ssprint_r>
c0036f85:	85 c0                	test   %eax,%eax
c0036f87:	0f 85 3b 07 00 00    	jne    c00376c8 <_svfiprintf_r+0xa08>
c0036f8d:	83 ef 10             	sub    $0x10,%edi
c0036f90:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036f96:	83 ff 10             	cmp    $0x10,%edi
c0036f99:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0036f9f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0036fa2:	7f a4                	jg     c0036f48 <_svfiprintf_r+0x288>
c0036fa4:	8b 9d 40 ff ff ff    	mov    -0xc0(%ebp),%ebx
c0036faa:	89 ce                	mov    %ecx,%esi
c0036fac:	83 c0 01             	add    $0x1,%eax
c0036faf:	01 fa                	add    %edi,%edx
c0036fb1:	c7 06 3c 93 03 c0    	movl   $0xc003933c,(%esi)
c0036fb7:	83 c6 08             	add    $0x8,%esi
c0036fba:	89 7e fc             	mov    %edi,-0x4(%esi)
c0036fbd:	83 f8 07             	cmp    $0x7,%eax
c0036fc0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0036fc6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0036fcc:	0f 8e 12 04 00 00    	jle    c00373e4 <_svfiprintf_r+0x724>
c0036fd2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0036fd8:	89 44 24 08          	mov    %eax,0x8(%esp)
c0036fdc:	8b 45 0c             	mov    0xc(%ebp),%eax
c0036fdf:	89 44 24 04          	mov    %eax,0x4(%esp)
c0036fe3:	8b 45 08             	mov    0x8(%ebp),%eax
c0036fe6:	89 04 24             	mov    %eax,(%esp)
c0036fe9:	e8 e2 fa ff ff       	call   c0036ad0 <__ssprint_r>
c0036fee:	85 c0                	test   %eax,%eax
c0036ff0:	0f 85 d2 06 00 00    	jne    c00376c8 <_svfiprintf_r+0xa08>
c0036ff6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0036ffc:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0036fff:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037005:	e9 da 03 00 00       	jmp    c00373e4 <_svfiprintf_r+0x724>
c003700a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037010:	89 c8                	mov    %ecx,%eax
c0037012:	83 eb 01             	sub    $0x1,%ebx
c0037015:	83 e0 07             	and    $0x7,%eax
c0037018:	c1 e9 03             	shr    $0x3,%ecx
c003701b:	83 c0 30             	add    $0x30,%eax
c003701e:	85 c9                	test   %ecx,%ecx
c0037020:	88 03                	mov    %al,(%ebx)
c0037022:	75 ec                	jne    c0037010 <_svfiprintf_r+0x350>
c0037024:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c003702b:	89 da                	mov    %ebx,%edx
c003702d:	0f 84 72 fe ff ff    	je     c0036ea5 <_svfiprintf_r+0x1e5>
c0037033:	3c 30                	cmp    $0x30,%al
c0037035:	0f 84 6a fe ff ff    	je     c0036ea5 <_svfiprintf_r+0x1e5>
c003703b:	83 eb 01             	sub    $0x1,%ebx
c003703e:	8d 45 a8             	lea    -0x58(%ebp),%eax
c0037041:	29 d8                	sub    %ebx,%eax
c0037043:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
c0037047:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c003704d:	e9 5e fe ff ff       	jmp    c0036eb0 <_svfiprintf_r+0x1f0>
c0037052:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037059:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037060:	89 55 10             	mov    %edx,0x10(%ebp)
c0037063:	8b 45 14             	mov    0x14(%ebp),%eax
c0037066:	0f 85 48 01 00 00    	jne    c00371b4 <_svfiprintf_r+0x4f4>
c003706c:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037073:	0f 84 3b 01 00 00    	je     c00371b4 <_svfiprintf_r+0x4f4>
c0037079:	0f b7 08             	movzwl (%eax),%ecx
c003707c:	83 c0 04             	add    $0x4,%eax
c003707f:	31 d2                	xor    %edx,%edx
c0037081:	89 45 14             	mov    %eax,0x14(%ebp)
c0037084:	e9 b7 fd ff ff       	jmp    c0036e40 <_svfiprintf_r+0x180>
c0037089:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c0037090:	89 f8                	mov    %edi,%eax
c0037092:	89 55 10             	mov    %edx,0x10(%ebp)
c0037095:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c003709b:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00370a2:	8b 45 14             	mov    0x14(%ebp),%eax
c00370a5:	75 0d                	jne    c00370b4 <_svfiprintf_r+0x3f4>
c00370a7:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00370ae:	0f 85 f2 08 00 00    	jne    c00379a6 <_svfiprintf_r+0xce6>
c00370b4:	8b 08                	mov    (%eax),%ecx
c00370b6:	83 c0 04             	add    $0x4,%eax
c00370b9:	89 45 14             	mov    %eax,0x14(%ebp)
c00370bc:	85 c9                	test   %ecx,%ecx
c00370be:	0f 88 f3 08 00 00    	js     c00379b7 <_svfiprintf_r+0xcf7>
c00370c4:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00370cb:	ba 01 00 00 00       	mov    $0x1,%edx
c00370d0:	e9 74 fd ff ff       	jmp    c0036e49 <_svfiprintf_r+0x189>
c00370d5:	0f be 02             	movsbl (%edx),%eax
c00370d8:	8d 5a 01             	lea    0x1(%edx),%ebx
c00370db:	83 f8 2a             	cmp    $0x2a,%eax
c00370de:	0f 84 af 09 00 00    	je     c0037a93 <_svfiprintf_r+0xdd3>
c00370e4:	8d 48 d0             	lea    -0x30(%eax),%ecx
c00370e7:	31 d2                	xor    %edx,%edx
c00370e9:	83 f9 09             	cmp    $0x9,%ecx
c00370ec:	0f 87 90 09 00 00    	ja     c0037a82 <_svfiprintf_r+0xdc2>
c00370f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00370f8:	8d 04 92             	lea    (%edx,%edx,4),%eax
c00370fb:	83 c3 01             	add    $0x1,%ebx
c00370fe:	8d 14 41             	lea    (%ecx,%eax,2),%edx
c0037101:	0f be 43 ff          	movsbl -0x1(%ebx),%eax
c0037105:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037108:	83 f9 09             	cmp    $0x9,%ecx
c003710b:	76 eb                	jbe    c00370f8 <_svfiprintf_r+0x438>
c003710d:	85 d2                	test   %edx,%edx
c003710f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
c0037114:	0f 48 d1             	cmovs  %ecx,%edx
c0037117:	8d 48 e0             	lea    -0x20(%eax),%ecx
c003711a:	83 f9 58             	cmp    $0x58,%ecx
c003711d:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
c0037123:	89 da                	mov    %ebx,%edx
c0037125:	0f 86 9d fc ff ff    	jbe    c0036dc8 <_svfiprintf_r+0x108>
c003712b:	89 fb                	mov    %edi,%ebx
c003712d:	85 c0                	test   %eax,%eax
c003712f:	89 55 10             	mov    %edx,0x10(%ebp)
c0037132:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037138:	0f 84 5f 05 00 00    	je     c003769d <_svfiprintf_r+0x9dd>
c003713e:	88 45 80             	mov    %al,-0x80(%ebp)
c0037141:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037144:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003714b:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c0037152:	00 00 00 
c0037155:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c003715c:	00 00 00 
c003715f:	e9 5a 01 00 00       	jmp    c00372be <_svfiprintf_r+0x5fe>
c0037164:	31 db                	xor    %ebx,%ebx
c0037166:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037169:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037170:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
c0037173:	83 c2 01             	add    $0x1,%edx
c0037176:	8d 1c 41             	lea    (%ecx,%eax,2),%ebx
c0037179:	0f be 42 ff          	movsbl -0x1(%edx),%eax
c003717d:	8d 48 d0             	lea    -0x30(%eax),%ecx
c0037180:	83 f9 09             	cmp    $0x9,%ecx
c0037183:	76 eb                	jbe    c0037170 <_svfiprintf_r+0x4b0>
c0037185:	89 9d 54 ff ff ff    	mov    %ebx,-0xac(%ebp)
c003718b:	e9 2c fc ff ff       	jmp    c0036dbc <_svfiprintf_r+0xfc>
c0037190:	81 8d 64 ff ff ff 80 	orl    $0x80,-0x9c(%ebp)
c0037197:	00 00 00 
c003719a:	89 d0                	mov    %edx,%eax
c003719c:	e9 15 fc ff ff       	jmp    c0036db6 <_svfiprintf_r+0xf6>
c00371a1:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00371a8:	89 55 10             	mov    %edx,0x10(%ebp)
c00371ab:	8b 45 14             	mov    0x14(%ebp),%eax
c00371ae:	0f 84 b8 fe ff ff    	je     c003706c <_svfiprintf_r+0x3ac>
c00371b4:	8b 08                	mov    (%eax),%ecx
c00371b6:	83 c0 04             	add    $0x4,%eax
c00371b9:	31 d2                	xor    %edx,%edx
c00371bb:	89 45 14             	mov    %eax,0x14(%ebp)
c00371be:	e9 7d fc ff ff       	jmp    c0036e40 <_svfiprintf_r+0x180>
c00371c3:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00371ca:	89 f8                	mov    %edi,%eax
c00371cc:	89 55 10             	mov    %edx,0x10(%ebp)
c00371cf:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c00371d5:	0f 85 a2 07 00 00    	jne    c003797d <_svfiprintf_r+0xcbd>
c00371db:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c00371e2:	0f 84 95 07 00 00    	je     c003797d <_svfiprintf_r+0xcbd>
c00371e8:	8b 45 14             	mov    0x14(%ebp),%eax
c00371eb:	0f b7 9d 50 ff ff ff 	movzwl -0xb0(%ebp),%ebx
c00371f2:	8b 00                	mov    (%eax),%eax
c00371f4:	66 89 18             	mov    %bx,(%eax)
c00371f7:	8b 45 14             	mov    0x14(%ebp),%eax
c00371fa:	83 c0 04             	add    $0x4,%eax
c00371fd:	89 45 14             	mov    %eax,0x14(%ebp)
c0037200:	e9 19 fb ff ff       	jmp    c0036d1e <_svfiprintf_r+0x5e>
c0037205:	89 fb                	mov    %edi,%ebx
c0037207:	89 55 10             	mov    %edx,0x10(%ebp)
c003720a:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c0037210:	c7 85 44 ff ff ff 63 	movl   $0xc0038e63,-0xbc(%ebp)
c0037217:	8e 03 c0 
c003721a:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c0037221:	8b 5d 14             	mov    0x14(%ebp),%ebx
c0037224:	75 0d                	jne    c0037233 <_svfiprintf_r+0x573>
c0037226:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c003722d:	0f 85 65 07 00 00    	jne    c0037998 <_svfiprintf_r+0xcd8>
c0037233:	8b 0b                	mov    (%ebx),%ecx
c0037235:	83 c3 04             	add    $0x4,%ebx
c0037238:	89 5d 14             	mov    %ebx,0x14(%ebp)
c003723b:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037242:	ba 02 00 00 00       	mov    $0x2,%edx
c0037247:	0f 84 f3 fb ff ff    	je     c0036e40 <_svfiprintf_r+0x180>
c003724d:	85 c9                	test   %ecx,%ecx
c003724f:	0f 84 eb fb ff ff    	je     c0036e40 <_svfiprintf_r+0x180>
c0037255:	c6 85 72 ff ff ff 30 	movb   $0x30,-0x8e(%ebp)
c003725c:	88 85 73 ff ff ff    	mov    %al,-0x8d(%ebp)
c0037262:	83 8d 64 ff ff ff 02 	orl    $0x2,-0x9c(%ebp)
c0037269:	e9 d2 fb ff ff       	jmp    c0036e40 <_svfiprintf_r+0x180>
c003726e:	83 8d 64 ff ff ff 40 	orl    $0x40,-0x9c(%ebp)
c0037275:	89 d0                	mov    %edx,%eax
c0037277:	e9 3a fb ff ff       	jmp    c0036db6 <_svfiprintf_r+0xf6>
c003727c:	89 f8                	mov    %edi,%eax
c003727e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037281:	88 85 71 ff ff ff    	mov    %al,-0x8f(%ebp)
c0037287:	e9 0f fe ff ff       	jmp    c003709b <_svfiprintf_r+0x3db>
c003728c:	8b 45 14             	mov    0x14(%ebp),%eax
c003728f:	8d 5d 80             	lea    -0x80(%ebp),%ebx
c0037292:	89 55 10             	mov    %edx,0x10(%ebp)
c0037295:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c003729c:	c7 85 60 ff ff ff 01 	movl   $0x1,-0xa0(%ebp)
c00372a3:	00 00 00 
c00372a6:	8b 00                	mov    (%eax),%eax
c00372a8:	c7 85 58 ff ff ff 01 	movl   $0x1,-0xa8(%ebp)
c00372af:	00 00 00 
c00372b2:	88 45 80             	mov    %al,-0x80(%ebp)
c00372b5:	8b 45 14             	mov    0x14(%ebp),%eax
c00372b8:	83 c0 04             	add    $0x4,%eax
c00372bb:	89 45 14             	mov    %eax,0x14(%ebp)
c00372be:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00372c5:	00 00 00 
c00372c8:	e9 05 fc ff ff       	jmp    c0036ed2 <_svfiprintf_r+0x212>
c00372cd:	89 fb                	mov    %edi,%ebx
c00372cf:	89 55 10             	mov    %edx,0x10(%ebp)
c00372d2:	88 9d 71 ff ff ff    	mov    %bl,-0x8f(%ebp)
c00372d8:	c7 85 44 ff ff ff 52 	movl   $0xc0038e52,-0xbc(%ebp)
c00372df:	8e 03 c0 
c00372e2:	e9 33 ff ff ff       	jmp    c003721a <_svfiprintf_r+0x55a>
c00372e7:	83 8d 64 ff ff ff 10 	orl    $0x10,-0x9c(%ebp)
c00372ee:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c00372f5:	89 55 10             	mov    %edx,0x10(%ebp)
c00372f8:	8b 45 14             	mov    0x14(%ebp),%eax
c00372fb:	75 39                	jne    c0037336 <_svfiprintf_r+0x676>
c00372fd:	f6 85 64 ff ff ff 40 	testb  $0x40,-0x9c(%ebp)
c0037304:	74 30                	je     c0037336 <_svfiprintf_r+0x676>
c0037306:	0f b7 08             	movzwl (%eax),%ecx
c0037309:	83 c0 04             	add    $0x4,%eax
c003730c:	ba 01 00 00 00       	mov    $0x1,%edx
c0037311:	89 45 14             	mov    %eax,0x14(%ebp)
c0037314:	e9 27 fb ff ff       	jmp    c0036e40 <_svfiprintf_r+0x180>
c0037319:	83 8d 64 ff ff ff 01 	orl    $0x1,-0x9c(%ebp)
c0037320:	89 d0                	mov    %edx,%eax
c0037322:	e9 8f fa ff ff       	jmp    c0036db6 <_svfiprintf_r+0xf6>
c0037327:	f6 85 64 ff ff ff 10 	testb  $0x10,-0x9c(%ebp)
c003732e:	89 55 10             	mov    %edx,0x10(%ebp)
c0037331:	8b 45 14             	mov    0x14(%ebp),%eax
c0037334:	74 c7                	je     c00372fd <_svfiprintf_r+0x63d>
c0037336:	8b 08                	mov    (%eax),%ecx
c0037338:	83 c0 04             	add    $0x4,%eax
c003733b:	ba 01 00 00 00       	mov    $0x1,%edx
c0037340:	89 45 14             	mov    %eax,0x14(%ebp)
c0037343:	e9 f8 fa ff ff       	jmp    c0036e40 <_svfiprintf_r+0x180>
c0037348:	8b 45 14             	mov    0x14(%ebp),%eax
c003734b:	89 55 10             	mov    %edx,0x10(%ebp)
c003734e:	c6 85 71 ff ff ff 00 	movb   $0x0,-0x8f(%ebp)
c0037355:	8b 18                	mov    (%eax),%ebx
c0037357:	8d 50 04             	lea    0x4(%eax),%edx
c003735a:	85 db                	test   %ebx,%ebx
c003735c:	0f 84 cc 06 00 00    	je     c0037a2e <_svfiprintf_r+0xd6e>
c0037362:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037368:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)
c003736e:	85 ff                	test   %edi,%edi
c0037370:	0f 88 59 06 00 00    	js     c00379cf <_svfiprintf_r+0xd0f>
c0037376:	89 7c 24 08          	mov    %edi,0x8(%esp)
c003737a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037381:	00 
c0037382:	89 1c 24             	mov    %ebx,(%esp)
c0037385:	e8 06 e7 ff ff       	call   c0035a90 <memchr>
c003738a:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c0037390:	85 c0                	test   %eax,%eax
c0037392:	0f 84 c5 06 00 00    	je     c0037a5d <_svfiprintf_r+0xd9d>
c0037398:	29 d8                	sub    %ebx,%eax
c003739a:	39 f8                	cmp    %edi,%eax
c003739c:	0f 4f c7             	cmovg  %edi,%eax
c003739f:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00373a6:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00373ac:	89 55 14             	mov    %edx,0x14(%ebp)
c00373af:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00373b6:	00 00 00 
c00373b9:	e9 f2 fa ff ff       	jmp    c0036eb0 <_svfiprintf_r+0x1f0>
c00373be:	89 f8                	mov    %edi,%eax
c00373c0:	84 c0                	test   %al,%al
c00373c2:	b8 20 00 00 00       	mov    $0x20,%eax
c00373c7:	0f 44 f8             	cmove  %eax,%edi
c00373ca:	89 d0                	mov    %edx,%eax
c00373cc:	e9 e5 f9 ff ff       	jmp    c0036db6 <_svfiprintf_r+0xf6>
c00373d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00373d8:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00373de:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00373e4:	80 bd 71 ff ff ff 00 	cmpb   $0x0,-0x8f(%ebp)
c00373eb:	74 2e                	je     c003741b <_svfiprintf_r+0x75b>
c00373ed:	83 c0 01             	add    $0x1,%eax
c00373f0:	83 c2 01             	add    $0x1,%edx
c00373f3:	8d 8d 71 ff ff ff    	lea    -0x8f(%ebp),%ecx
c00373f9:	83 c6 08             	add    $0x8,%esi
c00373fc:	89 4e f8             	mov    %ecx,-0x8(%esi)
c00373ff:	c7 46 fc 01 00 00 00 	movl   $0x1,-0x4(%esi)
c0037406:	83 f8 07             	cmp    $0x7,%eax
c0037409:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003740f:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037415:	0f 8f b5 04 00 00    	jg     c00378d0 <_svfiprintf_r+0xc10>
c003741b:	8b 8d 4c ff ff ff    	mov    -0xb4(%ebp),%ecx
c0037421:	85 c9                	test   %ecx,%ecx
c0037423:	74 2e                	je     c0037453 <_svfiprintf_r+0x793>
c0037425:	83 c0 01             	add    $0x1,%eax
c0037428:	83 c2 02             	add    $0x2,%edx
c003742b:	8d 8d 72 ff ff ff    	lea    -0x8e(%ebp),%ecx
c0037431:	83 c6 08             	add    $0x8,%esi
c0037434:	89 4e f8             	mov    %ecx,-0x8(%esi)
c0037437:	c7 46 fc 02 00 00 00 	movl   $0x2,-0x4(%esi)
c003743e:	83 f8 07             	cmp    $0x7,%eax
c0037441:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037447:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003744d:	0f 8f 45 04 00 00    	jg     c0037898 <_svfiprintf_r+0xbd8>
c0037453:	81 bd 48 ff ff ff 80 	cmpl   $0x80,-0xb8(%ebp)
c003745a:	00 00 00 
c003745d:	0f 84 9d 02 00 00    	je     c0037700 <_svfiprintf_r+0xa40>
c0037463:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037469:	2b bd 58 ff ff ff    	sub    -0xa8(%ebp),%edi
c003746f:	85 ff                	test   %edi,%edi
c0037471:	0f 8e e1 00 00 00    	jle    c0037558 <_svfiprintf_r+0x898>
c0037477:	83 ff 10             	cmp    $0x10,%edi
c003747a:	0f 8e 7c 00 00 00    	jle    c00374fc <_svfiprintf_r+0x83c>
c0037480:	89 9d 5c ff ff ff    	mov    %ebx,-0xa4(%ebp)
c0037486:	89 f1                	mov    %esi,%ecx
c0037488:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003748b:	8b 75 0c             	mov    0xc(%ebp),%esi
c003748e:	eb 08                	jmp    c0037498 <_svfiprintf_r+0x7d8>
c0037490:	83 ef 10             	sub    $0x10,%edi
c0037493:	83 ff 10             	cmp    $0x10,%edi
c0037496:	7e 5c                	jle    c00374f4 <_svfiprintf_r+0x834>
c0037498:	83 c0 01             	add    $0x1,%eax
c003749b:	83 c2 10             	add    $0x10,%edx
c003749e:	c7 01 2c 93 03 c0    	movl   $0xc003932c,(%ecx)
c00374a4:	83 c1 08             	add    $0x8,%ecx
c00374a7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00374ae:	83 f8 07             	cmp    $0x7,%eax
c00374b1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00374b7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00374bd:	7e d1                	jle    c0037490 <_svfiprintf_r+0x7d0>
c00374bf:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00374c5:	89 44 24 08          	mov    %eax,0x8(%esp)
c00374c9:	89 74 24 04          	mov    %esi,0x4(%esp)
c00374cd:	89 1c 24             	mov    %ebx,(%esp)
c00374d0:	e8 fb f5 ff ff       	call   c0036ad0 <__ssprint_r>
c00374d5:	85 c0                	test   %eax,%eax
c00374d7:	0f 85 eb 01 00 00    	jne    c00376c8 <_svfiprintf_r+0xa08>
c00374dd:	83 ef 10             	sub    $0x10,%edi
c00374e0:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00374e6:	83 ff 10             	cmp    $0x10,%edi
c00374e9:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00374ef:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c00374f2:	7f a4                	jg     c0037498 <_svfiprintf_r+0x7d8>
c00374f4:	8b 9d 5c ff ff ff    	mov    -0xa4(%ebp),%ebx
c00374fa:	89 ce                	mov    %ecx,%esi
c00374fc:	83 c0 01             	add    $0x1,%eax
c00374ff:	01 fa                	add    %edi,%edx
c0037501:	c7 06 2c 93 03 c0    	movl   $0xc003932c,(%esi)
c0037507:	83 c6 08             	add    $0x8,%esi
c003750a:	89 7e fc             	mov    %edi,-0x4(%esi)
c003750d:	83 f8 07             	cmp    $0x7,%eax
c0037510:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037516:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003751c:	7e 3a                	jle    c0037558 <_svfiprintf_r+0x898>
c003751e:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037524:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037528:	8b 45 0c             	mov    0xc(%ebp),%eax
c003752b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003752f:	8b 45 08             	mov    0x8(%ebp),%eax
c0037532:	89 04 24             	mov    %eax,(%esp)
c0037535:	e8 96 f5 ff ff       	call   c0036ad0 <__ssprint_r>
c003753a:	85 c0                	test   %eax,%eax
c003753c:	0f 85 86 01 00 00    	jne    c00376c8 <_svfiprintf_r+0xa08>
c0037542:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037548:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003754b:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037551:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037558:	89 1e                	mov    %ebx,(%esi)
c003755a:	8b 9d 58 ff ff ff    	mov    -0xa8(%ebp),%ebx
c0037560:	83 c0 01             	add    $0x1,%eax
c0037563:	83 c6 08             	add    $0x8,%esi
c0037566:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003756c:	89 5e fc             	mov    %ebx,-0x4(%esi)
c003756f:	01 da                	add    %ebx,%edx
c0037571:	83 f8 07             	cmp    $0x7,%eax
c0037574:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003757a:	0f 8f 80 02 00 00    	jg     c0037800 <_svfiprintf_r+0xb40>
c0037580:	f6 85 64 ff ff ff 04 	testb  $0x4,-0x9c(%ebp)
c0037587:	0f 84 b9 00 00 00    	je     c0037646 <_svfiprintf_r+0x986>
c003758d:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037593:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c0037599:	85 ff                	test   %edi,%edi
c003759b:	0f 8e a5 00 00 00    	jle    c0037646 <_svfiprintf_r+0x986>
c00375a1:	83 ff 10             	cmp    $0x10,%edi
c00375a4:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00375aa:	8d 9d 74 ff ff ff    	lea    -0x8c(%ebp),%ebx
c00375b0:	7e 71                	jle    c0037623 <_svfiprintf_r+0x963>
c00375b2:	89 f1                	mov    %esi,%ecx
c00375b4:	8b 75 08             	mov    0x8(%ebp),%esi
c00375b7:	eb 0f                	jmp    c00375c8 <_svfiprintf_r+0x908>
c00375b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00375c0:	83 ef 10             	sub    $0x10,%edi
c00375c3:	83 ff 10             	cmp    $0x10,%edi
c00375c6:	7e 59                	jle    c0037621 <_svfiprintf_r+0x961>
c00375c8:	83 c0 01             	add    $0x1,%eax
c00375cb:	83 c2 10             	add    $0x10,%edx
c00375ce:	c7 01 3c 93 03 c0    	movl   $0xc003933c,(%ecx)
c00375d4:	83 c1 08             	add    $0x8,%ecx
c00375d7:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c00375de:	83 f8 07             	cmp    $0x7,%eax
c00375e1:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00375e7:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00375ed:	7e d1                	jle    c00375c0 <_svfiprintf_r+0x900>
c00375ef:	8b 45 0c             	mov    0xc(%ebp),%eax
c00375f2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00375f6:	89 34 24             	mov    %esi,(%esp)
c00375f9:	89 44 24 04          	mov    %eax,0x4(%esp)
c00375fd:	e8 ce f4 ff ff       	call   c0036ad0 <__ssprint_r>
c0037602:	85 c0                	test   %eax,%eax
c0037604:	0f 85 be 00 00 00    	jne    c00376c8 <_svfiprintf_r+0xa08>
c003760a:	83 ef 10             	sub    $0x10,%edi
c003760d:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037613:	83 ff 10             	cmp    $0x10,%edi
c0037616:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003761c:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c003761f:	7f a7                	jg     c00375c8 <_svfiprintf_r+0x908>
c0037621:	89 ce                	mov    %ecx,%esi
c0037623:	83 c0 01             	add    $0x1,%eax
c0037626:	01 fa                	add    %edi,%edx
c0037628:	83 f8 07             	cmp    $0x7,%eax
c003762b:	c7 06 3c 93 03 c0    	movl   $0xc003933c,(%esi)
c0037631:	89 7e 04             	mov    %edi,0x4(%esi)
c0037634:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c003763a:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c0037640:	0f 8f ee 02 00 00    	jg     c0037934 <_svfiprintf_r+0xc74>
c0037646:	8b 85 54 ff ff ff    	mov    -0xac(%ebp),%eax
c003764c:	8b b5 60 ff ff ff    	mov    -0xa0(%ebp),%esi
c0037652:	39 c6                	cmp    %eax,%esi
c0037654:	0f 4d c6             	cmovge %esi,%eax
c0037657:	01 85 50 ff ff ff    	add    %eax,-0xb0(%ebp)
c003765d:	85 d2                	test   %edx,%edx
c003765f:	0f 85 d3 01 00 00    	jne    c0037838 <_svfiprintf_r+0xb78>
c0037665:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%ebp)
c003766c:	00 00 00 
c003766f:	8d 75 a8             	lea    -0x58(%ebp),%esi
c0037672:	e9 a7 f6 ff ff       	jmp    c0036d1e <_svfiprintf_r+0x5e>
c0037677:	90                   	nop
c0037678:	84 d2                	test   %dl,%dl
c003767a:	75 6c                	jne    c00376e8 <_svfiprintf_r+0xa28>
c003767c:	f6 85 64 ff ff ff 01 	testb  $0x1,-0x9c(%ebp)
c0037683:	74 63                	je     c00376e8 <_svfiprintf_r+0xa28>
c0037685:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c003768b:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c003768e:	c6 45 a7 30          	movb   $0x30,-0x59(%ebp)
c0037692:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037698:	e9 13 f8 ff ff       	jmp    c0036eb0 <_svfiprintf_r+0x1f0>
c003769d:	8b 85 7c ff ff ff    	mov    -0x84(%ebp),%eax
c00376a3:	85 c0                	test   %eax,%eax
c00376a5:	74 21                	je     c00376c8 <_svfiprintf_r+0xa08>
c00376a7:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00376ad:	89 44 24 08          	mov    %eax,0x8(%esp)
c00376b1:	8b 45 0c             	mov    0xc(%ebp),%eax
c00376b4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00376b8:	8b 45 08             	mov    0x8(%ebp),%eax
c00376bb:	89 04 24             	mov    %eax,(%esp)
c00376be:	e8 0d f4 ff ff       	call   c0036ad0 <__ssprint_r>
c00376c3:	90                   	nop
c00376c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00376c8:	8b 75 0c             	mov    0xc(%ebp),%esi
c00376cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c00376d0:	f6 46 0c 40          	testb  $0x40,0xc(%esi)
c00376d4:	0f 44 85 50 ff ff ff 	cmove  -0xb0(%ebp),%eax
c00376db:	81 c4 cc 00 00 00    	add    $0xcc,%esp
c00376e1:	5b                   	pop    %ebx
c00376e2:	5e                   	pop    %esi
c00376e3:	5f                   	pop    %edi
c00376e4:	5d                   	pop    %ebp
c00376e5:	c3                   	ret    
c00376e6:	66 90                	xchg   %ax,%ax
c00376e8:	c7 85 58 ff ff ff 00 	movl   $0x0,-0xa8(%ebp)
c00376ef:	00 00 00 
c00376f2:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c00376f5:	e9 b6 f7 ff ff       	jmp    c0036eb0 <_svfiprintf_r+0x1f0>
c00376fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037700:	8b bd 54 ff ff ff    	mov    -0xac(%ebp),%edi
c0037706:	2b bd 60 ff ff ff    	sub    -0xa0(%ebp),%edi
c003770c:	85 ff                	test   %edi,%edi
c003770e:	0f 8e 4f fd ff ff    	jle    c0037463 <_svfiprintf_r+0x7a3>
c0037714:	83 ff 10             	cmp    $0x10,%edi
c0037717:	0f 8e 7f 00 00 00    	jle    c003779c <_svfiprintf_r+0xadc>
c003771d:	89 9d 4c ff ff ff    	mov    %ebx,-0xb4(%ebp)
c0037723:	89 f1                	mov    %esi,%ecx
c0037725:	8b 5d 08             	mov    0x8(%ebp),%ebx
c0037728:	8b 75 0c             	mov    0xc(%ebp),%esi
c003772b:	eb 0b                	jmp    c0037738 <_svfiprintf_r+0xa78>
c003772d:	8d 76 00             	lea    0x0(%esi),%esi
c0037730:	83 ef 10             	sub    $0x10,%edi
c0037733:	83 ff 10             	cmp    $0x10,%edi
c0037736:	7e 5c                	jle    c0037794 <_svfiprintf_r+0xad4>
c0037738:	83 c0 01             	add    $0x1,%eax
c003773b:	83 c2 10             	add    $0x10,%edx
c003773e:	c7 01 2c 93 03 c0    	movl   $0xc003932c,(%ecx)
c0037744:	83 c1 08             	add    $0x8,%ecx
c0037747:	c7 41 fc 10 00 00 00 	movl   $0x10,-0x4(%ecx)
c003774e:	83 f8 07             	cmp    $0x7,%eax
c0037751:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c0037757:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c003775d:	7e d1                	jle    c0037730 <_svfiprintf_r+0xa70>
c003775f:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037765:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037769:	89 74 24 04          	mov    %esi,0x4(%esp)
c003776d:	89 1c 24             	mov    %ebx,(%esp)
c0037770:	e8 5b f3 ff ff       	call   c0036ad0 <__ssprint_r>
c0037775:	85 c0                	test   %eax,%eax
c0037777:	0f 85 4b ff ff ff    	jne    c00376c8 <_svfiprintf_r+0xa08>
c003777d:	83 ef 10             	sub    $0x10,%edi
c0037780:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c0037786:	83 ff 10             	cmp    $0x10,%edi
c0037789:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c003778f:	8d 4d a8             	lea    -0x58(%ebp),%ecx
c0037792:	7f a4                	jg     c0037738 <_svfiprintf_r+0xa78>
c0037794:	8b 9d 4c ff ff ff    	mov    -0xb4(%ebp),%ebx
c003779a:	89 ce                	mov    %ecx,%esi
c003779c:	83 c0 01             	add    $0x1,%eax
c003779f:	01 fa                	add    %edi,%edx
c00377a1:	c7 06 2c 93 03 c0    	movl   $0xc003932c,(%esi)
c00377a7:	83 c6 08             	add    $0x8,%esi
c00377aa:	89 7e fc             	mov    %edi,-0x4(%esi)
c00377ad:	83 f8 07             	cmp    $0x7,%eax
c00377b0:	89 95 7c ff ff ff    	mov    %edx,-0x84(%ebp)
c00377b6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%ebp)
c00377bc:	0f 8e a1 fc ff ff    	jle    c0037463 <_svfiprintf_r+0x7a3>
c00377c2:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00377c8:	89 44 24 08          	mov    %eax,0x8(%esp)
c00377cc:	8b 45 0c             	mov    0xc(%ebp),%eax
c00377cf:	89 44 24 04          	mov    %eax,0x4(%esp)
c00377d3:	8b 45 08             	mov    0x8(%ebp),%eax
c00377d6:	89 04 24             	mov    %eax,(%esp)
c00377d9:	e8 f2 f2 ff ff       	call   c0036ad0 <__ssprint_r>
c00377de:	85 c0                	test   %eax,%eax
c00377e0:	0f 85 e2 fe ff ff    	jne    c00376c8 <_svfiprintf_r+0xa08>
c00377e6:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00377ec:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00377ef:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00377f5:	e9 69 fc ff ff       	jmp    c0037463 <_svfiprintf_r+0x7a3>
c00377fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037800:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c0037806:	89 44 24 08          	mov    %eax,0x8(%esp)
c003780a:	8b 45 0c             	mov    0xc(%ebp),%eax
c003780d:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037811:	8b 45 08             	mov    0x8(%ebp),%eax
c0037814:	89 04 24             	mov    %eax,(%esp)
c0037817:	e8 b4 f2 ff ff       	call   c0036ad0 <__ssprint_r>
c003781c:	85 c0                	test   %eax,%eax
c003781e:	0f 85 a4 fe ff ff    	jne    c00376c8 <_svfiprintf_r+0xa08>
c0037824:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003782a:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003782d:	e9 4e fd ff ff       	jmp    c0037580 <_svfiprintf_r+0x8c0>
c0037832:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037838:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003783e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037842:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037845:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037849:	8b 45 08             	mov    0x8(%ebp),%eax
c003784c:	89 04 24             	mov    %eax,(%esp)
c003784f:	e8 7c f2 ff ff       	call   c0036ad0 <__ssprint_r>
c0037854:	85 c0                	test   %eax,%eax
c0037856:	0f 84 09 fe ff ff    	je     c0037665 <_svfiprintf_r+0x9a5>
c003785c:	e9 67 fe ff ff       	jmp    c00376c8 <_svfiprintf_r+0xa08>
c0037861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037868:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003786e:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037872:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037875:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037879:	8b 45 08             	mov    0x8(%ebp),%eax
c003787c:	89 04 24             	mov    %eax,(%esp)
c003787f:	e8 4c f2 ff ff       	call   c0036ad0 <__ssprint_r>
c0037884:	85 c0                	test   %eax,%eax
c0037886:	0f 85 3c fe ff ff    	jne    c00376c8 <_svfiprintf_r+0xa08>
c003788c:	8d 75 a8             	lea    -0x58(%ebp),%esi
c003788f:	e9 e9 f4 ff ff       	jmp    c0036d7d <_svfiprintf_r+0xbd>
c0037894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037898:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003789e:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378a2:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378a5:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378a9:	8b 45 08             	mov    0x8(%ebp),%eax
c00378ac:	89 04 24             	mov    %eax,(%esp)
c00378af:	e8 1c f2 ff ff       	call   c0036ad0 <__ssprint_r>
c00378b4:	85 c0                	test   %eax,%eax
c00378b6:	0f 85 0c fe ff ff    	jne    c00376c8 <_svfiprintf_r+0xa08>
c00378bc:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378c2:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378c5:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c00378cb:	e9 83 fb ff ff       	jmp    c0037453 <_svfiprintf_r+0x793>
c00378d0:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c00378d6:	89 44 24 08          	mov    %eax,0x8(%esp)
c00378da:	8b 45 0c             	mov    0xc(%ebp),%eax
c00378dd:	89 44 24 04          	mov    %eax,0x4(%esp)
c00378e1:	8b 45 08             	mov    0x8(%ebp),%eax
c00378e4:	89 04 24             	mov    %eax,(%esp)
c00378e7:	e8 e4 f1 ff ff       	call   c0036ad0 <__ssprint_r>
c00378ec:	85 c0                	test   %eax,%eax
c00378ee:	0f 85 d4 fd ff ff    	jne    c00376c8 <_svfiprintf_r+0xa08>
c00378f4:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c00378fa:	8d 75 a8             	lea    -0x58(%ebp),%esi
c00378fd:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
c0037903:	e9 13 fb ff ff       	jmp    c003741b <_svfiprintf_r+0x75b>
c0037908:	83 f9 09             	cmp    $0x9,%ecx
c003790b:	76 56                	jbe    c0037963 <_svfiprintf_r+0xca3>
c003790d:	8d 5d a8             	lea    -0x58(%ebp),%ebx
c0037910:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
c0037915:	83 eb 01             	sub    $0x1,%ebx
c0037918:	f7 e1                	mul    %ecx
c003791a:	c1 ea 03             	shr    $0x3,%edx
c003791d:	8d 04 92             	lea    (%edx,%edx,4),%eax
c0037920:	01 c0                	add    %eax,%eax
c0037922:	29 c1                	sub    %eax,%ecx
c0037924:	83 c1 30             	add    $0x30,%ecx
c0037927:	85 d2                	test   %edx,%edx
c0037929:	88 0b                	mov    %cl,(%ebx)
c003792b:	89 d1                	mov    %edx,%ecx
c003792d:	75 e1                	jne    c0037910 <_svfiprintf_r+0xc50>
c003792f:	e9 71 f5 ff ff       	jmp    c0036ea5 <_svfiprintf_r+0x1e5>
c0037934:	8d 85 74 ff ff ff    	lea    -0x8c(%ebp),%eax
c003793a:	89 44 24 08          	mov    %eax,0x8(%esp)
c003793e:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037941:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037945:	8b 45 08             	mov    0x8(%ebp),%eax
c0037948:	89 04 24             	mov    %eax,(%esp)
c003794b:	e8 80 f1 ff ff       	call   c0036ad0 <__ssprint_r>
c0037950:	85 c0                	test   %eax,%eax
c0037952:	0f 85 70 fd ff ff    	jne    c00376c8 <_svfiprintf_r+0xa08>
c0037958:	8b 95 7c ff ff ff    	mov    -0x84(%ebp),%edx
c003795e:	e9 e3 fc ff ff       	jmp    c0037646 <_svfiprintf_r+0x986>
c0037963:	8b 85 3c ff ff ff    	mov    -0xc4(%ebp),%eax
c0037969:	83 c1 30             	add    $0x30,%ecx
c003796c:	88 4d a7             	mov    %cl,-0x59(%ebp)
c003796f:	8d 5d a7             	lea    -0x59(%ebp),%ebx
c0037972:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037978:	e9 33 f5 ff ff       	jmp    c0036eb0 <_svfiprintf_r+0x1f0>
c003797d:	8b 45 14             	mov    0x14(%ebp),%eax
c0037980:	8b 9d 50 ff ff ff    	mov    -0xb0(%ebp),%ebx
c0037986:	8b 00                	mov    (%eax),%eax
c0037988:	89 18                	mov    %ebx,(%eax)
c003798a:	8b 45 14             	mov    0x14(%ebp),%eax
c003798d:	83 c0 04             	add    $0x4,%eax
c0037990:	89 45 14             	mov    %eax,0x14(%ebp)
c0037993:	e9 86 f3 ff ff       	jmp    c0036d1e <_svfiprintf_r+0x5e>
c0037998:	0f b7 0b             	movzwl (%ebx),%ecx
c003799b:	83 c3 04             	add    $0x4,%ebx
c003799e:	89 5d 14             	mov    %ebx,0x14(%ebp)
c00379a1:	e9 95 f8 ff ff       	jmp    c003723b <_svfiprintf_r+0x57b>
c00379a6:	0f bf 08             	movswl (%eax),%ecx
c00379a9:	83 c0 04             	add    $0x4,%eax
c00379ac:	89 45 14             	mov    %eax,0x14(%ebp)
c00379af:	85 c9                	test   %ecx,%ecx
c00379b1:	0f 89 0d f7 ff ff    	jns    c00370c4 <_svfiprintf_r+0x404>
c00379b7:	f7 d9                	neg    %ecx
c00379b9:	bf 2d 00 00 00       	mov    $0x2d,%edi
c00379be:	c6 85 71 ff ff ff 2d 	movb   $0x2d,-0x8f(%ebp)
c00379c5:	ba 01 00 00 00       	mov    $0x1,%edx
c00379ca:	e9 7a f4 ff ff       	jmp    c0036e49 <_svfiprintf_r+0x189>
c00379cf:	89 1c 24             	mov    %ebx,(%esp)
c00379d2:	e8 79 f0 ff ff       	call   c0036a50 <strlen>
c00379d7:	8b 95 60 ff ff ff    	mov    -0xa0(%ebp),%edx
c00379dd:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c00379e4:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c00379eb:	00 00 00 
c00379ee:	89 55 14             	mov    %edx,0x14(%ebp)
c00379f1:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c00379f7:	e9 b4 f4 ff ff       	jmp    c0036eb0 <_svfiprintf_r+0x1f0>
c00379fc:	8b 45 08             	mov    0x8(%ebp),%eax
c00379ff:	c7 44 24 04 40 00 00 	movl   $0x40,0x4(%esp)
c0037a06:	00 
c0037a07:	89 04 24             	mov    %eax,(%esp)
c0037a0a:	e8 41 d9 ff ff       	call   c0035350 <_malloc_r>
c0037a0f:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037a12:	85 c0                	test   %eax,%eax
c0037a14:	89 06                	mov    %eax,(%esi)
c0037a16:	89 46 10             	mov    %eax,0x10(%esi)
c0037a19:	0f 84 a3 00 00 00    	je     c0037ac2 <_svfiprintf_r+0xe02>
c0037a1f:	8b 45 0c             	mov    0xc(%ebp),%eax
c0037a22:	c7 40 14 40 00 00 00 	movl   $0x40,0x14(%eax)
c0037a29:	e9 b2 f2 ff ff       	jmp    c0036ce0 <_svfiprintf_r+0x20>
c0037a2e:	8b bd 5c ff ff ff    	mov    -0xa4(%ebp),%edi
c0037a34:	b8 06 00 00 00       	mov    $0x6,%eax
c0037a39:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a3c:	83 ff 06             	cmp    $0x6,%edi
c0037a3f:	0f 46 c7             	cmovbe %edi,%eax
c0037a42:	85 c0                	test   %eax,%eax
c0037a44:	0f 49 d8             	cmovns %eax,%ebx
c0037a47:	89 9d 60 ff ff ff    	mov    %ebx,-0xa0(%ebp)
c0037a4d:	bb 74 8e 03 c0       	mov    $0xc0038e74,%ebx
c0037a52:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a58:	e9 61 f8 ff ff       	jmp    c00372be <_svfiprintf_r+0x5fe>
c0037a5d:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
c0037a63:	0f b6 bd 71 ff ff ff 	movzbl -0x8f(%ebp),%edi
c0037a6a:	89 55 14             	mov    %edx,0x14(%ebp)
c0037a6d:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a74:	00 00 00 
c0037a77:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%ebp)
c0037a7d:	e9 2e f4 ff ff       	jmp    c0036eb0 <_svfiprintf_r+0x1f0>
c0037a82:	89 da                	mov    %ebx,%edx
c0037a84:	c7 85 5c ff ff ff 00 	movl   $0x0,-0xa4(%ebp)
c0037a8b:	00 00 00 
c0037a8e:	e9 29 f3 ff ff       	jmp    c0036dbc <_svfiprintf_r+0xfc>
c0037a93:	8b 4d 14             	mov    0x14(%ebp),%ecx
c0037a96:	89 da                	mov    %ebx,%edx
c0037a98:	8b 45 14             	mov    0x14(%ebp),%eax
c0037a9b:	8b 09                	mov    (%ecx),%ecx
c0037a9d:	83 c0 04             	add    $0x4,%eax
c0037aa0:	89 45 14             	mov    %eax,0x14(%ebp)
c0037aa3:	85 c9                	test   %ecx,%ecx
c0037aa5:	89 8d 5c ff ff ff    	mov    %ecx,-0xa4(%ebp)
c0037aab:	0f 89 26 f3 ff ff    	jns    c0036dd7 <_svfiprintf_r+0x117>
c0037ab1:	c7 85 5c ff ff ff ff 	movl   $0xffffffff,-0xa4(%ebp)
c0037ab8:	ff ff ff 
c0037abb:	89 d0                	mov    %edx,%eax
c0037abd:	e9 f4 f2 ff ff       	jmp    c0036db6 <_svfiprintf_r+0xf6>
c0037ac2:	8b 45 08             	mov    0x8(%ebp),%eax
c0037ac5:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0037acb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
c0037ad0:	e9 06 fc ff ff       	jmp    c00376db <_svfiprintf_r+0xa1b>
c0037ad5:	66 90                	xchg   %ax,%ax
c0037ad7:	66 90                	xchg   %ax,%ax
c0037ad9:	66 90                	xchg   %ax,%ax
c0037adb:	66 90                	xchg   %ax,%ax
c0037add:	66 90                	xchg   %ax,%ax
c0037adf:	90                   	nop

c0037ae0 <_calloc_r>:
c0037ae0:	55                   	push   %ebp
c0037ae1:	89 e5                	mov    %esp,%ebp
c0037ae3:	53                   	push   %ebx
c0037ae4:	83 ec 14             	sub    $0x14,%esp
c0037ae7:	8b 45 10             	mov    0x10(%ebp),%eax
c0037aea:	0f af 45 0c          	imul   0xc(%ebp),%eax
c0037aee:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037af2:	8b 45 08             	mov    0x8(%ebp),%eax
c0037af5:	89 04 24             	mov    %eax,(%esp)
c0037af8:	e8 53 d8 ff ff       	call   c0035350 <_malloc_r>
c0037afd:	85 c0                	test   %eax,%eax
c0037aff:	89 c3                	mov    %eax,%ebx
c0037b01:	0f 84 91 00 00 00    	je     c0037b98 <_calloc_r+0xb8>
c0037b07:	8b 40 fc             	mov    -0x4(%eax),%eax
c0037b0a:	83 e0 fc             	and    $0xfffffffc,%eax
c0037b0d:	83 e8 04             	sub    $0x4,%eax
c0037b10:	83 f8 24             	cmp    $0x24,%eax
c0037b13:	77 63                	ja     c0037b78 <_calloc_r+0x98>
c0037b15:	83 f8 13             	cmp    $0x13,%eax
c0037b18:	89 da                	mov    %ebx,%edx
c0037b1a:	77 1c                	ja     c0037b38 <_calloc_r+0x58>
c0037b1c:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
c0037b22:	89 d8                	mov    %ebx,%eax
c0037b24:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
c0037b2b:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
c0037b32:	83 c4 14             	add    $0x14,%esp
c0037b35:	5b                   	pop    %ebx
c0037b36:	5d                   	pop    %ebp
c0037b37:	c3                   	ret    
c0037b38:	83 f8 1b             	cmp    $0x1b,%eax
c0037b3b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
c0037b41:	8d 53 08             	lea    0x8(%ebx),%edx
c0037b44:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
c0037b4b:	76 cf                	jbe    c0037b1c <_calloc_r+0x3c>
c0037b4d:	83 f8 24             	cmp    $0x24,%eax
c0037b50:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
c0037b57:	8d 53 10             	lea    0x10(%ebx),%edx
c0037b5a:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
c0037b61:	75 b9                	jne    c0037b1c <_calloc_r+0x3c>
c0037b63:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
c0037b6a:	8d 53 18             	lea    0x18(%ebx),%edx
c0037b6d:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
c0037b74:	eb a6                	jmp    c0037b1c <_calloc_r+0x3c>
c0037b76:	66 90                	xchg   %ax,%ax
c0037b78:	89 1c 24             	mov    %ebx,(%esp)
c0037b7b:	89 44 24 08          	mov    %eax,0x8(%esp)
c0037b7f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037b86:	00 
c0037b87:	e8 50 a2 ff ff       	call   c0031ddc <memset>
c0037b8c:	83 c4 14             	add    $0x14,%esp
c0037b8f:	89 d8                	mov    %ebx,%eax
c0037b91:	5b                   	pop    %ebx
c0037b92:	5d                   	pop    %ebp
c0037b93:	c3                   	ret    
c0037b94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037b98:	31 c0                	xor    %eax,%eax
c0037b9a:	eb 96                	jmp    c0037b32 <_calloc_r+0x52>
c0037b9c:	66 90                	xchg   %ax,%ax
c0037b9e:	66 90                	xchg   %ax,%ax

c0037ba0 <_malloc_trim_r>:
c0037ba0:	55                   	push   %ebp
c0037ba1:	89 e5                	mov    %esp,%ebp
c0037ba3:	57                   	push   %edi
c0037ba4:	56                   	push   %esi
c0037ba5:	53                   	push   %ebx
c0037ba6:	83 ec 1c             	sub    $0x1c,%esp
c0037ba9:	8b 75 08             	mov    0x8(%ebp),%esi
c0037bac:	89 34 24             	mov    %esi,(%esp)
c0037baf:	e8 7c df ff ff       	call   c0035b30 <__malloc_lock>
c0037bb4:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0037bb9:	8b 58 04             	mov    0x4(%eax),%ebx
c0037bbc:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037bbf:	89 d8                	mov    %ebx,%eax
c0037bc1:	2b 45 0c             	sub    0xc(%ebp),%eax
c0037bc4:	05 ef 0f 00 00       	add    $0xfef,%eax
c0037bc9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
c0037bce:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
c0037bd4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
c0037bda:	7e 1c                	jle    c0037bf8 <_malloc_trim_r+0x58>
c0037bdc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037be3:	00 
c0037be4:	89 34 24             	mov    %esi,(%esp)
c0037be7:	e8 44 ed ff ff       	call   c0036930 <_sbrk_r>
c0037bec:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0037bf2:	01 da                	add    %ebx,%edx
c0037bf4:	39 d0                	cmp    %edx,%eax
c0037bf6:	74 18                	je     c0037c10 <_malloc_trim_r+0x70>
c0037bf8:	89 34 24             	mov    %esi,(%esp)
c0037bfb:	e8 40 df ff ff       	call   c0035b40 <__malloc_unlock>
c0037c00:	83 c4 1c             	add    $0x1c,%esp
c0037c03:	31 c0                	xor    %eax,%eax
c0037c05:	5b                   	pop    %ebx
c0037c06:	5e                   	pop    %esi
c0037c07:	5f                   	pop    %edi
c0037c08:	5d                   	pop    %ebp
c0037c09:	c3                   	ret    
c0037c0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037c10:	89 f8                	mov    %edi,%eax
c0037c12:	f7 d8                	neg    %eax
c0037c14:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037c18:	89 34 24             	mov    %esi,(%esp)
c0037c1b:	e8 10 ed ff ff       	call   c0036930 <_sbrk_r>
c0037c20:	83 f8 ff             	cmp    $0xffffffff,%eax
c0037c23:	74 2b                	je     c0037c50 <_malloc_trim_r+0xb0>
c0037c25:	a1 48 c5 03 c0       	mov    0xc003c548,%eax
c0037c2a:	29 fb                	sub    %edi,%ebx
c0037c2c:	83 cb 01             	or     $0x1,%ebx
c0037c2f:	29 3d 20 f0 06 c0    	sub    %edi,0xc006f020
c0037c35:	89 58 04             	mov    %ebx,0x4(%eax)
c0037c38:	89 34 24             	mov    %esi,(%esp)
c0037c3b:	e8 00 df ff ff       	call   c0035b40 <__malloc_unlock>
c0037c40:	83 c4 1c             	add    $0x1c,%esp
c0037c43:	b8 01 00 00 00       	mov    $0x1,%eax
c0037c48:	5b                   	pop    %ebx
c0037c49:	5e                   	pop    %esi
c0037c4a:	5f                   	pop    %edi
c0037c4b:	5d                   	pop    %ebp
c0037c4c:	c3                   	ret    
c0037c4d:	8d 76 00             	lea    0x0(%esi),%esi
c0037c50:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
c0037c57:	00 
c0037c58:	89 34 24             	mov    %esi,(%esp)
c0037c5b:	e8 d0 ec ff ff       	call   c0036930 <_sbrk_r>
c0037c60:	8b 15 48 c5 03 c0    	mov    0xc003c548,%edx
c0037c66:	89 c1                	mov    %eax,%ecx
c0037c68:	29 d1                	sub    %edx,%ecx
c0037c6a:	83 f9 0f             	cmp    $0xf,%ecx
c0037c6d:	7e 89                	jle    c0037bf8 <_malloc_trim_r+0x58>
c0037c6f:	2b 05 20 c5 03 c0    	sub    0xc003c520,%eax
c0037c75:	83 c9 01             	or     $0x1,%ecx
c0037c78:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037c7b:	a3 20 f0 06 c0       	mov    %eax,0xc006f020
c0037c80:	e9 73 ff ff ff       	jmp    c0037bf8 <_malloc_trim_r+0x58>
c0037c85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037c89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

c0037c90 <_free_r>:
c0037c90:	55                   	push   %ebp
c0037c91:	89 e5                	mov    %esp,%ebp
c0037c93:	57                   	push   %edi
c0037c94:	56                   	push   %esi
c0037c95:	53                   	push   %ebx
c0037c96:	83 ec 1c             	sub    $0x1c,%esp
c0037c99:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037c9c:	8b 45 08             	mov    0x8(%ebp),%eax
c0037c9f:	85 f6                	test   %esi,%esi
c0037ca1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037ca4:	0f 84 fe 00 00 00    	je     c0037da8 <_free_r+0x118>
c0037caa:	89 04 24             	mov    %eax,(%esp)
c0037cad:	e8 7e de ff ff       	call   c0035b30 <__malloc_lock>
c0037cb2:	8b 7e fc             	mov    -0x4(%esi),%edi
c0037cb5:	8d 56 f8             	lea    -0x8(%esi),%edx
c0037cb8:	89 f8                	mov    %edi,%eax
c0037cba:	83 e0 fe             	and    $0xfffffffe,%eax
c0037cbd:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
c0037cc0:	8b 59 04             	mov    0x4(%ecx),%ebx
c0037cc3:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037cc6:	39 0d 48 c5 03 c0    	cmp    %ecx,0xc003c548
c0037ccc:	0f 84 0e 01 00 00    	je     c0037de0 <_free_r+0x150>
c0037cd2:	83 e7 01             	and    $0x1,%edi
c0037cd5:	89 59 04             	mov    %ebx,0x4(%ecx)
c0037cd8:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
c0037cdf:	75 1f                	jne    c0037d00 <_free_r+0x70>
c0037ce1:	8b 76 f8             	mov    -0x8(%esi),%esi
c0037ce4:	29 f2                	sub    %esi,%edx
c0037ce6:	01 f0                	add    %esi,%eax
c0037ce8:	8b 72 08             	mov    0x8(%edx),%esi
c0037ceb:	81 fe 48 c5 03 c0    	cmp    $0xc003c548,%esi
c0037cf1:	0f 84 39 01 00 00    	je     c0037e30 <_free_r+0x1a0>
c0037cf7:	8b 7a 0c             	mov    0xc(%edx),%edi
c0037cfa:	89 7e 0c             	mov    %edi,0xc(%esi)
c0037cfd:	89 77 08             	mov    %esi,0x8(%edi)
c0037d00:	f6 44 19 04 01       	testb  $0x1,0x4(%ecx,%ebx,1)
c0037d05:	75 21                	jne    c0037d28 <_free_r+0x98>
c0037d07:	8b 75 e0             	mov    -0x20(%ebp),%esi
c0037d0a:	01 d8                	add    %ebx,%eax
c0037d0c:	8b 59 08             	mov    0x8(%ecx),%ebx
c0037d0f:	85 f6                	test   %esi,%esi
c0037d11:	75 0c                	jne    c0037d1f <_free_r+0x8f>
c0037d13:	81 fb 48 c5 03 c0    	cmp    $0xc003c548,%ebx
c0037d19:	0f 84 21 01 00 00    	je     c0037e40 <_free_r+0x1b0>
c0037d1f:	8b 49 0c             	mov    0xc(%ecx),%ecx
c0037d22:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037d25:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037d28:	89 c1                	mov    %eax,%ecx
c0037d2a:	83 c9 01             	or     $0x1,%ecx
c0037d2d:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037d30:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037d33:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037d36:	85 c9                	test   %ecx,%ecx
c0037d38:	75 56                	jne    c0037d90 <_free_r+0x100>
c0037d3a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
c0037d3f:	76 6f                	jbe    c0037db0 <_free_r+0x120>
c0037d41:	89 c1                	mov    %eax,%ecx
c0037d43:	c1 e9 09             	shr    $0x9,%ecx
c0037d46:	83 f9 04             	cmp    $0x4,%ecx
c0037d49:	0f 87 21 01 00 00    	ja     c0037e70 <_free_r+0x1e0>
c0037d4f:	89 c1                	mov    %eax,%ecx
c0037d51:	c1 e9 06             	shr    $0x6,%ecx
c0037d54:	83 c1 38             	add    $0x38,%ecx
c0037d57:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037d5a:	8d 34 9d 40 c5 03 c0 	lea    -0x3ffc3ac0(,%ebx,4),%esi
c0037d61:	8b 5e 08             	mov    0x8(%esi),%ebx
c0037d64:	39 f3                	cmp    %esi,%ebx
c0037d66:	0f 84 14 01 00 00    	je     c0037e80 <_free_r+0x1f0>
c0037d6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037d70:	8b 4b 04             	mov    0x4(%ebx),%ecx
c0037d73:	83 e1 fc             	and    $0xfffffffc,%ecx
c0037d76:	39 c8                	cmp    %ecx,%eax
c0037d78:	73 07                	jae    c0037d81 <_free_r+0xf1>
c0037d7a:	8b 5b 08             	mov    0x8(%ebx),%ebx
c0037d7d:	39 de                	cmp    %ebx,%esi
c0037d7f:	75 ef                	jne    c0037d70 <_free_r+0xe0>
c0037d81:	8b 43 0c             	mov    0xc(%ebx),%eax
c0037d84:	89 42 0c             	mov    %eax,0xc(%edx)
c0037d87:	89 5a 08             	mov    %ebx,0x8(%edx)
c0037d8a:	89 50 08             	mov    %edx,0x8(%eax)
c0037d8d:	89 53 0c             	mov    %edx,0xc(%ebx)
c0037d90:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037d93:	89 45 08             	mov    %eax,0x8(%ebp)
c0037d96:	83 c4 1c             	add    $0x1c,%esp
c0037d99:	5b                   	pop    %ebx
c0037d9a:	5e                   	pop    %esi
c0037d9b:	5f                   	pop    %edi
c0037d9c:	5d                   	pop    %ebp
c0037d9d:	e9 9e dd ff ff       	jmp    c0035b40 <__malloc_unlock>
c0037da2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037da8:	83 c4 1c             	add    $0x1c,%esp
c0037dab:	5b                   	pop    %ebx
c0037dac:	5e                   	pop    %esi
c0037dad:	5f                   	pop    %edi
c0037dae:	5d                   	pop    %ebp
c0037daf:	c3                   	ret    
c0037db0:	c1 e8 03             	shr    $0x3,%eax
c0037db3:	bb 01 00 00 00       	mov    $0x1,%ebx
c0037db8:	89 c1                	mov    %eax,%ecx
c0037dba:	c1 f9 02             	sar    $0x2,%ecx
c0037dbd:	8d 04 c5 40 c5 03 c0 	lea    -0x3ffc3ac0(,%eax,8),%eax
c0037dc4:	d3 e3                	shl    %cl,%ebx
c0037dc6:	8b 48 08             	mov    0x8(%eax),%ecx
c0037dc9:	09 1d 44 c5 03 c0    	or     %ebx,0xc003c544
c0037dcf:	89 42 0c             	mov    %eax,0xc(%edx)
c0037dd2:	89 4a 08             	mov    %ecx,0x8(%edx)
c0037dd5:	89 50 08             	mov    %edx,0x8(%eax)
c0037dd8:	89 51 0c             	mov    %edx,0xc(%ecx)
c0037ddb:	eb b3                	jmp    c0037d90 <_free_r+0x100>
c0037ddd:	8d 76 00             	lea    0x0(%esi),%esi
c0037de0:	01 d8                	add    %ebx,%eax
c0037de2:	83 e7 01             	and    $0x1,%edi
c0037de5:	75 13                	jne    c0037dfa <_free_r+0x16a>
c0037de7:	8b 4e f8             	mov    -0x8(%esi),%ecx
c0037dea:	29 ca                	sub    %ecx,%edx
c0037dec:	01 c8                	add    %ecx,%eax
c0037dee:	8b 5a 08             	mov    0x8(%edx),%ebx
c0037df1:	8b 4a 0c             	mov    0xc(%edx),%ecx
c0037df4:	89 4b 0c             	mov    %ecx,0xc(%ebx)
c0037df7:	89 59 08             	mov    %ebx,0x8(%ecx)
c0037dfa:	89 c1                	mov    %eax,%ecx
c0037dfc:	83 c9 01             	or     $0x1,%ecx
c0037dff:	3b 05 24 c5 03 c0    	cmp    0xc003c524,%eax
c0037e05:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e08:	89 15 48 c5 03 c0    	mov    %edx,0xc003c548
c0037e0e:	72 80                	jb     c0037d90 <_free_r+0x100>
c0037e10:	a1 50 f0 06 c0       	mov    0xc006f050,%eax
c0037e15:	89 44 24 04          	mov    %eax,0x4(%esp)
c0037e19:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037e1c:	89 04 24             	mov    %eax,(%esp)
c0037e1f:	e8 7c fd ff ff       	call   c0037ba0 <_malloc_trim_r>
c0037e24:	e9 67 ff ff ff       	jmp    c0037d90 <_free_r+0x100>
c0037e29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0037e30:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
c0037e37:	e9 c4 fe ff ff       	jmp    c0037d00 <_free_r+0x70>
c0037e3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0037e40:	89 c1                	mov    %eax,%ecx
c0037e42:	83 c9 01             	or     $0x1,%ecx
c0037e45:	89 15 54 c5 03 c0    	mov    %edx,0xc003c554
c0037e4b:	89 15 50 c5 03 c0    	mov    %edx,0xc003c550
c0037e51:	c7 42 0c 48 c5 03 c0 	movl   $0xc003c548,0xc(%edx)
c0037e58:	c7 42 08 48 c5 03 c0 	movl   $0xc003c548,0x8(%edx)
c0037e5f:	89 4a 04             	mov    %ecx,0x4(%edx)
c0037e62:	89 04 02             	mov    %eax,(%edx,%eax,1)
c0037e65:	e9 26 ff ff ff       	jmp    c0037d90 <_free_r+0x100>
c0037e6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c0037e70:	83 f9 14             	cmp    $0x14,%ecx
c0037e73:	77 23                	ja     c0037e98 <_free_r+0x208>
c0037e75:	83 c1 5b             	add    $0x5b,%ecx
c0037e78:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037e7b:	e9 da fe ff ff       	jmp    c0037d5a <_free_r+0xca>
c0037e80:	c1 f9 02             	sar    $0x2,%ecx
c0037e83:	b8 01 00 00 00       	mov    $0x1,%eax
c0037e88:	d3 e0                	shl    %cl,%eax
c0037e8a:	09 05 44 c5 03 c0    	or     %eax,0xc003c544
c0037e90:	89 d8                	mov    %ebx,%eax
c0037e92:	e9 ed fe ff ff       	jmp    c0037d84 <_free_r+0xf4>
c0037e97:	90                   	nop
c0037e98:	83 f9 54             	cmp    $0x54,%ecx
c0037e9b:	77 10                	ja     c0037ead <_free_r+0x21d>
c0037e9d:	89 c1                	mov    %eax,%ecx
c0037e9f:	c1 e9 0c             	shr    $0xc,%ecx
c0037ea2:	83 c1 6e             	add    $0x6e,%ecx
c0037ea5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ea8:	e9 ad fe ff ff       	jmp    c0037d5a <_free_r+0xca>
c0037ead:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
c0037eb3:	77 10                	ja     c0037ec5 <_free_r+0x235>
c0037eb5:	89 c1                	mov    %eax,%ecx
c0037eb7:	c1 e9 0f             	shr    $0xf,%ecx
c0037eba:	83 c1 77             	add    $0x77,%ecx
c0037ebd:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ec0:	e9 95 fe ff ff       	jmp    c0037d5a <_free_r+0xca>
c0037ec5:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
c0037ecb:	77 10                	ja     c0037edd <_free_r+0x24d>
c0037ecd:	89 c1                	mov    %eax,%ecx
c0037ecf:	c1 e9 12             	shr    $0x12,%ecx
c0037ed2:	83 c1 7c             	add    $0x7c,%ecx
c0037ed5:	8d 1c 09             	lea    (%ecx,%ecx,1),%ebx
c0037ed8:	e9 7d fe ff ff       	jmp    c0037d5a <_free_r+0xca>
c0037edd:	bb fc 00 00 00       	mov    $0xfc,%ebx
c0037ee2:	b9 7e 00 00 00       	mov    $0x7e,%ecx
c0037ee7:	e9 6e fe ff ff       	jmp    c0037d5a <_free_r+0xca>
c0037eec:	66 90                	xchg   %ax,%ax
c0037eee:	66 90                	xchg   %ax,%ax

c0037ef0 <memmove>:
c0037ef0:	55                   	push   %ebp
c0037ef1:	89 e5                	mov    %esp,%ebp
c0037ef3:	56                   	push   %esi
c0037ef4:	57                   	push   %edi
c0037ef5:	53                   	push   %ebx
c0037ef6:	8b 7d 08             	mov    0x8(%ebp),%edi
c0037ef9:	8b 4d 10             	mov    0x10(%ebp),%ecx
c0037efc:	8b 75 0c             	mov    0xc(%ebp),%esi
c0037eff:	fc                   	cld    
c0037f00:	39 fe                	cmp    %edi,%esi
c0037f02:	73 43                	jae    c0037f47 <memmove+0x57>
c0037f04:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
c0037f08:	39 df                	cmp    %ebx,%edi
c0037f0a:	77 3b                	ja     c0037f47 <memmove+0x57>
c0037f0c:	01 ce                	add    %ecx,%esi
c0037f0e:	01 cf                	add    %ecx,%edi
c0037f10:	fd                   	std    
c0037f11:	83 f9 08             	cmp    $0x8,%ecx
c0037f14:	76 2b                	jbe    c0037f41 <memmove+0x51>
c0037f16:	89 fa                	mov    %edi,%edx
c0037f18:	89 cb                	mov    %ecx,%ebx
c0037f1a:	83 e2 03             	and    $0x3,%edx
c0037f1d:	74 0c                	je     c0037f2b <memmove+0x3b>
c0037f1f:	89 d1                	mov    %edx,%ecx
c0037f21:	4e                   	dec    %esi
c0037f22:	4f                   	dec    %edi
c0037f23:	29 cb                	sub    %ecx,%ebx
c0037f25:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f27:	89 d9                	mov    %ebx,%ecx
c0037f29:	46                   	inc    %esi
c0037f2a:	47                   	inc    %edi
c0037f2b:	c1 e9 02             	shr    $0x2,%ecx
c0037f2e:	83 ee 04             	sub    $0x4,%esi
c0037f31:	83 ef 04             	sub    $0x4,%edi
c0037f34:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037f36:	83 c6 04             	add    $0x4,%esi
c0037f39:	83 c7 04             	add    $0x4,%edi
c0037f3c:	89 d9                	mov    %ebx,%ecx
c0037f3e:	83 e1 03             	and    $0x3,%ecx
c0037f41:	4e                   	dec    %esi
c0037f42:	4f                   	dec    %edi
c0037f43:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f45:	eb 2a                	jmp    c0037f71 <memmove+0x81>
c0037f47:	83 f9 08             	cmp    $0x8,%ecx
c0037f4a:	76 23                	jbe    c0037f6f <memmove+0x7f>
c0037f4c:	89 fa                	mov    %edi,%edx
c0037f4e:	89 cb                	mov    %ecx,%ebx
c0037f50:	83 e2 03             	and    $0x3,%edx
c0037f53:	74 10                	je     c0037f65 <memmove+0x75>
c0037f55:	b9 04 00 00 00       	mov    $0x4,%ecx
c0037f5a:	29 d1                	sub    %edx,%ecx
c0037f5c:	83 e1 03             	and    $0x3,%ecx
c0037f5f:	29 cb                	sub    %ecx,%ebx
c0037f61:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f63:	89 d9                	mov    %ebx,%ecx
c0037f65:	c1 e9 02             	shr    $0x2,%ecx
c0037f68:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
c0037f6a:	89 d9                	mov    %ebx,%ecx
c0037f6c:	83 e1 03             	and    $0x3,%ecx
c0037f6f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
c0037f71:	8b 45 08             	mov    0x8(%ebp),%eax
c0037f74:	fc                   	cld    
c0037f75:	8d 65 f4             	lea    -0xc(%ebp),%esp
c0037f78:	5b                   	pop    %ebx
c0037f79:	5f                   	pop    %edi
c0037f7a:	5e                   	pop    %esi
c0037f7b:	c9                   	leave  
c0037f7c:	c3                   	ret    
c0037f7d:	66 90                	xchg   %ax,%ax
c0037f7f:	90                   	nop

c0037f80 <_realloc_r>:
c0037f80:	55                   	push   %ebp
c0037f81:	89 e5                	mov    %esp,%ebp
c0037f83:	57                   	push   %edi
c0037f84:	56                   	push   %esi
c0037f85:	53                   	push   %ebx
c0037f86:	83 ec 3c             	sub    $0x3c,%esp
c0037f89:	8b 45 08             	mov    0x8(%ebp),%eax
c0037f8c:	8b 7d 0c             	mov    0xc(%ebp),%edi
c0037f8f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
c0037f92:	8b 45 10             	mov    0x10(%ebp),%eax
c0037f95:	85 ff                	test   %edi,%edi
c0037f97:	89 45 e0             	mov    %eax,-0x20(%ebp)
c0037f9a:	0f 84 50 02 00 00    	je     c00381f0 <_realloc_r+0x270>
c0037fa0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0037fa3:	8d 77 f8             	lea    -0x8(%edi),%esi
c0037fa6:	89 04 24             	mov    %eax,(%esp)
c0037fa9:	e8 82 db ff ff       	call   c0035b30 <__malloc_lock>
c0037fae:	8b 47 fc             	mov    -0x4(%edi),%eax
c0037fb1:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037fb4:	89 c3                	mov    %eax,%ebx
c0037fb6:	8d 51 0b             	lea    0xb(%ecx),%edx
c0037fb9:	83 e3 fc             	and    $0xfffffffc,%ebx
c0037fbc:	83 fa 16             	cmp    $0x16,%edx
c0037fbf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c0037fc2:	0f 87 00 01 00 00    	ja     c00380c8 <_realloc_r+0x148>
c0037fc8:	31 d2                	xor    %edx,%edx
c0037fca:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%ebp)
c0037fd1:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%ebp)
c0037fd8:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0037fdb:	39 4d dc             	cmp    %ecx,-0x24(%ebp)
c0037fde:	0f 82 1c 02 00 00    	jb     c0038200 <_realloc_r+0x280>
c0037fe4:	84 d2                	test   %dl,%dl
c0037fe6:	0f 85 14 02 00 00    	jne    c0038200 <_realloc_r+0x280>
c0037fec:	3b 5d d8             	cmp    -0x28(%ebp),%ebx
c0037fef:	0f 8d eb 00 00 00    	jge    c00380e0 <_realloc_r+0x160>
c0037ff5:	8b 0d 48 c5 03 c0    	mov    0xc003c548,%ecx
c0037ffb:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
c0037ffe:	39 d1                	cmp    %edx,%ecx
c0038000:	89 4d cc             	mov    %ecx,-0x34(%ebp)
c0038003:	0f 84 6f 02 00 00    	je     c0038278 <_realloc_r+0x2f8>
c0038009:	8b 4a 04             	mov    0x4(%edx),%ecx
c003800c:	89 c8                	mov    %ecx,%eax
c003800e:	83 e0 fe             	and    $0xfffffffe,%eax
c0038011:	f6 44 02 04 01       	testb  $0x1,0x4(%edx,%eax,1)
c0038016:	0f 84 f4 00 00 00    	je     c0038110 <_realloc_r+0x190>
c003801c:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
c0038023:	31 d2                	xor    %edx,%edx
c0038025:	f6 45 d4 01          	testb  $0x1,-0x2c(%ebp)
c0038029:	0f 85 39 01 00 00    	jne    c0038168 <_realloc_r+0x1e8>
c003802f:	89 f1                	mov    %esi,%ecx
c0038031:	2b 4f f8             	sub    -0x8(%edi),%ecx
c0038034:	8b 41 04             	mov    0x4(%ecx),%eax
c0038037:	83 e0 fc             	and    $0xfffffffc,%eax
c003803a:	85 d2                	test   %edx,%edx
c003803c:	0f 84 f6 02 00 00    	je     c0038338 <_realloc_r+0x3b8>
c0038042:	3b 55 cc             	cmp    -0x34(%ebp),%edx
c0038045:	0f 84 f5 02 00 00    	je     c0038340 <_realloc_r+0x3c0>
c003804b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
c003804e:	8b 55 d0             	mov    -0x30(%ebp),%edx
c0038051:	01 d8                	add    %ebx,%eax
c0038053:	01 c2                	add    %eax,%edx
c0038055:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038058:	89 55 d0             	mov    %edx,-0x30(%ebp)
c003805b:	8b 55 d4             	mov    -0x2c(%ebp),%edx
c003805e:	0f 8c ac 01 00 00    	jl     c0038210 <_realloc_r+0x290>
c0038064:	8b 42 0c             	mov    0xc(%edx),%eax
c0038067:	83 eb 04             	sub    $0x4,%ebx
c003806a:	8b 52 08             	mov    0x8(%edx),%edx
c003806d:	83 fb 24             	cmp    $0x24,%ebx
c0038070:	8d 71 08             	lea    0x8(%ecx),%esi
c0038073:	89 42 0c             	mov    %eax,0xc(%edx)
c0038076:	89 50 08             	mov    %edx,0x8(%eax)
c0038079:	8b 41 0c             	mov    0xc(%ecx),%eax
c003807c:	8b 51 08             	mov    0x8(%ecx),%edx
c003807f:	89 42 0c             	mov    %eax,0xc(%edx)
c0038082:	89 50 08             	mov    %edx,0x8(%eax)
c0038085:	0f 87 85 03 00 00    	ja     c0038410 <_realloc_r+0x490>
c003808b:	83 fb 13             	cmp    $0x13,%ebx
c003808e:	89 f0                	mov    %esi,%eax
c0038090:	76 1a                	jbe    c00380ac <_realloc_r+0x12c>
c0038092:	8b 07                	mov    (%edi),%eax
c0038094:	83 fb 1b             	cmp    $0x1b,%ebx
c0038097:	89 41 08             	mov    %eax,0x8(%ecx)
c003809a:	8b 47 04             	mov    0x4(%edi),%eax
c003809d:	89 41 0c             	mov    %eax,0xc(%ecx)
c00380a0:	0f 87 8f 03 00 00    	ja     c0038435 <_realloc_r+0x4b5>
c00380a6:	8d 41 10             	lea    0x10(%ecx),%eax
c00380a9:	83 c7 08             	add    $0x8,%edi
c00380ac:	8b 17                	mov    (%edi),%edx
c00380ae:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c00380b1:	89 10                	mov    %edx,(%eax)
c00380b3:	8b 57 04             	mov    0x4(%edi),%edx
c00380b6:	89 50 04             	mov    %edx,0x4(%eax)
c00380b9:	8b 57 08             	mov    0x8(%edi),%edx
c00380bc:	89 f7                	mov    %esi,%edi
c00380be:	89 ce                	mov    %ecx,%esi
c00380c0:	89 50 08             	mov    %edx,0x8(%eax)
c00380c3:	8b 41 04             	mov    0x4(%ecx),%eax
c00380c6:	eb 1b                	jmp    c00380e3 <_realloc_r+0x163>
c00380c8:	83 e2 f8             	and    $0xfffffff8,%edx
c00380cb:	89 55 dc             	mov    %edx,-0x24(%ebp)
c00380ce:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00380d1:	c1 ea 1f             	shr    $0x1f,%edx
c00380d4:	e9 ff fe ff ff       	jmp    c0037fd8 <_realloc_r+0x58>
c00380d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c00380e0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c00380e3:	89 da                	mov    %ebx,%edx
c00380e5:	2b 55 dc             	sub    -0x24(%ebp),%edx
c00380e8:	83 fa 0f             	cmp    $0xf,%edx
c00380eb:	77 4b                	ja     c0038138 <_realloc_r+0x1b8>
c00380ed:	83 e0 01             	and    $0x1,%eax
c00380f0:	09 d8                	or     %ebx,%eax
c00380f2:	89 46 04             	mov    %eax,0x4(%esi)
c00380f5:	83 4c 1e 04 01       	orl    $0x1,0x4(%esi,%ebx,1)
c00380fa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00380fd:	89 04 24             	mov    %eax,(%esp)
c0038100:	e8 3b da ff ff       	call   c0035b40 <__malloc_unlock>
c0038105:	89 f8                	mov    %edi,%eax
c0038107:	83 c4 3c             	add    $0x3c,%esp
c003810a:	5b                   	pop    %ebx
c003810b:	5e                   	pop    %esi
c003810c:	5f                   	pop    %edi
c003810d:	5d                   	pop    %ebp
c003810e:	c3                   	ret    
c003810f:	90                   	nop
c0038110:	83 e1 fc             	and    $0xfffffffc,%ecx
c0038113:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038116:	01 d9                	add    %ebx,%ecx
c0038118:	3b 4d d8             	cmp    -0x28(%ebp),%ecx
c003811b:	0f 8c 04 ff ff ff    	jl     c0038025 <_realloc_r+0xa5>
c0038121:	8b 5a 0c             	mov    0xc(%edx),%ebx
c0038124:	8b 52 08             	mov    0x8(%edx),%edx
c0038127:	8b 45 d4             	mov    -0x2c(%ebp),%eax
c003812a:	89 5a 0c             	mov    %ebx,0xc(%edx)
c003812d:	89 53 08             	mov    %edx,0x8(%ebx)
c0038130:	89 cb                	mov    %ecx,%ebx
c0038132:	eb af                	jmp    c00380e3 <_realloc_r+0x163>
c0038134:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038138:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c003813b:	83 e0 01             	and    $0x1,%eax
c003813e:	09 d8                	or     %ebx,%eax
c0038140:	89 46 04             	mov    %eax,0x4(%esi)
c0038143:	89 d0                	mov    %edx,%eax
c0038145:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
c0038148:	83 c8 01             	or     $0x1,%eax
c003814b:	89 41 04             	mov    %eax,0x4(%ecx)
c003814e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038151:	83 4c 11 04 01       	orl    $0x1,0x4(%ecx,%edx,1)
c0038156:	83 c1 08             	add    $0x8,%ecx
c0038159:	89 4c 24 04          	mov    %ecx,0x4(%esp)
c003815d:	89 04 24             	mov    %eax,(%esp)
c0038160:	e8 2b fb ff ff       	call   c0037c90 <_free_r>
c0038165:	eb 93                	jmp    c00380fa <_realloc_r+0x17a>
c0038167:	90                   	nop
c0038168:	8b 45 e0             	mov    -0x20(%ebp),%eax
c003816b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003816f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038172:	89 04 24             	mov    %eax,(%esp)
c0038175:	e8 d6 d1 ff ff       	call   c0035350 <_malloc_r>
c003817a:	85 c0                	test   %eax,%eax
c003817c:	89 c1                	mov    %eax,%ecx
c003817e:	0f 84 65 03 00 00    	je     c00384e9 <_realloc_r+0x569>
c0038184:	8b 47 fc             	mov    -0x4(%edi),%eax
c0038187:	8d 51 f8             	lea    -0x8(%ecx),%edx
c003818a:	89 55 e0             	mov    %edx,-0x20(%ebp)
c003818d:	89 c2                	mov    %eax,%edx
c003818f:	83 e2 fe             	and    $0xfffffffe,%edx
c0038192:	01 f2                	add    %esi,%edx
c0038194:	39 55 e0             	cmp    %edx,-0x20(%ebp)
c0038197:	0f 84 63 02 00 00    	je     c0038400 <_realloc_r+0x480>
c003819d:	83 eb 04             	sub    $0x4,%ebx
c00381a0:	83 fb 24             	cmp    $0x24,%ebx
c00381a3:	0f 87 6f 01 00 00    	ja     c0038318 <_realloc_r+0x398>
c00381a9:	83 fb 13             	cmp    $0x13,%ebx
c00381ac:	0f 87 ee 00 00 00    	ja     c00382a0 <_realloc_r+0x320>
c00381b2:	89 c8                	mov    %ecx,%eax
c00381b4:	89 fa                	mov    %edi,%edx
c00381b6:	8b 1a                	mov    (%edx),%ebx
c00381b8:	89 18                	mov    %ebx,(%eax)
c00381ba:	8b 5a 04             	mov    0x4(%edx),%ebx
c00381bd:	89 58 04             	mov    %ebx,0x4(%eax)
c00381c0:	8b 52 08             	mov    0x8(%edx),%edx
c00381c3:	89 50 08             	mov    %edx,0x8(%eax)
c00381c6:	8b 75 e4             	mov    -0x1c(%ebp),%esi
c00381c9:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00381cd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00381d0:	89 34 24             	mov    %esi,(%esp)
c00381d3:	e8 b8 fa ff ff       	call   c0037c90 <_free_r>
c00381d8:	89 34 24             	mov    %esi,(%esp)
c00381db:	e8 60 d9 ff ff       	call   c0035b40 <__malloc_unlock>
c00381e0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00381e3:	83 c4 3c             	add    $0x3c,%esp
c00381e6:	5b                   	pop    %ebx
c00381e7:	5e                   	pop    %esi
c00381e8:	5f                   	pop    %edi
c00381e9:	89 c8                	mov    %ecx,%eax
c00381eb:	5d                   	pop    %ebp
c00381ec:	c3                   	ret    
c00381ed:	8d 76 00             	lea    0x0(%esi),%esi
c00381f0:	89 45 0c             	mov    %eax,0xc(%ebp)
c00381f3:	83 c4 3c             	add    $0x3c,%esp
c00381f6:	5b                   	pop    %ebx
c00381f7:	5e                   	pop    %esi
c00381f8:	5f                   	pop    %edi
c00381f9:	5d                   	pop    %ebp
c00381fa:	e9 51 d1 ff ff       	jmp    c0035350 <_malloc_r>
c00381ff:	90                   	nop
c0038200:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038203:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
c0038209:	31 c0                	xor    %eax,%eax
c003820b:	e9 f7 fe ff ff       	jmp    c0038107 <_realloc_r+0x187>
c0038210:	89 c2                	mov    %eax,%edx
c0038212:	3b 55 d8             	cmp    -0x28(%ebp),%edx
c0038215:	0f 8c 4d ff ff ff    	jl     c0038168 <_realloc_r+0x1e8>
c003821b:	8b 71 08             	mov    0x8(%ecx),%esi
c003821e:	83 eb 04             	sub    $0x4,%ebx
c0038221:	8b 41 0c             	mov    0xc(%ecx),%eax
c0038224:	83 fb 24             	cmp    $0x24,%ebx
c0038227:	89 46 0c             	mov    %eax,0xc(%esi)
c003822a:	89 70 08             	mov    %esi,0x8(%eax)
c003822d:	8d 71 08             	lea    0x8(%ecx),%esi
c0038230:	0f 87 88 00 00 00    	ja     c00382be <_realloc_r+0x33e>
c0038236:	83 fb 13             	cmp    $0x13,%ebx
c0038239:	89 f0                	mov    %esi,%eax
c003823b:	76 1a                	jbe    c0038257 <_realloc_r+0x2d7>
c003823d:	8b 07                	mov    (%edi),%eax
c003823f:	83 fb 1b             	cmp    $0x1b,%ebx
c0038242:	89 41 08             	mov    %eax,0x8(%ecx)
c0038245:	8b 47 04             	mov    0x4(%edi),%eax
c0038248:	89 41 0c             	mov    %eax,0xc(%ecx)
c003824b:	0f 87 17 02 00 00    	ja     c0038468 <_realloc_r+0x4e8>
c0038251:	8d 41 10             	lea    0x10(%ecx),%eax
c0038254:	83 c7 08             	add    $0x8,%edi
c0038257:	8b 1f                	mov    (%edi),%ebx
c0038259:	89 18                	mov    %ebx,(%eax)
c003825b:	8b 5f 04             	mov    0x4(%edi),%ebx
c003825e:	89 58 04             	mov    %ebx,0x4(%eax)
c0038261:	8b 5f 08             	mov    0x8(%edi),%ebx
c0038264:	89 f7                	mov    %esi,%edi
c0038266:	89 ce                	mov    %ecx,%esi
c0038268:	89 58 08             	mov    %ebx,0x8(%eax)
c003826b:	89 d3                	mov    %edx,%ebx
c003826d:	8b 41 04             	mov    0x4(%ecx),%eax
c0038270:	e9 6e fe ff ff       	jmp    c00380e3 <_realloc_r+0x163>
c0038275:	8d 76 00             	lea    0x0(%esi),%esi
c0038278:	8b 45 cc             	mov    -0x34(%ebp),%eax
c003827b:	8b 55 dc             	mov    -0x24(%ebp),%edx
c003827e:	8b 48 04             	mov    0x4(%eax),%ecx
c0038281:	83 c2 10             	add    $0x10,%edx
c0038284:	89 4d d0             	mov    %ecx,-0x30(%ebp)
c0038287:	83 65 d0 fc          	andl   $0xfffffffc,-0x30(%ebp)
c003828b:	8b 4d d0             	mov    -0x30(%ebp),%ecx
c003828e:	01 d9                	add    %ebx,%ecx
c0038290:	39 d1                	cmp    %edx,%ecx
c0038292:	7d 54                	jge    c00382e8 <_realloc_r+0x368>
c0038294:	89 c2                	mov    %eax,%edx
c0038296:	e9 8a fd ff ff       	jmp    c0038025 <_realloc_r+0xa5>
c003829b:	90                   	nop
c003829c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c00382a0:	8b 07                	mov    (%edi),%eax
c00382a2:	83 fb 1b             	cmp    $0x1b,%ebx
c00382a5:	89 01                	mov    %eax,(%ecx)
c00382a7:	8b 47 04             	mov    0x4(%edi),%eax
c00382aa:	89 41 04             	mov    %eax,0x4(%ecx)
c00382ad:	0f 87 2d 01 00 00    	ja     c00383e0 <_realloc_r+0x460>
c00382b3:	8d 41 08             	lea    0x8(%ecx),%eax
c00382b6:	8d 57 08             	lea    0x8(%edi),%edx
c00382b9:	e9 f8 fe ff ff       	jmp    c00381b6 <_realloc_r+0x236>
c00382be:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00382c2:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00382c6:	89 f7                	mov    %esi,%edi
c00382c8:	89 34 24             	mov    %esi,(%esp)
c00382cb:	89 55 d8             	mov    %edx,-0x28(%ebp)
c00382ce:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00382d1:	e8 1a fc ff ff       	call   c0037ef0 <memmove>
c00382d6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00382d9:	8b 55 d8             	mov    -0x28(%ebp),%edx
c00382dc:	8b 41 04             	mov    0x4(%ecx),%eax
c00382df:	89 ce                	mov    %ecx,%esi
c00382e1:	89 d3                	mov    %edx,%ebx
c00382e3:	e9 fb fd ff ff       	jmp    c00380e3 <_realloc_r+0x163>
c00382e8:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00382eb:	29 d9                	sub    %ebx,%ecx
c00382ed:	01 de                	add    %ebx,%esi
c00382ef:	83 c9 01             	or     $0x1,%ecx
c00382f2:	89 35 48 c5 03 c0    	mov    %esi,0xc003c548
c00382f8:	89 4e 04             	mov    %ecx,0x4(%esi)
c00382fb:	8b 47 fc             	mov    -0x4(%edi),%eax
c00382fe:	83 e0 01             	and    $0x1,%eax
c0038301:	09 d8                	or     %ebx,%eax
c0038303:	89 47 fc             	mov    %eax,-0x4(%edi)
c0038306:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c0038309:	89 04 24             	mov    %eax,(%esp)
c003830c:	e8 2f d8 ff ff       	call   c0035b40 <__malloc_unlock>
c0038311:	89 f8                	mov    %edi,%eax
c0038313:	e9 ef fd ff ff       	jmp    c0038107 <_realloc_r+0x187>
c0038318:	89 0c 24             	mov    %ecx,(%esp)
c003831b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c003831f:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038323:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038326:	e8 c5 fb ff ff       	call   c0037ef0 <memmove>
c003832b:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c003832e:	e9 93 fe ff ff       	jmp    c00381c6 <_realloc_r+0x246>
c0038333:	90                   	nop
c0038334:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038338:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c003833b:	e9 d2 fe ff ff       	jmp    c0038212 <_realloc_r+0x292>
c0038340:	8d 14 18             	lea    (%eax,%ebx,1),%edx
c0038343:	8b 45 d0             	mov    -0x30(%ebp),%eax
c0038346:	01 d0                	add    %edx,%eax
c0038348:	89 45 d4             	mov    %eax,-0x2c(%ebp)
c003834b:	8b 45 dc             	mov    -0x24(%ebp),%eax
c003834e:	83 c0 10             	add    $0x10,%eax
c0038351:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
c0038354:	0f 8c b8 fe ff ff    	jl     c0038212 <_realloc_r+0x292>
c003835a:	8b 41 0c             	mov    0xc(%ecx),%eax
c003835d:	83 eb 04             	sub    $0x4,%ebx
c0038360:	8b 51 08             	mov    0x8(%ecx),%edx
c0038363:	83 fb 24             	cmp    $0x24,%ebx
c0038366:	8d 71 08             	lea    0x8(%ecx),%esi
c0038369:	89 42 0c             	mov    %eax,0xc(%edx)
c003836c:	89 50 08             	mov    %edx,0x8(%eax)
c003836f:	0f 87 3d 01 00 00    	ja     c00384b2 <_realloc_r+0x532>
c0038375:	83 fb 13             	cmp    $0x13,%ebx
c0038378:	89 f0                	mov    %esi,%eax
c003837a:	76 1a                	jbe    c0038396 <_realloc_r+0x416>
c003837c:	8b 07                	mov    (%edi),%eax
c003837e:	83 fb 1b             	cmp    $0x1b,%ebx
c0038381:	89 41 08             	mov    %eax,0x8(%ecx)
c0038384:	8b 47 04             	mov    0x4(%edi),%eax
c0038387:	89 41 0c             	mov    %eax,0xc(%ecx)
c003838a:	0f 87 3d 01 00 00    	ja     c00384cd <_realloc_r+0x54d>
c0038390:	8d 41 10             	lea    0x10(%ecx),%eax
c0038393:	83 c7 08             	add    $0x8,%edi
c0038396:	8b 17                	mov    (%edi),%edx
c0038398:	89 10                	mov    %edx,(%eax)
c003839a:	8b 57 04             	mov    0x4(%edi),%edx
c003839d:	89 50 04             	mov    %edx,0x4(%eax)
c00383a0:	8b 57 08             	mov    0x8(%edi),%edx
c00383a3:	89 50 08             	mov    %edx,0x8(%eax)
c00383a6:	8b 5d dc             	mov    -0x24(%ebp),%ebx
c00383a9:	8b 7d d4             	mov    -0x2c(%ebp),%edi
c00383ac:	89 d8                	mov    %ebx,%eax
c00383ae:	29 df                	sub    %ebx,%edi
c00383b0:	01 c8                	add    %ecx,%eax
c00383b2:	83 cf 01             	or     $0x1,%edi
c00383b5:	a3 48 c5 03 c0       	mov    %eax,0xc003c548
c00383ba:	89 78 04             	mov    %edi,0x4(%eax)
c00383bd:	8b 41 04             	mov    0x4(%ecx),%eax
c00383c0:	83 e0 01             	and    $0x1,%eax
c00383c3:	09 d8                	or     %ebx,%eax
c00383c5:	89 41 04             	mov    %eax,0x4(%ecx)
c00383c8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00383cb:	89 04 24             	mov    %eax,(%esp)
c00383ce:	e8 6d d7 ff ff       	call   c0035b40 <__malloc_unlock>
c00383d3:	89 f0                	mov    %esi,%eax
c00383d5:	e9 2d fd ff ff       	jmp    c0038107 <_realloc_r+0x187>
c00383da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
c00383e0:	8b 47 08             	mov    0x8(%edi),%eax
c00383e3:	83 fb 24             	cmp    $0x24,%ebx
c00383e6:	89 41 08             	mov    %eax,0x8(%ecx)
c00383e9:	8b 47 0c             	mov    0xc(%edi),%eax
c00383ec:	89 41 0c             	mov    %eax,0xc(%ecx)
c00383ef:	74 60                	je     c0038451 <_realloc_r+0x4d1>
c00383f1:	8d 41 10             	lea    0x10(%ecx),%eax
c00383f4:	8d 57 10             	lea    0x10(%edi),%edx
c00383f7:	e9 ba fd ff ff       	jmp    c00381b6 <_realloc_r+0x236>
c00383fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038400:	8b 51 fc             	mov    -0x4(%ecx),%edx
c0038403:	83 e2 fc             	and    $0xfffffffc,%edx
c0038406:	01 d3                	add    %edx,%ebx
c0038408:	e9 d6 fc ff ff       	jmp    c00380e3 <_realloc_r+0x163>
c003840d:	8d 76 00             	lea    0x0(%esi),%esi
c0038410:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c0038414:	89 7c 24 04          	mov    %edi,0x4(%esp)
c0038418:	89 f7                	mov    %esi,%edi
c003841a:	89 34 24             	mov    %esi,(%esp)
c003841d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c0038420:	e8 cb fa ff ff       	call   c0037ef0 <memmove>
c0038425:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c0038428:	8b 5d d0             	mov    -0x30(%ebp),%ebx
c003842b:	8b 41 04             	mov    0x4(%ecx),%eax
c003842e:	89 ce                	mov    %ecx,%esi
c0038430:	e9 ae fc ff ff       	jmp    c00380e3 <_realloc_r+0x163>
c0038435:	8b 47 08             	mov    0x8(%edi),%eax
c0038438:	83 fb 24             	cmp    $0x24,%ebx
c003843b:	89 41 10             	mov    %eax,0x10(%ecx)
c003843e:	8b 47 0c             	mov    0xc(%edi),%eax
c0038441:	89 41 14             	mov    %eax,0x14(%ecx)
c0038444:	74 3e                	je     c0038484 <_realloc_r+0x504>
c0038446:	8d 41 18             	lea    0x18(%ecx),%eax
c0038449:	83 c7 10             	add    $0x10,%edi
c003844c:	e9 5b fc ff ff       	jmp    c00380ac <_realloc_r+0x12c>
c0038451:	8b 47 10             	mov    0x10(%edi),%eax
c0038454:	8d 57 18             	lea    0x18(%edi),%edx
c0038457:	89 41 10             	mov    %eax,0x10(%ecx)
c003845a:	8b 5f 14             	mov    0x14(%edi),%ebx
c003845d:	8d 41 18             	lea    0x18(%ecx),%eax
c0038460:	89 59 14             	mov    %ebx,0x14(%ecx)
c0038463:	e9 4e fd ff ff       	jmp    c00381b6 <_realloc_r+0x236>
c0038468:	8b 47 08             	mov    0x8(%edi),%eax
c003846b:	83 fb 24             	cmp    $0x24,%ebx
c003846e:	89 41 10             	mov    %eax,0x10(%ecx)
c0038471:	8b 47 0c             	mov    0xc(%edi),%eax
c0038474:	89 41 14             	mov    %eax,0x14(%ecx)
c0038477:	74 22                	je     c003849b <_realloc_r+0x51b>
c0038479:	8d 41 18             	lea    0x18(%ecx),%eax
c003847c:	83 c7 10             	add    $0x10,%edi
c003847f:	e9 d3 fd ff ff       	jmp    c0038257 <_realloc_r+0x2d7>
c0038484:	8b 47 10             	mov    0x10(%edi),%eax
c0038487:	83 c7 18             	add    $0x18,%edi
c003848a:	89 41 18             	mov    %eax,0x18(%ecx)
c003848d:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038490:	8d 41 20             	lea    0x20(%ecx),%eax
c0038493:	89 51 1c             	mov    %edx,0x1c(%ecx)
c0038496:	e9 11 fc ff ff       	jmp    c00380ac <_realloc_r+0x12c>
c003849b:	8b 47 10             	mov    0x10(%edi),%eax
c003849e:	83 c7 18             	add    $0x18,%edi
c00384a1:	89 41 18             	mov    %eax,0x18(%ecx)
c00384a4:	8b 5f fc             	mov    -0x4(%edi),%ebx
c00384a7:	8d 41 20             	lea    0x20(%ecx),%eax
c00384aa:	89 59 1c             	mov    %ebx,0x1c(%ecx)
c00384ad:	e9 a5 fd ff ff       	jmp    c0038257 <_realloc_r+0x2d7>
c00384b2:	89 5c 24 08          	mov    %ebx,0x8(%esp)
c00384b6:	89 7c 24 04          	mov    %edi,0x4(%esp)
c00384ba:	89 34 24             	mov    %esi,(%esp)
c00384bd:	89 4d e0             	mov    %ecx,-0x20(%ebp)
c00384c0:	e8 2b fa ff ff       	call   c0037ef0 <memmove>
c00384c5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
c00384c8:	e9 d9 fe ff ff       	jmp    c00383a6 <_realloc_r+0x426>
c00384cd:	8b 47 08             	mov    0x8(%edi),%eax
c00384d0:	83 fb 24             	cmp    $0x24,%ebx
c00384d3:	89 41 10             	mov    %eax,0x10(%ecx)
c00384d6:	8b 47 0c             	mov    0xc(%edi),%eax
c00384d9:	89 41 14             	mov    %eax,0x14(%ecx)
c00384dc:	74 1d                	je     c00384fb <_realloc_r+0x57b>
c00384de:	8d 41 18             	lea    0x18(%ecx),%eax
c00384e1:	83 c7 10             	add    $0x10,%edi
c00384e4:	e9 ad fe ff ff       	jmp    c0038396 <_realloc_r+0x416>
c00384e9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
c00384ec:	89 04 24             	mov    %eax,(%esp)
c00384ef:	e8 4c d6 ff ff       	call   c0035b40 <__malloc_unlock>
c00384f4:	31 c0                	xor    %eax,%eax
c00384f6:	e9 0c fc ff ff       	jmp    c0038107 <_realloc_r+0x187>
c00384fb:	8b 47 10             	mov    0x10(%edi),%eax
c00384fe:	83 c7 18             	add    $0x18,%edi
c0038501:	89 41 18             	mov    %eax,0x18(%ecx)
c0038504:	8b 57 fc             	mov    -0x4(%edi),%edx
c0038507:	8d 41 20             	lea    0x20(%ecx),%eax
c003850a:	89 51 1c             	mov    %edx,0x1c(%ecx)
c003850d:	e9 84 fe ff ff       	jmp    c0038396 <_realloc_r+0x416>
c0038512:	66 90                	xchg   %ax,%ax
c0038514:	66 90                	xchg   %ax,%ax
c0038516:	66 90                	xchg   %ax,%ax
c0038518:	66 90                	xchg   %ax,%ax
c003851a:	66 90                	xchg   %ax,%ax
c003851c:	66 90                	xchg   %ax,%ax
c003851e:	66 90                	xchg   %ax,%ax

c0038520 <cleanup_glue>:
c0038520:	55                   	push   %ebp
c0038521:	89 e5                	mov    %esp,%ebp
c0038523:	56                   	push   %esi
c0038524:	53                   	push   %ebx
c0038525:	83 ec 10             	sub    $0x10,%esp
c0038528:	8b 5d 0c             	mov    0xc(%ebp),%ebx
c003852b:	8b 75 08             	mov    0x8(%ebp),%esi
c003852e:	8b 03                	mov    (%ebx),%eax
c0038530:	85 c0                	test   %eax,%eax
c0038532:	74 0c                	je     c0038540 <cleanup_glue+0x20>
c0038534:	89 44 24 04          	mov    %eax,0x4(%esp)
c0038538:	89 34 24             	mov    %esi,(%esp)
c003853b:	e8 e0 ff ff ff       	call   c0038520 <cleanup_glue>
c0038540:	89 5d 0c             	mov    %ebx,0xc(%ebp)
c0038543:	89 75 08             	mov    %esi,0x8(%ebp)
c0038546:	83 c4 10             	add    $0x10,%esp
c0038549:	5b                   	pop    %ebx
c003854a:	5e                   	pop    %esi
c003854b:	5d                   	pop    %ebp
c003854c:	e9 3f f7 ff ff       	jmp    c0037c90 <_free_r>
c0038551:	eb 0d                	jmp    c0038560 <_reclaim_reent>
c0038553:	90                   	nop
c0038554:	90                   	nop
c0038555:	90                   	nop
c0038556:	90                   	nop
c0038557:	90                   	nop
c0038558:	90                   	nop
c0038559:	90                   	nop
c003855a:	90                   	nop
c003855b:	90                   	nop
c003855c:	90                   	nop
c003855d:	90                   	nop
c003855e:	90                   	nop
c003855f:	90                   	nop

c0038560 <_reclaim_reent>:
c0038560:	55                   	push   %ebp
c0038561:	89 e5                	mov    %esp,%ebp
c0038563:	57                   	push   %edi
c0038564:	56                   	push   %esi
c0038565:	53                   	push   %ebx
c0038566:	83 ec 1c             	sub    $0x1c,%esp
c0038569:	8b 5d 08             	mov    0x8(%ebp),%ebx
c003856c:	3b 1d 40 c0 03 c0    	cmp    0xc003c040,%ebx
c0038572:	0f 84 a6 00 00 00    	je     c003861e <_reclaim_reent+0xbe>
c0038578:	8b 53 4c             	mov    0x4c(%ebx),%edx
c003857b:	85 d2                	test   %edx,%edx
c003857d:	74 46                	je     c00385c5 <_reclaim_reent+0x65>
c003857f:	31 c0                	xor    %eax,%eax
c0038581:	31 f6                	xor    %esi,%esi
c0038583:	90                   	nop
c0038584:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
c0038588:	8b 04 82             	mov    (%edx,%eax,4),%eax
c003858b:	85 c0                	test   %eax,%eax
c003858d:	75 0b                	jne    c003859a <_reclaim_reent+0x3a>
c003858f:	eb 1e                	jmp    c00385af <_reclaim_reent+0x4f>
c0038591:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
c0038598:	89 f8                	mov    %edi,%eax
c003859a:	8b 38                	mov    (%eax),%edi
c003859c:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385a0:	89 1c 24             	mov    %ebx,(%esp)
c00385a3:	e8 e8 f6 ff ff       	call   c0037c90 <_free_r>
c00385a8:	85 ff                	test   %edi,%edi
c00385aa:	75 ec                	jne    c0038598 <_reclaim_reent+0x38>
c00385ac:	8b 53 4c             	mov    0x4c(%ebx),%edx
c00385af:	83 c6 01             	add    $0x1,%esi
c00385b2:	83 fe 20             	cmp    $0x20,%esi
c00385b5:	89 f0                	mov    %esi,%eax
c00385b7:	75 cf                	jne    c0038588 <_reclaim_reent+0x28>
c00385b9:	89 54 24 04          	mov    %edx,0x4(%esp)
c00385bd:	89 1c 24             	mov    %ebx,(%esp)
c00385c0:	e8 cb f6 ff ff       	call   c0037c90 <_free_r>
c00385c5:	8b 43 40             	mov    0x40(%ebx),%eax
c00385c8:	85 c0                	test   %eax,%eax
c00385ca:	74 0c                	je     c00385d8 <_reclaim_reent+0x78>
c00385cc:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385d0:	89 1c 24             	mov    %ebx,(%esp)
c00385d3:	e8 b8 f6 ff ff       	call   c0037c90 <_free_r>
c00385d8:	8b 83 48 01 00 00    	mov    0x148(%ebx),%eax
c00385de:	85 c0                	test   %eax,%eax
c00385e0:	74 22                	je     c0038604 <_reclaim_reent+0xa4>
c00385e2:	8d b3 4c 01 00 00    	lea    0x14c(%ebx),%esi
c00385e8:	39 f0                	cmp    %esi,%eax
c00385ea:	75 06                	jne    c00385f2 <_reclaim_reent+0x92>
c00385ec:	eb 16                	jmp    c0038604 <_reclaim_reent+0xa4>
c00385ee:	66 90                	xchg   %ax,%ax
c00385f0:	89 f8                	mov    %edi,%eax
c00385f2:	8b 38                	mov    (%eax),%edi
c00385f4:	89 44 24 04          	mov    %eax,0x4(%esp)
c00385f8:	89 1c 24             	mov    %ebx,(%esp)
c00385fb:	e8 90 f6 ff ff       	call   c0037c90 <_free_r>
c0038600:	39 fe                	cmp    %edi,%esi
c0038602:	75 ec                	jne    c00385f0 <_reclaim_reent+0x90>
c0038604:	8b 43 54             	mov    0x54(%ebx),%eax
c0038607:	85 c0                	test   %eax,%eax
c0038609:	74 0c                	je     c0038617 <_reclaim_reent+0xb7>
c003860b:	89 44 24 04          	mov    %eax,0x4(%esp)
c003860f:	89 1c 24             	mov    %ebx,(%esp)
c0038612:	e8 79 f6 ff ff       	call   c0037c90 <_free_r>
c0038617:	8b 43 38             	mov    0x38(%ebx),%eax
c003861a:	85 c0                	test   %eax,%eax
c003861c:	75 08                	jne    c0038626 <_reclaim_reent+0xc6>
c003861e:	83 c4 1c             	add    $0x1c,%esp
c0038621:	5b                   	pop    %ebx
c0038622:	5e                   	pop    %esi
c0038623:	5f                   	pop    %edi
c0038624:	5d                   	pop    %ebp
c0038625:	c3                   	ret    
c0038626:	89 1c 24             	mov    %ebx,(%esp)
c0038629:	ff 53 3c             	call   *0x3c(%ebx)
c003862c:	8b 83 e0 02 00 00    	mov    0x2e0(%ebx),%eax
c0038632:	85 c0                	test   %eax,%eax
c0038634:	74 e8                	je     c003861e <_reclaim_reent+0xbe>
c0038636:	89 1c 24             	mov    %ebx,(%esp)
c0038639:	89 44 24 04          	mov    %eax,0x4(%esp)
c003863d:	e8 de fe ff ff       	call   c0038520 <cleanup_glue>
c0038642:	83 c4 1c             	add    $0x1c,%esp
c0038645:	5b                   	pop    %ebx
c0038646:	5e                   	pop    %esi
c0038647:	5f                   	pop    %edi
c0038648:	5d                   	pop    %ebp
c0038649:	c3                   	ret    
