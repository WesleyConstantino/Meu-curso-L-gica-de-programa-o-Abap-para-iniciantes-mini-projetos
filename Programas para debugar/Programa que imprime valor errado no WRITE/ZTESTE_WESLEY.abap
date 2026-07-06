*&---------------------------------------------------------------------*
*& Report ZTESTE_WESLEY
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zteste_wesley.

DATA: gv_result TYPE p LENGTH 3 DECIMALS 2,
      gv_total  TYPE p LENGTH 3 DECIMALS 2 VALUE '100.00'.

SELECTION-SCREEN BEGIN OF BLOCK b1.
  PARAMETERS p_desc TYPE p LENGTH 3 DECIMALS 2.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
PERFORM calc.

FORM calc.
  INCLUDE zteste_wesley_include.
  PERFORM exibe_resultado.
ENDFORM.

FORM exibe_resultado.
  WRITE: / gv_result.
ENDFORM.
