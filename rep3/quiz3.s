
quiz3-2018-linux.o:     ファイル形式 elf64-x86-64


セクション .text の逆アセンブル:

0000000000000000 <arith>:
   0:	8d 0c ff             	lea    (%rdi,%rdi,8),%ecx
   3:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx # %edx = 0x38e38e39
   8:	89 f0                	mov    %esi,%eax    # %eax = y
   a:	f7 ea                	imul   %edx     # %edx:%eax = %eax * %edx
   c:	d1 fa                	sar    %edx     # %edx >> 1
   e:	c1 fe 1f             	sar    $0x1f,%esi   # y > 0 ? y = 0x0 : y = 0xFFFF...F;
  11:	29 f2                	sub    %esi,%edx    # %edx = %edx - y
  13:	8d 04 ca             	lea    (%rdx,%rcx,8),%eax
  16:	c3                   	retq   
