# csci-241-ch10-2
Fun_with_UNION

If you are not familiar with the union in C/C++ programming, take a look at C Programming Unions or Union in C. This is a UNION concept understanding exercise. Simply fill in 7 MOV instructions in the following:
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
  mov u.dw3, ...
  mov ...
  mov ...

; String output "01234560"
  mov edx, OFFSET u.text
  call writeString

; Move some values to union member text 4 times BYTE by BYTE
  mov u.text, ...
  mov ...
  mov ...
  mov ...

; DWORD integer output 01234560
  mov eax, u.dw3
  call writeHex

  call CrLf
  exit
mainu ENDP
END  mainu
The expected console output should be like this:
Have fun with UNION!
01234560
01234560
Press any key to continue . . .
Hint: You have to add some values to make a new line yourself for the first string output "01234560".
