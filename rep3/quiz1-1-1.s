
quiz1-1.o:     ファイル形式 elf64-x86-64


セクション .text の逆アセンブル:

0000000000000000 <arith>:
   0:	48 8d 14 7f          	lea    (%rdi,%rdi,2),%rdx
   4:	48 8d 86 ff 03 00 00 	lea    0x3ff(%rsi),%rax
   b:	48 85 f6             	test   %rsi,%rsi
   e:	48 0f 48 f0          	cmovs  %rax,%rsi
  12:	48 c1 fe 0a          	sar    $0xa,%rsi
  16:	48 8d 04 d6          	lea    (%rsi,%rdx,8),%rax
  1a:	c3                   	retq   
