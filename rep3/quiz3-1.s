
quiz3-1.o:     ファイル形式 elf64-x86-64


セクション .text の逆アセンブル:

0000000000000000 <arith>:
   0:	8d 0c ff             	lea    (%rdi,%rdi,8),%ecx
   3:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
   8:	89 f0                	mov    %esi,%eax
   a:	f7 ea                	imul   %edx
   c:	d1 fa                	sar    %edx
   e:	c1 fe 1f             	sar    $0x1f,%esi
  11:	29 f2                	sub    %esi,%edx
  13:	8d 04 ca             	lea    (%rdx,%rcx,8),%eax
  16:	c3                   	retq   
