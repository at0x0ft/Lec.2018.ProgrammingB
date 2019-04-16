
quiz1-2018-linux.o:     ファイル形式 elf64-x86-64


セクション .text の逆アセンブル:

0000000000000000 <arith>:
   0:	8d 14 7f             	lea    (%rdi,%rdi,2),%edx
   3:	8d 86 ff 03 00 00    	lea    0x3ff(%rsi),%eax
   9:	85 f6                	test   %esi,%esi
   b:	0f 48 f0             	cmovs  %eax,%esi
   e:	c1 fe 0a             	sar    $0xa,%esi
  11:	8d 04 d6             	lea    (%rsi,%rdx,8),%eax
  14:	c3                   	retq   
