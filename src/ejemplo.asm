    ;screen 0
	xor a
	call CHGMOD

    ;escribimos mensaje en pantalla
    ld bc,string_fin-string
	ld de,0
	ld hl,string
	call LDIRVM

    ;bucle infinito
    jr $