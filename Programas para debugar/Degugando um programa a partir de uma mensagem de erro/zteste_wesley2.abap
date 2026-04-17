report zteste_wesley2.

DATA lv_resultado TYPE i.

SELECTION-SCREEN BEGIN OF BLOCK b1.

  PARAMETERS p_mult TYPE i.

SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.

  IF p_mult IS INITIAL.
    MESSAGE 'Valor não aceito!' TYPE 'S' DISPLAY LIKE 'E'.
*    MESSAGE s000(zrtch) DISPLAY LIKE 'E'.
  ELSE.
    lv_resultado = p_mult / 2.
  ENDIF.
