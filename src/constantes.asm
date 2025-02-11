;****************
; SERVICIOS BIOS
;****************

RDVRM	equ	#004A	;lee de VRAM
WRTVRM	equ	#004D	;escribe en VRAM
LDIRMV 	equ	#0059   ;VRAM -> M
LDIRVM 	equ	#005C   ;M -> VRAM
CHGMOD	equ	#005F   ;cambia modo pantalla
CHGCLR	equ #0062   ;cambia colores pantalla
CHSNS	equ	#009C	;comprueba el estado del buffer del teclado
CHGET	equ	#009F	;lee un caracter del teclado
CHPUT	equ #00A2	;escribe un carácter en pantalla
CLS		equ	#00C3	;borra la pantalla
POSIT	equ #00C6	;posiciona el cursor en pantalla
ERAFNK	equ	#00CC   ;oculta teclas de funcion
DCOMPR	equ	#0020	;compara HL y DE
WRTVDP 	equ #0047	;escribe registro del VDP
GTSTCK  equ	#00D5	;lee los cursores y joystick
GTTRIG	equ #00D8   ;lee los botones de acción
RDVDP	equ	#013E	;lee registro del VDP
KILBUF	equ	#0156	;vacía el buffer del teclado
ENASLT	equ	#0024   ;selecciona un slot
RSLREG  equ #0138   ;lee el contenido de la salida actual en el registro de ranuras primarias

;***********************
; VARIABLES DEL SISTEMA
;***********************

CLIKSW	equ #F3DB	;sonido de las teclas
FORCLR	equ #F3E9	;color de tinta
BAKCLR	equ #F3EA	;color de fondo
BDRCLR	equ #F3EB	;color de borde
JIFFY	equ	#FC9E   ;reloj software que cuenta interrupciones

RG0SAV 	equ	#F3DF	;registros del VDP
RG1SAV 	equ	#F3E0
RG2SAV 	equ	#F3E1
RG3SAV 	equ	#F3E2
RG4SAV 	equ	#F3E3
RG5SAV 	equ	#F3E4
RG6SAV 	equ	#F3E5
RG7SAV 	equ	#F3E6
STATFL 	equ	#F3E7

;*************************
; DIRECCIONES IMPORTANTES
;*************************

HTIMI	equ #FD9F   ;dirección de la ISR original del sistema
SLOTVAR equ #c000

;******************
; DIRECCIONES VRAM
;******************

CHRTBL1 equ	#0000	;pattern table address
NAMTBL1 equ	#1800	;name table address 
CLRTBL1 equ	#2000	;color table address             
SPRTBL1 equ	#0800	;sprite pattern address  
SPRATR1 equ	#1B00	;sprite attribute address

CHRTBL2 equ	#0000	;pattern table address
NAMTBL2 equ	#1800	;name table address 
CLRTBL2 equ	#2000	;color table address             
SPRTBL2 equ	#3800	;sprite pattern address  
SPRATR2 equ	#1B00	;sprite attribute address

;*********
; COLORES
;*********

COLOR_TRANSPARENT	equ 0
COLOR_BLACK		    equ 1
COLOR_GREEN		    equ 2
COLOR_LIGHT_GREEN	equ 3
COLOR_DARK_BLUE	    equ 4
COLOR_BLUE		    equ 5
COLOR_DARK_RED	    equ 6
COLOR_LIGHT_BLUE	equ 7
COLOR_RED			equ 8
COLOR_LIGHT_RED	    equ 9
COLOR_DARK_YELLOW	equ 10
COLOR_YELLOW		equ 11
COLOR_DARK_GREEN	equ 12
COLOR_PURPLE		equ 13
COLOR_GREY		    equ 14
COLOR_WHITE		    equ 15

;*************
; ESPECIFICAS
;*************

MAX_CONTADOR_VBLANKS    equ 60  ;número de vblanks por cada segundo