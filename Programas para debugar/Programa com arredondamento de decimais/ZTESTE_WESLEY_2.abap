*&---------------------------------------------------------------------*
*& Report ZTESTE_WESLEY_2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTESTE_WESLEY_2.

TYPES: BEGIN OF ty_table,
    empresa  TYPE bukrs,
    montante TYPE p LENGTH 3 DECIMALS 2,
  END OF ty_table.

DATA: gv_val_repass TYPE p LENGTH 3 DECIMALS 1,
      it_table      TYPE TABLE OF ty_table,
      wa_table      LIKE LINE OF  it_table.

SELECTION-SCREEN BEGIN OF BLOCK b1.
  PARAMETERS p_val TYPE p LENGTH 3 DECIMALS 2.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.
gv_val_repass = p_val.

wa_table-empresa  = '001'.
wa_table-montante = gv_val_repass.
APPEND wa_table TO it_table.
CLEAR wa_table.

LOOP AT it_table INTO wa_table.
 WRITE: / wa_table-empresa,
          wa_table-montante.
ENDLOOP.
