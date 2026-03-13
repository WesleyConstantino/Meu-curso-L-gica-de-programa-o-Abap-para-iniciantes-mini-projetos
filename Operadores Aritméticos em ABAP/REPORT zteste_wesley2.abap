REPORT zteste_wesley2.

DATA lv_resultado TYPE i.

START-OF-SELECTION.

*Adição:
  lv_resultado = 10 + 5.
  WRITE:/ 'Adição:', lv_resultado.

*Subitração:
  lv_resultado = 10 - 5.
  WRITE:/ 'Subitração:', lv_resultado.

*Multiplicação:
  lv_resultado = 5 * 2.
  WRITE:/ 'Multiplicação:', lv_resultado.

*Divisão:
  lv_resultado = 11 / 2.
  WRITE:/ 'Divisão:', lv_resultado.

*Resto da divisão:
  lv_resultado = 11 MOD 2.
  WRITE:/ 'Resto da divisão:', lv_resultado.

*Divisão inteira:
  lv_resultado = 11 DIV 2.
  WRITE:/ 'Divisão inteira:', lv_resultado.
