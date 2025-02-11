;*********************************************************************
;*
;* Código base de una ROM de 32 KB
;*
;* Fecha: 11/02/2025
;* Autor: Rafael López "Orion"
;* Email: orion@orionmsx.com
;* Créditos:
;*  - Rutina para acceder a los segundos 16 KB de la ROM -> Ramones
;*  - Ejemplo y explicaciones que me enseñaron esto -> Fernando García
;*
;*********************************************************************

	output "out/rom32.rom"

    include "constantes.asm"

;********************************************
; Página 0 del cartucho, Página 1 de memoria
; 0x4000 a 0x7FFF = 16 KB
;********************************************

	org	#4000

;**************
; CABECERA ROM
;**************
								
	db "AB"
	dw BEGIN
	dw 0,0,0,0,0,0


;*********************
; INICIO DEL PROGRAMA
;*********************

BEGIN:

    di
    im 1                            ;interrupciones en modo 1
    ld sp,0xF380                    ;posicionamos la pila
    call search_slotset             ;ubicamos la página 1 del cartucho en la página 2 de memoria
    ei

    include "ejemplo.asm"
    include "fgenericas.asm"

    ;relleno hasta fin de página
    ds #7FFF-$

;********************************************
; Página 1 del cartucho, Página 2 de memoria
; 0x8000 a 0xC000 = 16 KB
;********************************************

    include "variables.asm"

    ;relleno hasta fin de página
    ds #C000-$
