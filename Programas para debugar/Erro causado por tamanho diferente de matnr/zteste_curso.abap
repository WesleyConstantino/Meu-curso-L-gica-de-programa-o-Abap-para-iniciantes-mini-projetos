*&---------------------------------------------------------------------*
*& Report ZTESTE_CURSO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zteste_curso.

DATA lv_matnr TYPE matnr VALUE '100007890098700000999'.

SELECTION-SCREEN BEGIN OF BLOCK b1.

  PARAMETERS p_matnr(18) TYPE c.

SELECTION-SCREEN END OF BLOCK b1.

INITIALIZATION.
p_matnr = lv_matnr.

START-OF-SELECTION.

 lv_matnr = p_matnr.

WRITE lv_matnr.
