*&---------------------------------------------------------------------*
*& Include          ZTESTE_WESLEY_INCLUDE
*&---------------------------------------------------------------------*
IF p_desc IS NOT INITIAL.

  gv_result = gv_result - p_desc.

  CLEAR p_desc.

ENDIF.
