


; adresse des palettes en RAM
PALETTE_DECORS_RAM		equ		#0040
PALETTE_HUD_RAM			equ		#0060


; nombre de frame à laquelle les encre sont décrémentées après la mort d'un golgoth
VITESSE_FONDU_DE_SORTIE	equ		15          ; attention ce réglage est fait pour que la musique qui l'accompagne ne boucle pas

; adresse des palettesd en ROM
DEPART_PALETTES			equ		#D500			; #C000
PALETTE_TITLE_SCREEN	equ		DEPART_PALETTES
PALETTE_SCENARIO		equ		DEPART_PALETTES+#20
PALETTE_GAME_OVER		equ		DEPART_PALETTES+#40
PALETTE_SPRITE_HARD		equ		DEPART_PALETTES+#80
PALETTE_DECORS			equ		DEPART_PALETTES+#A0
PALETTE_FIN				equ		DEPART_PALETTES+#D0
PALETTE_INTERLEVEL		equ		DEPART_PALETTES+#100	;#D000
PALETTE_HUD				equ 	DEPART_PALETTES+#120	;#D020
PALETTE_MENU			equ		DEPART_PALETTES+#140
PALETTE_CREDIT			equ		DEPART_PALETTES+#160
PALETTE_METAMORPHOSE	equ		DEPART_PALETTES+#180
PALETTE_SHOP			equ		DEPART_PALETTES+#200
PALETTE_ACTARUS_ALCOR	equ		DEPART_PALETTES+#220

PALETTE_HUD_ALCORAK     equ  #F41d

; les couleurs qui s'affichent dans le border 
COULEUR_DEGAT_BORDER		= #080
COULEUR_BOOM_ENNEMI			= #FFF



; les palettes pour les décords fonds
PALETTE_DECORS_LEVEL1
dw #000,#0F0,#00F,#07F,#121,#251,#3A2,#700,#8F0,#B00,#D70,#EA3,#ED3,#FF3,#F0F,#FEF

PALETTE_DECORS_LEVEL2
DW #060,#0F0,#001,#00F,#108,#380,#60E,#800,#888,#80F,#AAA,#B00,#C0F,#D00,#F0F,#FFF

PALETTE_DECORS_LEVEL3
DW #000,#0F0,#006,#007,#00F,#400,#66F,#800,#80F,#B00,#EC0,#F00,#FF0,#F05,#F66,#F5F

PALETTE_DECORS_LEVEL4
dw #000,#122,#1FF,#232,#242,#461,#581,#681,#692,#9C3,#9D3,#AE3,#B02,#BF3,#CF4,#E46

PALETTE_DECORS_LEVEL5
DW #080,#0F0,#333,#4F0,#444,#666,#6A7,#7F0,#800,#888,#9F0,#999,#BBB,#CCC,#FF0,#FFF

PALETTE_DECORS_LEVEL6
DW #000,#090,#0F0,#008,#00E,#08F,#0FF,#222,#333,#455,#788,#8F0,#83F,#9AA,#FF0,#F8F

PALETTE_DECORS_LEVEL7
DW  #000,#004,#008,#03A,#04C,#05D,#06E,#07F,#08F,#0FF,#50E,#70E,#80F,#B0F,#C0F,#F8F

PALETTE_DECORS_LEVEL8
dw #000,#050,#080,#0A0,#0FF,#0FF,#3F0,#50E,#6F0,#70E,#8F0,#80F,#B0F,#C0F,#FF0,#F8F

PALETTE_DECORS_ESPACE
dw #000,#001,#002,#013,#023,#034,#035,#006,#046,#057,#068,#079,#66F,#6CF,#F00,#F66

PALETTE_DECORS_ESPACE2
dw #000,#001,#002,#013,#023,#034,#035,#006,#046,#057,#068,#079,#66F,#6CF,#F00,#F66
