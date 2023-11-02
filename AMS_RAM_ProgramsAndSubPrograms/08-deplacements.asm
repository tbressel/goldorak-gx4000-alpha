; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
haut
	xor		a
	ld		(sprh_a_charger),a
	ld		a,(direction_goldorak)
	cp		a,val_dir_gauche
	jr		z,charge_sprh_haut
	cp		a,val_dir_droite
	jr		z,charge_sprh_haut
retour_charge_sprh_haut	
	ld		a,val_dir_haut
	ld		(direction_goldorak),a
	call	goldo_haut
	jp		retour_test_des_directions
goldo_haut
	ld		hl,(posy_goldorak)
	dec 	hl:dec hl
	ld		a,l
	cp		a,collision_goldo_haut
	call	z,stop_haut
	ld 		(posy_goldorak),hl
	call	goldo_affiche
	ret
stop_haut
	inc	hl:inc hl
	ret
charge_sprh_haut
	ld	a,1
	ld	(sprh_a_charger),a
	ld	hl,(Tbl_sprh_direction)
	ld	(sprh_goldorak),hl	
	ld	hl,(Tbl_sprh_direction2)
	ld	(sprh_goldorak2),hl
	jr	retour_charge_sprh_haut
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
bas
	xor		a
	ld		(sprh_a_charger),a
	ld		a,(direction_goldorak)
	cp		a,val_dir_gauche
	jr		z,charge_sprh_bas
	cp		a,val_dir_droite
	jr		z,charge_sprh_bas
retour_charge_sprh_bas
	ld		a,val_dir_bas
	ld		(direction_goldorak),a	
	call	goldo_bas
	jp		retour_test_des_directions
goldo_bas
	ld		hl,(posy_goldorak)
	inc 	hl:inc hl
	ld		a,l
	cp		a,collision_goldo_bas
	call	z,stop_bas
	ld 		(posy_goldorak),hl
	call	goldo_affiche
	ret
stop_bas
	dec		hl
	dec hl
	ret
charge_sprh_bas
	ld	a,1
	ld	(sprh_a_charger),a
	ld	hl,(Tbl_sprh_direction)
	ld	(sprh_goldorak),hl
		ld	hl,(Tbl_sprh_direction2)
	ld	(sprh_goldorak2),hl
	jr	retour_charge_sprh_bas
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
goldo_gauche
	xor		a
	ld		(sprh_a_charger),a
	ld		a,(direction_goldorak)
	cp		a,val_dir_haut
	jr		z,charge_sprh_gauche
	cp		a,val_dir_bas
	jr		z,charge_sprh_gauche
	cp		a,val_dir_droite
	jr		z,charge_sprh_gauche
retour_charge_sprh_gauche		
	ld		a,val_dir_gauche
	ld		(direction_goldorak),a
	ld		hl,(posx_goldorak)
	dec 	hl : dec 	hl
	dec 	hl : dec 	hl
	dec 	hl : dec 	hl
	ld		a,h
	cp		a,collision_goldo_gauche
	call	z,stop_gauche
	ld 		(posx_goldorak),hl
	call	goldo_affiche
	jp		retour_test_des_directions2
stop_gauche
	inc 	hl:inc hl:inc hl
	inc 	hl:inc hl:inc hl
	ret
charge_sprh_gauche
	ld	a,2
	ld	(sprh_a_charger),a
	ld	hl,(Tbl_sprh_direction+2)
	ld	(sprh_goldorak),hl
	ld	hl,(Tbl_sprh_direction2+2)
	ld	(sprh_goldorak2),hl
	jr	retour_charge_sprh_gauche
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
goldo_droite
	xor		a
	ld		(sprh_a_charger),a
	ld		a,(direction_goldorak)
	cp		a,val_dir_haut
	jr		z,charge_sprh_droite
	cp		a,val_dir_bas
	jr		z,charge_sprh_droite
	cp		a,val_dir_gauche
	jr		z,charge_sprh_droite
retour_charge_sprh_droite	
	ld		a,val_dir_droite
	ld		(direction_goldorak),a
	ld		hl,(posx_goldorak)
	inc 	hl : inc 	hl
	inc 	hl : inc 	hl
	inc 	hl : inc	hl
	push	hl
	or		a
	ld		de,collision_goldo_droite
	sbc		hl,de
	jr		z,stop_droite
	pop		hl
ret_stp_dr
	ld 		(posx_goldorak),hl
	call	goldo_affiche
	jp		retour_test_des_directions2
stop_droite
	pop		hl
	dec 	hl:dec hl:dec hl
	dec 	hl:dec hl:dec hl
	jp		ret_stp_dr
charge_sprh_droite
	ld	a,3
	ld	(sprh_a_charger),a
	ld	hl,(Tbl_sprh_direction+4)
	ld	(sprh_goldorak),hl
	ld	hl,(Tbl_sprh_direction2+4)
	ld	(sprh_goldorak2),hl
	jr	retour_charge_sprh_droite
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
; ///////////////////////////////////////////////////////////////////////////
