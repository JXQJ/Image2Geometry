; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.40629.0 

	TITLE	D:\git\Image2Geometry\3rdParty\zlib-1.2.11\contrib\testzlib\testzlib.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

_DATA	SEGMENT
$SG87121 DB	'rb', 00H
	ORG $+5
$SG87152 DB	'run TestZlib <File> [BlockSizeCompress] [BlockSizeUncomp'
	DB	'ress] [compres. level]', 0aH, 00H
$SG87154 DB	'error reading %s', 0aH, 00H
	ORG $+2
$SG87156 DB	'file %s read, %u bytes', 0aH, 00H
$SG87170 DB	'1.2.11', 00H
	ORG $+1
$SG87175 DB	'total compress size = %u, in %u step', 0aH, 00H
	ORG $+2
$SG87177 DB	'time = %u msec = %f sec', 0aH, 00H
	ORG $+3
$SG87179 DB	'defcpr time QP = %u msec = %f sec', 0aH, 00H
	ORG $+1
$SG87180 DB	'defcpr result rdtsc = %I64x', 0aH, 0aH, 00H
	ORG $+2
$SG87191 DB	'1.2.11', 00H
	ORG $+1
$SG87196 DB	'total uncompress size = %u, in %u step', 0aH, 00H
$SG87198 DB	'time = %u msec = %f sec', 0aH, 00H
	ORG $+3
$SG87200 DB	'uncpr  time QP = %u msec = %f sec', 0aH, 00H
	ORG $+1
$SG87201 DB	'uncpr  result rdtsc = %I64x', 0aH, 0aH, 00H
	ORG $+2
$SG87204 DB	'compare ok', 0aH, 00H
_DATA	ENDS
PUBLIC	_Int64ShrlMod32@12
PUBLIC	_MyDoMinus64
PUBLIC	_myGetRDTSC32
PUBLIC	_BeginCountRdtsc
PUBLIC	_GetResRdtsc
PUBLIC	_BeginCountPerfCounter
PUBLIC	_GetMsecSincePerfCounter
PUBLIC	_ReadFileMemory
PUBLIC	_main
PUBLIC	__real@408f400000000000
PUBLIC	__xmm@41f00000000000000000000000000000
EXTRN	__imp__fclose:PROC
EXTRN	__imp__fopen:PROC
EXTRN	__imp__fread:PROC
EXTRN	__imp__fseek:PROC
EXTRN	__imp__ftell:PROC
EXTRN	__imp__printf:PROC
EXTRN	__imp__atol:PROC
EXTRN	__imp__malloc:PROC
EXTRN	__imp__realloc:PROC
EXTRN	_memcmp:PROC
EXTRN	_memset:PROC
EXTRN	__imp__QueryPerformanceCounter@4:PROC
EXTRN	__imp__QueryPerformanceFrequency@4:PROC
EXTRN	__imp__GetTickCount@0:PROC
EXTRN	_deflate@8:PROC
EXTRN	_deflateEnd@4:PROC
EXTRN	_inflate@8:PROC
EXTRN	_inflateEnd@4:PROC
EXTRN	_deflateInit_@16:PROC
EXTRN	_inflateInit_@12:PROC
EXTRN	__fltused:DWORD
;	COMDAT __xmm@41f00000000000000000000000000000
CONST	SEGMENT
__xmm@41f00000000000000000000000000000 DB 00H, 00H, 00H, 00H, 00H, 00H, 00H
	DB	00H, 00H, 00H, 00H, 00H, 00H, 00H, 0f0H, 'A'
CONST	ENDS
;	COMDAT __real@408f400000000000
CONST	SEGMENT
__real@408f400000000000 DQ 0408f400000000000r	; 1000
CONST	ENDS
; Function compile flags: /Odtp
; File d:\git\image2geometry\3rdparty\zlib-1.2.11\contrib\testzlib\testzlib.c
_TEXT	SEGMENT
_zcpr$1 = -260						; size = 56
_zcpr$2 = -204						; size = 56
_lCompressedSize$ = -148				; size = 4
_lBufferSizeUncpr$ = -144				; size = 4
_li_qp$ = -140						; size = 8
tv352 = -132						; size = 4
_cprLevel$ = -128					; size = 4
tv150 = -124						; size = 4
_ret$3 = -120						; size = 4
_all_read_before$4 = -116				; size = 4
_all_read_before$5 = -112				; size = 4
_li_rdtsc$ = -108					; size = 8
tv232 = -100						; size = 4
_lOrigDone$6 = -96					; size = 4
_FilePtr$ = -92						; size = 4
tv359 = -88						; size = 4
_UncprPtr$ = -84					; size = 4
_lBufferSizeCpr$ = -80					; size = 4
_lSizeUncpr$ = -76					; size = 4
_lOrigDone$7 = -72					; size = 4
tv421 = -68						; size = 4
tv147 = -64						; size = 4
tv414 = -60						; size = 4
_ret$8 = -56						; size = 4
_step$9 = -52						; size = 4
_dwResRdtsc$ = -48					; size = 8
_step$10 = -40						; size = 4
_lSizeCpr$ = -36					; size = 4
_CprPtr$ = -32						; size = 4
_lOrigToDo$11 = -28					; size = 4
_lOrigToDo$12 = -24					; size = 4
_BlockSizeCompress$ = -20				; size = 4
_BlockSizeUncompress$ = -16				; size = 4
_dwMsecQP$ = -12					; size = 4
_lFileSize$ = -8					; size = 4
_dwGetTick$ = -4					; size = 4
_argc$ = 8						; size = 4
_argv$ = 12						; size = 4
_main	PROC

; 146  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 260				; 00000104H

; 147  :     int BlockSizeCompress=0x8000;

	mov	DWORD PTR _BlockSizeCompress$[ebp], 32768 ; 00008000H

; 148  :     int BlockSizeUncompress=0x8000;

	mov	DWORD PTR _BlockSizeUncompress$[ebp], 32768 ; 00008000H

; 149  :     int cprLevel=Z_DEFAULT_COMPRESSION ;

	mov	DWORD PTR _cprLevel$[ebp], -1

; 150  :     long lFileSize;
; 151  :     unsigned char* FilePtr;
; 152  :     long lBufferSizeCpr;
; 153  :     long lBufferSizeUncpr;
; 154  :     long lCompressedSize=0;

	mov	DWORD PTR _lCompressedSize$[ebp], 0

; 155  :     unsigned char* CprPtr;
; 156  :     unsigned char* UncprPtr;
; 157  :     long lSizeCpr,lSizeUncpr;
; 158  :     DWORD dwGetTick,dwMsecQP;
; 159  :     LARGE_INTEGER li_qp,li_rdtsc,dwResRdtsc;
; 160  : 
; 161  :     if (argc<=1)

	cmp	DWORD PTR _argc$[ebp], 1
	jg	SHORT $LN14@main

; 162  :     {
; 163  :         printf("run TestZlib <File> [BlockSizeCompress] [BlockSizeUncompress] [compres. level]\n");

	push	OFFSET $SG87152
	call	DWORD PTR __imp__printf
	add	esp, 4

; 164  :         return 0;

	xor	eax, eax
	jmp	$LN15@main
$LN14@main:

; 165  :     }
; 166  : 
; 167  :     if (ReadFileMemory(argv[1],&lFileSize,&FilePtr)==0)

	lea	eax, DWORD PTR _FilePtr$[ebp]
	push	eax
	lea	ecx, DWORD PTR _lFileSize$[ebp]
	push	ecx
	mov	edx, 4
	shl	edx, 0
	mov	eax, DWORD PTR _argv$[ebp]
	mov	ecx, DWORD PTR [eax+edx]
	push	ecx
	call	_ReadFileMemory
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN13@main

; 168  :     {
; 169  :         printf("error reading %s\n",argv[1]);

	mov	edx, 4
	shl	edx, 0
	mov	eax, DWORD PTR _argv$[ebp]
	mov	ecx, DWORD PTR [eax+edx]
	push	ecx
	push	OFFSET $SG87154
	call	DWORD PTR __imp__printf
	add	esp, 8

; 170  :         return 1;

	mov	eax, 1
	jmp	$LN15@main
	jmp	SHORT $LN12@main
$LN13@main:

; 171  :     }
; 172  :     else printf("file %s read, %u bytes\n",argv[1],lFileSize);

	mov	edx, DWORD PTR _lFileSize$[ebp]
	push	edx
	mov	eax, 4
	shl	eax, 0
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+eax]
	push	edx
	push	OFFSET $SG87156
	call	DWORD PTR __imp__printf
	add	esp, 12					; 0000000cH
$LN12@main:

; 173  : 
; 174  :     if (argc>=3)

	cmp	DWORD PTR _argc$[ebp], 3
	jl	SHORT $LN11@main

; 175  :         BlockSizeCompress=atol(argv[2]);

	mov	eax, 4
	shl	eax, 1
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+eax]
	push	edx
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	DWORD PTR _BlockSizeCompress$[ebp], eax
$LN11@main:

; 176  : 
; 177  :     if (argc>=4)

	cmp	DWORD PTR _argc$[ebp], 4
	jl	SHORT $LN10@main

; 178  :         BlockSizeUncompress=atol(argv[3]);

	mov	eax, 4
	imul	ecx, eax, 3
	mov	edx, DWORD PTR _argv$[ebp]
	mov	eax, DWORD PTR [edx+ecx]
	push	eax
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	DWORD PTR _BlockSizeUncompress$[ebp], eax
$LN10@main:

; 179  : 
; 180  :     if (argc>=5)

	cmp	DWORD PTR _argc$[ebp], 5
	jl	SHORT $LN9@main

; 181  :         cprLevel=(int)atol(argv[4]);

	mov	ecx, 4
	shl	ecx, 2
	mov	edx, DWORD PTR _argv$[ebp]
	mov	eax, DWORD PTR [edx+ecx]
	push	eax
	call	DWORD PTR __imp__atol
	add	esp, 4
	mov	DWORD PTR _cprLevel$[ebp], eax
$LN9@main:

; 182  : 
; 183  :     lBufferSizeCpr = lFileSize + (lFileSize/0x10) + 0x200;

	mov	eax, DWORD PTR _lFileSize$[ebp]
	cdq
	and	edx, 15					; 0000000fH
	add	eax, edx
	sar	eax, 4
	mov	ecx, DWORD PTR _lFileSize$[ebp]
	lea	edx, DWORD PTR [ecx+eax+512]
	mov	DWORD PTR _lBufferSizeCpr$[ebp], edx

; 184  :     lBufferSizeUncpr = lBufferSizeCpr;

	mov	eax, DWORD PTR _lBufferSizeCpr$[ebp]
	mov	DWORD PTR _lBufferSizeUncpr$[ebp], eax

; 185  : 
; 186  :     CprPtr=(unsigned char*)malloc(lBufferSizeCpr + BlockSizeCompress);

	mov	ecx, DWORD PTR _lBufferSizeCpr$[ebp]
	add	ecx, DWORD PTR _BlockSizeCompress$[ebp]
	push	ecx
	call	DWORD PTR __imp__malloc
	add	esp, 4
	mov	DWORD PTR _CprPtr$[ebp], eax

; 187  : 
; 188  :     BeginCountPerfCounter(&li_qp,TRUE);

	push	1
	lea	edx, DWORD PTR _li_qp$[ebp]
	push	edx
	call	_BeginCountPerfCounter
	add	esp, 8

; 189  :     dwGetTick=GetTickCount();

	call	DWORD PTR __imp__GetTickCount@0
	mov	DWORD PTR _dwGetTick$[ebp], eax

; 190  :     BeginCountRdtsc(&li_rdtsc);

	lea	eax, DWORD PTR _li_rdtsc$[ebp]
	push	eax
	call	_BeginCountRdtsc
	add	esp, 4

; 191  :     {
; 192  :         z_stream zcpr;
; 193  :         int ret=Z_OK;

	mov	DWORD PTR _ret$8[ebp], 0

; 194  :         long lOrigToDo = lFileSize;

	mov	ecx, DWORD PTR _lFileSize$[ebp]
	mov	DWORD PTR _lOrigToDo$12[ebp], ecx

; 195  :         long lOrigDone = 0;

	mov	DWORD PTR _lOrigDone$7[ebp], 0

; 196  :         int step=0;

	mov	DWORD PTR _step$9[ebp], 0

; 197  :         memset(&zcpr,0,sizeof(z_stream));

	push	56					; 00000038H
	push	0
	lea	edx, DWORD PTR _zcpr$2[ebp]
	push	edx
	call	_memset
	add	esp, 12					; 0000000cH

; 198  :         deflateInit(&zcpr,cprLevel);

	push	56					; 00000038H
	push	OFFSET $SG87170
	mov	eax, DWORD PTR _cprLevel$[ebp]
	push	eax
	lea	ecx, DWORD PTR _zcpr$2[ebp]
	push	ecx
	call	_deflateInit_@16

; 199  : 
; 200  :         zcpr.next_in = FilePtr;

	mov	edx, DWORD PTR _FilePtr$[ebp]
	mov	DWORD PTR _zcpr$2[ebp], edx

; 201  :         zcpr.next_out = CprPtr;

	mov	eax, DWORD PTR _CprPtr$[ebp]
	mov	DWORD PTR _zcpr$2[ebp+12], eax
$LN8@main:

; 202  : 
; 203  : 
; 204  :         do
; 205  :         {
; 206  :             long all_read_before = zcpr.total_in;

	mov	ecx, DWORD PTR _zcpr$2[ebp+8]
	mov	DWORD PTR _all_read_before$4[ebp], ecx

; 207  :             zcpr.avail_in = min(lOrigToDo,BlockSizeCompress);

	mov	edx, DWORD PTR _lOrigToDo$12[ebp]
	cmp	edx, DWORD PTR _BlockSizeCompress$[ebp]
	jge	SHORT $LN17@main
	mov	eax, DWORD PTR _lOrigToDo$12[ebp]
	mov	DWORD PTR tv147[ebp], eax
	jmp	SHORT $LN18@main
$LN17@main:
	mov	ecx, DWORD PTR _BlockSizeCompress$[ebp]
	mov	DWORD PTR tv147[ebp], ecx
$LN18@main:
	mov	edx, DWORD PTR tv147[ebp]
	mov	DWORD PTR _zcpr$2[ebp+4], edx

; 208  :             zcpr.avail_out = BlockSizeCompress;

	mov	eax, DWORD PTR _BlockSizeCompress$[ebp]
	mov	DWORD PTR _zcpr$2[ebp+16], eax

; 209  :             ret=deflate(&zcpr,(zcpr.avail_in==lOrigToDo) ? Z_FINISH : Z_SYNC_FLUSH);

	mov	ecx, DWORD PTR _zcpr$2[ebp+4]
	cmp	ecx, DWORD PTR _lOrigToDo$12[ebp]
	jne	SHORT $LN19@main
	mov	DWORD PTR tv150[ebp], 4
	jmp	SHORT $LN20@main
$LN19@main:
	mov	DWORD PTR tv150[ebp], 2
$LN20@main:
	mov	edx, DWORD PTR tv150[ebp]
	push	edx
	lea	eax, DWORD PTR _zcpr$2[ebp]
	push	eax
	call	_deflate@8
	mov	DWORD PTR _ret$8[ebp], eax

; 210  :             lOrigDone += (zcpr.total_in-all_read_before);

	mov	ecx, DWORD PTR _zcpr$2[ebp+8]
	sub	ecx, DWORD PTR _all_read_before$4[ebp]
	add	ecx, DWORD PTR _lOrigDone$7[ebp]
	mov	DWORD PTR _lOrigDone$7[ebp], ecx

; 211  :             lOrigToDo -= (zcpr.total_in-all_read_before);

	mov	edx, DWORD PTR _zcpr$2[ebp+8]
	sub	edx, DWORD PTR _all_read_before$4[ebp]
	mov	eax, DWORD PTR _lOrigToDo$12[ebp]
	sub	eax, edx
	mov	DWORD PTR _lOrigToDo$12[ebp], eax

; 212  :             step++;

	mov	ecx, DWORD PTR _step$9[ebp]
	add	ecx, 1
	mov	DWORD PTR _step$9[ebp], ecx

; 213  :         } while (ret==Z_OK);

	cmp	DWORD PTR _ret$8[ebp], 0
	je	$LN8@main

; 214  : 
; 215  :         lSizeCpr=zcpr.total_out;

	mov	edx, DWORD PTR _zcpr$2[ebp+20]
	mov	DWORD PTR _lSizeCpr$[ebp], edx

; 216  :         deflateEnd(&zcpr);

	lea	eax, DWORD PTR _zcpr$2[ebp]
	push	eax
	call	_deflateEnd@4

; 217  :         dwGetTick=GetTickCount()-dwGetTick;

	call	DWORD PTR __imp__GetTickCount@0
	sub	eax, DWORD PTR _dwGetTick$[ebp]
	mov	DWORD PTR _dwGetTick$[ebp], eax

; 218  :         dwMsecQP=GetMsecSincePerfCounter(li_qp,TRUE);

	push	1
	mov	ecx, DWORD PTR _li_qp$[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _li_qp$[ebp]
	push	edx
	call	_GetMsecSincePerfCounter
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _dwMsecQP$[ebp], eax

; 219  :         dwResRdtsc=GetResRdtsc(li_rdtsc,TRUE);

	push	1
	mov	eax, DWORD PTR _li_rdtsc$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _li_rdtsc$[ebp]
	push	ecx
	call	_GetResRdtsc
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _dwResRdtsc$[ebp], eax
	mov	DWORD PTR _dwResRdtsc$[ebp+4], edx

; 220  :         printf("total compress size = %u, in %u step\n",lSizeCpr,step);

	mov	edx, DWORD PTR _step$9[ebp]
	push	edx
	mov	eax, DWORD PTR _lSizeCpr$[ebp]
	push	eax
	push	OFFSET $SG87175
	call	DWORD PTR __imp__printf
	add	esp, 12					; 0000000cH

; 221  :         printf("time = %u msec = %f sec\n",dwGetTick,dwGetTick/(double)1000.);

	mov	ecx, DWORD PTR _dwGetTick$[ebp]
	mov	DWORD PTR tv352[ebp], ecx
	cvtsi2sd xmm0, DWORD PTR tv352[ebp]
	mov	edx, DWORD PTR tv352[ebp]
	shr	edx, 31					; 0000001fH
	addsd	xmm0, QWORD PTR __xmm@41f00000000000000000000000000000[edx*8]
	divsd	xmm0, QWORD PTR __real@408f400000000000
	sub	esp, 8
	movsd	QWORD PTR [esp], xmm0
	mov	eax, DWORD PTR _dwGetTick$[ebp]
	push	eax
	push	OFFSET $SG87177
	call	DWORD PTR __imp__printf
	add	esp, 16					; 00000010H

; 222  :         printf("defcpr time QP = %u msec = %f sec\n",dwMsecQP,dwMsecQP/(double)1000.);

	mov	ecx, DWORD PTR _dwMsecQP$[ebp]
	mov	DWORD PTR tv359[ebp], ecx
	cvtsi2sd xmm0, DWORD PTR tv359[ebp]
	mov	edx, DWORD PTR tv359[ebp]
	shr	edx, 31					; 0000001fH
	addsd	xmm0, QWORD PTR __xmm@41f00000000000000000000000000000[edx*8]
	divsd	xmm0, QWORD PTR __real@408f400000000000
	sub	esp, 8
	movsd	QWORD PTR [esp], xmm0
	mov	eax, DWORD PTR _dwMsecQP$[ebp]
	push	eax
	push	OFFSET $SG87179
	call	DWORD PTR __imp__printf
	add	esp, 16					; 00000010H

; 223  :         printf("defcpr result rdtsc = %I64x\n\n",dwResRdtsc.QuadPart);

	mov	ecx, DWORD PTR _dwResRdtsc$[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _dwResRdtsc$[ebp]
	push	edx
	push	OFFSET $SG87180
	call	DWORD PTR __imp__printf
	add	esp, 12					; 0000000cH

; 224  :     }
; 225  : 
; 226  :     CprPtr=(unsigned char*)realloc(CprPtr,lSizeCpr);

	mov	eax, DWORD PTR _lSizeCpr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _CprPtr$[ebp]
	push	ecx
	call	DWORD PTR __imp__realloc
	add	esp, 8
	mov	DWORD PTR _CprPtr$[ebp], eax

; 227  :     UncprPtr=(unsigned char*)malloc(lBufferSizeUncpr + BlockSizeUncompress);

	mov	edx, DWORD PTR _lBufferSizeUncpr$[ebp]
	add	edx, DWORD PTR _BlockSizeUncompress$[ebp]
	push	edx
	call	DWORD PTR __imp__malloc
	add	esp, 4
	mov	DWORD PTR _UncprPtr$[ebp], eax

; 228  : 
; 229  :     BeginCountPerfCounter(&li_qp,TRUE);

	push	1
	lea	eax, DWORD PTR _li_qp$[ebp]
	push	eax
	call	_BeginCountPerfCounter
	add	esp, 8

; 230  :     dwGetTick=GetTickCount();

	call	DWORD PTR __imp__GetTickCount@0
	mov	DWORD PTR _dwGetTick$[ebp], eax

; 231  :     BeginCountRdtsc(&li_rdtsc);

	lea	ecx, DWORD PTR _li_rdtsc$[ebp]
	push	ecx
	call	_BeginCountRdtsc
	add	esp, 4

; 232  :     {
; 233  :         z_stream zcpr;
; 234  :         int ret=Z_OK;

	mov	DWORD PTR _ret$3[ebp], 0

; 235  :         long lOrigToDo = lSizeCpr;

	mov	edx, DWORD PTR _lSizeCpr$[ebp]
	mov	DWORD PTR _lOrigToDo$11[ebp], edx

; 236  :         long lOrigDone = 0;

	mov	DWORD PTR _lOrigDone$6[ebp], 0

; 237  :         int step=0;

	mov	DWORD PTR _step$10[ebp], 0

; 238  :         memset(&zcpr,0,sizeof(z_stream));

	push	56					; 00000038H
	push	0
	lea	eax, DWORD PTR _zcpr$1[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 239  :         inflateInit(&zcpr);

	push	56					; 00000038H
	push	OFFSET $SG87191
	lea	ecx, DWORD PTR _zcpr$1[ebp]
	push	ecx
	call	_inflateInit_@12

; 240  : 
; 241  :         zcpr.next_in = CprPtr;

	mov	edx, DWORD PTR _CprPtr$[ebp]
	mov	DWORD PTR _zcpr$1[ebp], edx

; 242  :         zcpr.next_out = UncprPtr;

	mov	eax, DWORD PTR _UncprPtr$[ebp]
	mov	DWORD PTR _zcpr$1[ebp+12], eax
$LN5@main:

; 243  : 
; 244  : 
; 245  :         do
; 246  :         {
; 247  :             long all_read_before = zcpr.total_in;

	mov	ecx, DWORD PTR _zcpr$1[ebp+8]
	mov	DWORD PTR _all_read_before$5[ebp], ecx

; 248  :             zcpr.avail_in = min(lOrigToDo,BlockSizeUncompress);

	mov	edx, DWORD PTR _lOrigToDo$11[ebp]
	cmp	edx, DWORD PTR _BlockSizeUncompress$[ebp]
	jge	SHORT $LN21@main
	mov	eax, DWORD PTR _lOrigToDo$11[ebp]
	mov	DWORD PTR tv232[ebp], eax
	jmp	SHORT $LN22@main
$LN21@main:
	mov	ecx, DWORD PTR _BlockSizeUncompress$[ebp]
	mov	DWORD PTR tv232[ebp], ecx
$LN22@main:
	mov	edx, DWORD PTR tv232[ebp]
	mov	DWORD PTR _zcpr$1[ebp+4], edx

; 249  :             zcpr.avail_out = BlockSizeUncompress;

	mov	eax, DWORD PTR _BlockSizeUncompress$[ebp]
	mov	DWORD PTR _zcpr$1[ebp+16], eax

; 250  :             ret=inflate(&zcpr,Z_SYNC_FLUSH);

	push	2
	lea	ecx, DWORD PTR _zcpr$1[ebp]
	push	ecx
	call	_inflate@8
	mov	DWORD PTR _ret$3[ebp], eax

; 251  :             lOrigDone += (zcpr.total_in-all_read_before);

	mov	edx, DWORD PTR _zcpr$1[ebp+8]
	sub	edx, DWORD PTR _all_read_before$5[ebp]
	add	edx, DWORD PTR _lOrigDone$6[ebp]
	mov	DWORD PTR _lOrigDone$6[ebp], edx

; 252  :             lOrigToDo -= (zcpr.total_in-all_read_before);

	mov	eax, DWORD PTR _zcpr$1[ebp+8]
	sub	eax, DWORD PTR _all_read_before$5[ebp]
	mov	ecx, DWORD PTR _lOrigToDo$11[ebp]
	sub	ecx, eax
	mov	DWORD PTR _lOrigToDo$11[ebp], ecx

; 253  :             step++;

	mov	edx, DWORD PTR _step$10[ebp]
	add	edx, 1
	mov	DWORD PTR _step$10[ebp], edx

; 254  :         } while (ret==Z_OK);

	cmp	DWORD PTR _ret$3[ebp], 0
	je	SHORT $LN5@main

; 255  : 
; 256  :         lSizeUncpr=zcpr.total_out;

	mov	eax, DWORD PTR _zcpr$1[ebp+20]
	mov	DWORD PTR _lSizeUncpr$[ebp], eax

; 257  :         inflateEnd(&zcpr);

	lea	ecx, DWORD PTR _zcpr$1[ebp]
	push	ecx
	call	_inflateEnd@4

; 258  :         dwGetTick=GetTickCount()-dwGetTick;

	call	DWORD PTR __imp__GetTickCount@0
	sub	eax, DWORD PTR _dwGetTick$[ebp]
	mov	DWORD PTR _dwGetTick$[ebp], eax

; 259  :         dwMsecQP=GetMsecSincePerfCounter(li_qp,TRUE);

	push	1
	mov	edx, DWORD PTR _li_qp$[ebp+4]
	push	edx
	mov	eax, DWORD PTR _li_qp$[ebp]
	push	eax
	call	_GetMsecSincePerfCounter
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _dwMsecQP$[ebp], eax

; 260  :         dwResRdtsc=GetResRdtsc(li_rdtsc,TRUE);

	push	1
	mov	ecx, DWORD PTR _li_rdtsc$[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _li_rdtsc$[ebp]
	push	edx
	call	_GetResRdtsc
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _dwResRdtsc$[ebp], eax
	mov	DWORD PTR _dwResRdtsc$[ebp+4], edx

; 261  :         printf("total uncompress size = %u, in %u step\n",lSizeUncpr,step);

	mov	eax, DWORD PTR _step$10[ebp]
	push	eax
	mov	ecx, DWORD PTR _lSizeUncpr$[ebp]
	push	ecx
	push	OFFSET $SG87196
	call	DWORD PTR __imp__printf
	add	esp, 12					; 0000000cH

; 262  :         printf("time = %u msec = %f sec\n",dwGetTick,dwGetTick/(double)1000.);

	mov	edx, DWORD PTR _dwGetTick$[ebp]
	mov	DWORD PTR tv414[ebp], edx
	cvtsi2sd xmm0, DWORD PTR tv414[ebp]
	mov	eax, DWORD PTR tv414[ebp]
	shr	eax, 31					; 0000001fH
	addsd	xmm0, QWORD PTR __xmm@41f00000000000000000000000000000[eax*8]
	divsd	xmm0, QWORD PTR __real@408f400000000000
	sub	esp, 8
	movsd	QWORD PTR [esp], xmm0
	mov	ecx, DWORD PTR _dwGetTick$[ebp]
	push	ecx
	push	OFFSET $SG87198
	call	DWORD PTR __imp__printf
	add	esp, 16					; 00000010H

; 263  :         printf("uncpr  time QP = %u msec = %f sec\n",dwMsecQP,dwMsecQP/(double)1000.);

	mov	edx, DWORD PTR _dwMsecQP$[ebp]
	mov	DWORD PTR tv421[ebp], edx
	cvtsi2sd xmm0, DWORD PTR tv421[ebp]
	mov	eax, DWORD PTR tv421[ebp]
	shr	eax, 31					; 0000001fH
	addsd	xmm0, QWORD PTR __xmm@41f00000000000000000000000000000[eax*8]
	divsd	xmm0, QWORD PTR __real@408f400000000000
	sub	esp, 8
	movsd	QWORD PTR [esp], xmm0
	mov	ecx, DWORD PTR _dwMsecQP$[ebp]
	push	ecx
	push	OFFSET $SG87200
	call	DWORD PTR __imp__printf
	add	esp, 16					; 00000010H

; 264  :         printf("uncpr  result rdtsc = %I64x\n\n",dwResRdtsc.QuadPart);

	mov	edx, DWORD PTR _dwResRdtsc$[ebp+4]
	push	edx
	mov	eax, DWORD PTR _dwResRdtsc$[ebp]
	push	eax
	push	OFFSET $SG87201
	call	DWORD PTR __imp__printf
	add	esp, 12					; 0000000cH

; 265  :     }
; 266  : 
; 267  :     if (lSizeUncpr==lFileSize)

	mov	ecx, DWORD PTR _lSizeUncpr$[ebp]
	cmp	ecx, DWORD PTR _lFileSize$[ebp]
	jne	SHORT $LN1@main

; 268  :     {
; 269  :         if (memcmp(FilePtr,UncprPtr,lFileSize)==0)

	mov	edx, DWORD PTR _lFileSize$[ebp]
	push	edx
	mov	eax, DWORD PTR _UncprPtr$[ebp]
	push	eax
	mov	ecx, DWORD PTR _FilePtr$[ebp]
	push	ecx
	call	_memcmp
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $LN1@main

; 270  :             printf("compare ok\n");

	push	OFFSET $SG87204
	call	DWORD PTR __imp__printf
	add	esp, 4
$LN1@main:

; 271  : 
; 272  :     }
; 273  : 
; 274  :     return 0;

	xor	eax, eax
$LN15@main:

; 275  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\git\image2geometry\3rdparty\zlib-1.2.11\contrib\testzlib\testzlib.c
_TEXT	SEGMENT
_retVal$ = -12						; size = 4
_ptr$ = -8						; size = 4
_stream$ = -4						; size = 4
_filename$ = 8						; size = 4
_plFileSize$ = 12					; size = 4
_pFilePtr$ = 16						; size = 4
_ReadFileMemory PROC

; 120  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH

; 121  :     FILE* stream;
; 122  :     unsigned char* ptr;
; 123  :     int retVal=1;

	mov	DWORD PTR _retVal$[ebp], 1

; 124  :     stream=fopen(filename, "rb");

	push	OFFSET $SG87121
	mov	eax, DWORD PTR _filename$[ebp]
	push	eax
	call	DWORD PTR __imp__fopen
	add	esp, 8
	mov	DWORD PTR _stream$[ebp], eax

; 125  :     if (stream==NULL)

	cmp	DWORD PTR _stream$[ebp], 0
	jne	SHORT $LN4@ReadFileMe

; 126  :         return 0;

	xor	eax, eax
	jmp	$LN5@ReadFileMe
$LN4@ReadFileMe:

; 127  : 
; 128  :     fseek(stream,0,SEEK_END);

	push	2
	push	0
	mov	ecx, DWORD PTR _stream$[ebp]
	push	ecx
	call	DWORD PTR __imp__fseek
	add	esp, 12					; 0000000cH

; 129  : 
; 130  :     *plFileSize=ftell(stream);

	mov	edx, DWORD PTR _stream$[ebp]
	push	edx
	call	DWORD PTR __imp__ftell
	add	esp, 4
	mov	ecx, DWORD PTR _plFileSize$[ebp]
	mov	DWORD PTR [ecx], eax

; 131  :     fseek(stream,0,SEEK_SET);

	push	0
	push	0
	mov	edx, DWORD PTR _stream$[ebp]
	push	edx
	call	DWORD PTR __imp__fseek
	add	esp, 12					; 0000000cH

; 132  :     ptr=malloc((*plFileSize)+1);

	mov	eax, DWORD PTR _plFileSize$[ebp]
	mov	ecx, DWORD PTR [eax]
	add	ecx, 1
	push	ecx
	call	DWORD PTR __imp__malloc
	add	esp, 4
	mov	DWORD PTR _ptr$[ebp], eax

; 133  :     if (ptr==NULL)

	cmp	DWORD PTR _ptr$[ebp], 0
	jne	SHORT $LN3@ReadFileMe

; 134  :         retVal=0;

	mov	DWORD PTR _retVal$[ebp], 0

; 135  :     else

	jmp	SHORT $LN2@ReadFileMe
$LN3@ReadFileMe:

; 136  :     {
; 137  :         if (fread(ptr, 1, *plFileSize,stream) != (*plFileSize))

	mov	edx, DWORD PTR _stream$[ebp]
	push	edx
	mov	eax, DWORD PTR _plFileSize$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	push	1
	mov	edx, DWORD PTR _ptr$[ebp]
	push	edx
	call	DWORD PTR __imp__fread
	add	esp, 16					; 00000010H
	mov	ecx, DWORD PTR _plFileSize$[ebp]
	cmp	eax, DWORD PTR [ecx]
	je	SHORT $LN2@ReadFileMe

; 138  :             retVal=0;

	mov	DWORD PTR _retVal$[ebp], 0
$LN2@ReadFileMe:

; 139  :     }
; 140  :     fclose(stream);

	mov	edx, DWORD PTR _stream$[ebp]
	push	edx
	call	DWORD PTR __imp__fclose
	add	esp, 4

; 141  :     *pFilePtr=ptr;

	mov	eax, DWORD PTR _pFilePtr$[ebp]
	mov	ecx, DWORD PTR _ptr$[ebp]
	mov	DWORD PTR [eax], ecx

; 142  :     return retVal;

	mov	eax, DWORD PTR _retVal$[ebp]
$LN5@ReadFileMe:

; 143  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_ReadFileMemory ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\git\image2geometry\3rdparty\zlib-1.2.11\contrib\testzlib\testzlib.c
_TEXT	SEGMENT
_tickSecShifted$ = -48					; size = 8
_ticksShifted$ = -40					; size = 8
_ticksPerSecond$ = -32					; size = 8
_ticks$ = -24						; size = 8
_endTime64$ = -16					; size = 8
_dwLog$ = -8						; size = 4
_dwRet$ = -4						; size = 4
_beginTime64$ = 8					; size = 8
_fComputeTimeQueryPerf$ = 16				; size = 4
_GetMsecSincePerfCounter PROC

; 94   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 48					; 00000030H

; 95   :     LARGE_INTEGER endTime64,ticksPerSecond,ticks;
; 96   :     DWORDLONG ticksShifted,tickSecShifted;
; 97   :     DWORD dwLog=16+0;

	mov	DWORD PTR _dwLog$[ebp], 16		; 00000010H

; 98   :     DWORD dwRet;
; 99   :     if ((!fComputeTimeQueryPerf) || (!QueryPerformanceCounter(&endTime64)))

	cmp	DWORD PTR _fComputeTimeQueryPerf$[ebp], 0
	je	SHORT $LN2@GetMsecSin
	lea	eax, DWORD PTR _endTime64$[ebp]
	push	eax
	call	DWORD PTR __imp__QueryPerformanceCounter@4
	test	eax, eax
	jne	SHORT $LN3@GetMsecSin
$LN2@GetMsecSin:

; 100  :         dwRet = (GetTickCount() - beginTime64.LowPart)*1;

	call	DWORD PTR __imp__GetTickCount@0
	sub	eax, DWORD PTR _beginTime64$[ebp]
	mov	DWORD PTR _dwRet$[ebp], eax

; 101  :     else

	jmp	SHORT $LN1@GetMsecSin
$LN3@GetMsecSin:

; 102  :     {
; 103  :         MyDoMinus64(&ticks,endTime64,beginTime64);

	mov	ecx, DWORD PTR _beginTime64$[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _beginTime64$[ebp]
	push	edx
	mov	eax, DWORD PTR _endTime64$[ebp+4]
	push	eax
	mov	ecx, DWORD PTR _endTime64$[ebp]
	push	ecx
	lea	edx, DWORD PTR _ticks$[ebp]
	push	edx
	call	_MyDoMinus64
	add	esp, 20					; 00000014H

; 104  :         QueryPerformanceFrequency(&ticksPerSecond);

	lea	eax, DWORD PTR _ticksPerSecond$[ebp]
	push	eax
	call	DWORD PTR __imp__QueryPerformanceFrequency@4

; 105  : 
; 106  : 
; 107  :         {
; 108  :             ticksShifted = Int64ShrlMod32(*(DWORDLONG*)&ticks,dwLog);

	mov	ecx, DWORD PTR _dwLog$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ticks$[ebp+4]
	push	edx
	mov	eax, DWORD PTR _ticks$[ebp]
	push	eax
	call	_Int64ShrlMod32@12
	mov	DWORD PTR _ticksShifted$[ebp], eax
	mov	DWORD PTR _ticksShifted$[ebp+4], edx

; 109  :             tickSecShifted = Int64ShrlMod32(*(DWORDLONG*)&ticksPerSecond,dwLog);

	mov	ecx, DWORD PTR _dwLog$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ticksPerSecond$[ebp+4]
	push	edx
	mov	eax, DWORD PTR _ticksPerSecond$[ebp]
	push	eax
	call	_Int64ShrlMod32@12
	mov	DWORD PTR _tickSecShifted$[ebp], eax
	mov	DWORD PTR _tickSecShifted$[ebp+4], edx

; 110  : 
; 111  :         }
; 112  : 
; 113  :         dwRet = (DWORD)((((DWORD)ticksShifted)*1000)/(DWORD)(tickSecShifted));

	imul	eax, DWORD PTR _ticksShifted$[ebp], 1000
	xor	edx, edx
	div	DWORD PTR _tickSecShifted$[ebp]
	mov	DWORD PTR _dwRet$[ebp], eax

; 114  :         dwRet *=1;

	mov	ecx, DWORD PTR _dwRet$[ebp]
	mov	DWORD PTR _dwRet$[ebp], ecx
$LN1@GetMsecSin:

; 115  :     }
; 116  :     return dwRet;

	mov	eax, DWORD PTR _dwRet$[ebp]

; 117  : }

	mov	esp, ebp
	pop	ebp
	ret	0
_GetMsecSincePerfCounter ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\git\image2geometry\3rdparty\zlib-1.2.11\contrib\testzlib\testzlib.c
_TEXT	SEGMENT
_pbeginTime64$ = 8					; size = 4
_fComputeTimeQueryPerf$ = 12				; size = 4
_BeginCountPerfCounter PROC

; 85   : {

	push	ebp
	mov	ebp, esp

; 86   :     if ((!fComputeTimeQueryPerf) || (!QueryPerformanceCounter(pbeginTime64)))

	cmp	DWORD PTR _fComputeTimeQueryPerf$[ebp], 0
	je	SHORT $LN1@BeginCount
	mov	eax, DWORD PTR _pbeginTime64$[ebp]
	push	eax
	call	DWORD PTR __imp__QueryPerformanceCounter@4
	test	eax, eax
	jne	SHORT $LN3@BeginCount
$LN1@BeginCount:

; 87   :     {
; 88   :         pbeginTime64->LowPart = GetTickCount();

	call	DWORD PTR __imp__GetTickCount@0
	mov	ecx, DWORD PTR _pbeginTime64$[ebp]
	mov	DWORD PTR [ecx], eax

; 89   :         pbeginTime64->HighPart = 0;

	mov	edx, DWORD PTR _pbeginTime64$[ebp]
	mov	DWORD PTR [edx+4], 0
$LN3@BeginCount:

; 90   :     }
; 91   : }

	pop	ebp
	ret	0
_BeginCountPerfCounter ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\git\image2geometry\3rdparty\zlib-1.2.11\contrib\testzlib\testzlib.c
_TEXT	SEGMENT
_endTime64$ = -16					; size = 8
_LIres$ = -8						; size = 8
_beginTime64$ = 8					; size = 8
_fComputeTimeQueryPerf$ = 16				; size = 4
_GetResRdtsc PROC

; 58   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H

; 59   :     LARGE_INTEGER LIres,endTime64;
; 60   :     myGetRDTSC32(&endTime64);

	lea	eax, DWORD PTR _endTime64$[ebp]
	push	eax
	call	_myGetRDTSC32
	add	esp, 4

; 61   : 
; 62   :     LIres.LowPart=LIres.HighPart=0;

	mov	DWORD PTR _LIres$[ebp+4], 0
	mov	ecx, DWORD PTR _LIres$[ebp+4]
	mov	DWORD PTR _LIres$[ebp], ecx

; 63   :     MyDoMinus64(&LIres,endTime64,beginTime64);

	mov	edx, DWORD PTR _beginTime64$[ebp+4]
	push	edx
	mov	eax, DWORD PTR _beginTime64$[ebp]
	push	eax
	mov	ecx, DWORD PTR _endTime64$[ebp+4]
	push	ecx
	mov	edx, DWORD PTR _endTime64$[ebp]
	push	edx
	lea	eax, DWORD PTR _LIres$[ebp]
	push	eax
	call	_MyDoMinus64
	add	esp, 20					; 00000014H

; 64   :     return LIres;

	mov	eax, DWORD PTR _LIres$[ebp]
	mov	edx, DWORD PTR _LIres$[ebp+4]

; 65   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_GetResRdtsc ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\git\image2geometry\3rdparty\zlib-1.2.11\contrib\testzlib\testzlib.c
_TEXT	SEGMENT
_pbeginTime64$ = 8					; size = 4
_BeginCountRdtsc PROC

; 53   : {

	push	ebp
	mov	ebp, esp

; 54   :     myGetRDTSC32(pbeginTime64);

	mov	eax, DWORD PTR _pbeginTime64$[ebp]
	push	eax
	call	_myGetRDTSC32
	add	esp, 4

; 55   : }

	pop	ebp
	ret	0
_BeginCountRdtsc ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\git\image2geometry\3rdparty\zlib-1.2.11\contrib\testzlib\testzlib.c
_TEXT	SEGMENT
_dwEdx$ = -8						; size = 4
_dwEax$ = -4						; size = 4
_pbeginTime64$ = 8					; size = 4
_myGetRDTSC32 PROC

; 40   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 41   :     DWORD dwEdx,dwEax;
; 42   :     _asm
; 43   :     {
; 44   :         rdtsc

	rdtsc

; 45   :         mov dwEax,eax

	mov	DWORD PTR _dwEax$[ebp], eax

; 46   :         mov dwEdx,edx

	mov	DWORD PTR _dwEdx$[ebp], edx

; 47   :     }
; 48   :     pbeginTime64->LowPart=dwEax;

	mov	eax, DWORD PTR _pbeginTime64$[ebp]
	mov	ecx, DWORD PTR _dwEax$[ebp]
	mov	DWORD PTR [eax], ecx

; 49   :     pbeginTime64->HighPart=dwEdx;

	mov	edx, DWORD PTR _pbeginTime64$[ebp]
	mov	eax, DWORD PTR _dwEdx$[ebp]
	mov	DWORD PTR [edx+4], eax

; 50   : }

	mov	esp, ebp
	pop	ebp
	ret	0
_myGetRDTSC32 ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\git\image2geometry\3rdparty\zlib-1.2.11\contrib\testzlib\testzlib.c
_TEXT	SEGMENT
_R$ = 8							; size = 4
_A$ = 12						; size = 8
_B$ = 20						; size = 8
_MyDoMinus64 PROC

; 9    : {

	push	ebp
	mov	ebp, esp

; 10   :     R->HighPart = A.HighPart - B.HighPart;

	mov	eax, DWORD PTR _A$[ebp+4]
	sub	eax, DWORD PTR _B$[ebp+4]
	mov	ecx, DWORD PTR _R$[ebp]
	mov	DWORD PTR [ecx+4], eax

; 11   :     if (A.LowPart >= B.LowPart)

	mov	edx, DWORD PTR _A$[ebp]
	cmp	edx, DWORD PTR _B$[ebp]
	jb	SHORT $LN2@MyDoMinus6

; 12   :         R->LowPart = A.LowPart - B.LowPart;

	mov	eax, DWORD PTR _A$[ebp]
	sub	eax, DWORD PTR _B$[ebp]
	mov	ecx, DWORD PTR _R$[ebp]
	mov	DWORD PTR [ecx], eax

; 13   :     else

	jmp	SHORT $LN3@MyDoMinus6
$LN2@MyDoMinus6:

; 14   :     {
; 15   :         R->LowPart = A.LowPart - B.LowPart;

	mov	edx, DWORD PTR _A$[ebp]
	sub	edx, DWORD PTR _B$[ebp]
	mov	eax, DWORD PTR _R$[ebp]
	mov	DWORD PTR [eax], edx

; 16   :         R->HighPart --;

	mov	ecx, DWORD PTR _R$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	sub	edx, 1
	mov	eax, DWORD PTR _R$[ebp]
	mov	DWORD PTR [eax+4], edx
$LN3@MyDoMinus6:

; 17   :     }
; 18   : }

	pop	ebp
	ret	0
_MyDoMinus64 ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
; File c:\program files (x86)\windows kits\8.1\include\um\winnt.h
;	COMDAT _Int64ShrlMod32@12
_TEXT	SEGMENT
_Value$ = 8						; size = 8
_ShiftCount$ = 16					; size = 4
_Int64ShrlMod32@12 PROC					; COMDAT

; 920  : {

	push	ebp
	mov	ebp, esp

; 921  :     __asm    {
; 922  :         mov     ecx, ShiftCount

	mov	ecx, DWORD PTR _ShiftCount$[ebp]

; 923  :         mov     eax, dword ptr [Value]

	mov	eax, DWORD PTR _Value$[ebp]

; 924  :         mov     edx, dword ptr [Value+4]

	mov	edx, DWORD PTR _Value$[ebp+4]

; 925  :         shrd    eax, edx, cl

	shrd	eax, edx, cl

; 926  :         shr     edx, cl

	shr	edx, cl

; 927  :     }
; 928  : }

	pop	ebp
	ret	12					; 0000000cH
_Int64ShrlMod32@12 ENDP
_TEXT	ENDS
END
