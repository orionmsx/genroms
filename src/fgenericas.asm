;original from Ramones (http://karoshi.auic.es/index.php?topic=628.0)
;nueva URL http://karoshi.auic.es/karoshi.auic.es/index.php/topic%2c628.0.html
; -----------------------
; SEARCH_SLOTSET
; Posiciona en pagina 2
; Nuestro ROM.
; -----------------------

search_slotset:
	call search_slot
	jp ENASLT


; -----------------------
; SEARCH_SLOT
; Busca slot de nuestro rom
; -----------------------

search_slot:

	call RSLREG
	rrca
	rrca
	and 3
	ld c,a
	ld b,0
	ld hl,0FCC1h
	add hl,bc
	ld a,(hl)
	and 080h
	or c
	ld c,a
	inc hl
	inc hl
	inc hl
	inc hl
	ld a,(hl)
	and 0Ch
	or c
	ld h,080h
	ld (SLOTVAR),a
	ret	