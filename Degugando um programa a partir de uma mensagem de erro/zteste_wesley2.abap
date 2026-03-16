report zteste_wesley2.

data lv_resultado type i.

selection-screen begin of block b1.

parameters p_mult type i.

selection-screen end of block b1.

start-of-selection.

if p_mult is initial.
  message 'Valor não aceito!' type 'S' display like 'E'.
else.
  lv_resultado = p_mult / 2.
endif.
