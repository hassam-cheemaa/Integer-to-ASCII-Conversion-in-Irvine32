include \Irvine\Irvine32.inc

.data
    title01 BYTE "             IIIIII  NNNN     NN  TTTTTT            A      SSSSSS  CCCCCC  IIIIII  IIIIII", 0dh, 0ah, 0
    title02 BYTE "               II    NN  NN   NN    TT             AAA     SS      CC        II      II  ", 0dh, 0ah, 0
    title03 BYTE "               II    NN   NN  NN    TT    ----    A   A    SSSSSS  CC        II      II  ", 0dh, 0ah, 0
    title04 BYTE "               II    NN    NN NN    TT    ----   AAAAAAA       SS  CC        II      II  ", 0dh, 0ah, 0
    title05 BYTE "             IIIIII  NN     NNNN    TT          AA     AA  SSSSSS  CCCCCC  IIIIII  IIIIII", 0dh, 0ah, 0

    menu            BYTE "                                 Choose an option:", 0dh, 0ah, 0
    option1         BYTE "                                 1. Integer to ASCII Conversion", 0dh, 0ah, 0
    option2         BYTE "                                 2. Exit", 0dh, 0ah, 0
    prompt          BYTE "                                 Enter your choice: ", 0
    invalidOption   BYTE "                                 Invalid option. Please try again.", 0dh, 0ah, 0
    option11        BYTE "                                 ---- Converting ----", 0dh, 0ah, 0
    invalidInputMsg BYTE "                                 Invalid input. Please enter a number between 33 and 127.", 0dh, 0ah, 0

    integerPrompt      BYTE "                                     Enter the Integer: ", 0
    asciiTextMsg       BYTE "                                     ASCII Character: ", 0
    plainText          BYTE ?
    asciitext          BYTE ?

.code
main proc
    call printtitle

menuLoop:
    call displayMenu
    call getUserChoice
    cmp al, 1
    je asciitex
    cmp al, 2
    je exitProgram
    call invalidChoice
    jmp menuLoop

asciitex:
    call asciiconv
    jmp menuLoop

exitProgram:
    call crlf
    call waitmsg
    exit
main endp

printtitle proc
    mov edx, offset title01
    call writestring
    mov edx, offset title02
    call writestring
    mov edx, offset title03
    call writestring
    mov edx, offset title04
    call writestring
    mov edx, offset title05
    call writestring
    call crlf
    call crlf
    call crlf
    ret
printtitle endp

displayMenu proc
    mov edx, offset menu
    call writestring
    mov edx, offset option1
    call writestring
    mov edx, offset option2
    call writestring
    mov edx, offset prompt
    call writestring
    ret
displayMenu endp

getUserChoice proc
    call ReadInt
    ret
getUserChoice endp

invalidChoice proc
    mov edx, offset invalidOption
    call writestring
    ret
invalidChoice endp

asciiconv proc
    mov edx, offset integerPrompt
    call writestring
    call ReadInt
    cmp ax, 33 ; check if the input is less than 33
    jl invalidInput
    cmp ax, 127 ; check if the input is greater than 127
    jg invalidInput
    mov plainText, al
    mov edx, offset asciiTextMsg
    call writestring
    mov al, plainText
    call writechar
    call crlf
    call crlf
    ret
invalidInput:
    mov edx, offset invalidInputMsg
    call writestring
    ret
asciiconv endp

end main
