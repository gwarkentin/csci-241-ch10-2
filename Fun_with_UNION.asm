; Program:     Fun_with_UNION (Chapter 10)
; Description: Fill in the blanks
; Student:     Gabriel Warkentin
; Date:        05/5/2020
; Class:       CSCI 241
; Instructor:  Mr. Ding

INCLUDE Irvine32.inc

FunUnion UNION
  text  BYTE  'Have fun with UNION!', 0Dh, 0Ah, 0
  dw3   DWORD 1,2,3
FunUnion ENDS

.data
u FunUnion <>

.code
mainu PROC
  mov edx, OFFSET u.text
  call writeString

; Move some values to union member dw3 3 times DWORD by DWORD
  mov u.dw3, "3210"
  mov u.dw3 + TYPE DWORD, "0654"
  mov u.dw3 + 2 * TYPE DWORD, 00000a0dh

; String output "01234560"
  mov edx, OFFSET u.text
  call writeString

; Move some values to union member text 4 times BYTE by BYTE
  mov u.text, 60h
  mov u.text + TYPE BYTE, 45h
  mov u.text + 2 * TYPE BYTE, 23h
  mov u.text + 3 * TYPE BYTE, 01h

; DWORD integer output 01234560
  mov eax, u.dw3
  call writeHex

  call CrLf
  exit
mainu ENDP
END ;  mainu


Comment @

Expected output:

Have fun with UNION!
01234560
01234560
Press any key to continue . . .

@