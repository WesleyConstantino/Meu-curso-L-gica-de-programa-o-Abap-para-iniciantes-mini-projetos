REPORT zteste_wesley2.

DATA gv_type(2) TYPE c VALUE 'S'.

START-OF-SELECTION.

  IF gv_type EQ 'S'.
    MESSAGE 'Mensagem de sucesso!' TYPE 'S'.
  ELSEIF gv_type = 'E'.
    MESSAGE 'Mensagem de erro!' TYPE 'E'.
  ELSE.
    MESSAGE 'Tipo de mensagem não exitente!' TYPE 'W'.
  ENDIF.
