*&---------------------------------------------------------------------*
*& Report ZTESTE_WESLEY
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zteste_wesley.

DATA gv_result TYPE c.

SELECTION-SCREEN BEGIN OF BLOCK b1.
  PARAMETERS p_desc TYPE c.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.

  INCLUDE zteste_wesley_include.

  PERFORM exibe_resultado.

FORM exibe_resultado.
  WRITE: / gv_result.
ENDFORM.
