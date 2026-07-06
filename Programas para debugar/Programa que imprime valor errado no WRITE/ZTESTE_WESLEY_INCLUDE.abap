*&---------------------------------------------------------------------*
*& Include          ZTESTE_WESLEY_INCLUDE
*&---------------------------------------------------------------------*
DATA lv_dec TYPE p LENGTH 5 DECIMALS 2.

IF p_desc IS NOT INITIAL.

  gv_result = gv_total.
  lv_dec    = gv_result * p_desc.
  gv_result = gv_result - lv_dec.
  CLEAR p_desc.

ENDIF.
