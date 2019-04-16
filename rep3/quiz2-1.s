
quiz2-1.o:     ファイル形式 elf64-x86-64


セクション .text の逆アセンブル:

0000000000000000 <arith>:
   0:	89 f8                	mov    %edi,%eax
   2:	c1 e0 08             	shl    $0x8,%eax
   5:	29 f8                	sub    %edi,%eax
   7:	8d 56 1f             	lea    0x1f(%rsi),%edx
   a:	85 f6                	test   %esi,%esi
   c:	0f 48 f2             	cmovs  %edx,%esi
   f:	c1 fe 05             	sar    $0x5,%esi
  12:	29 f0                	sub    %esi,%eax
  14:	c3                   	retq   
