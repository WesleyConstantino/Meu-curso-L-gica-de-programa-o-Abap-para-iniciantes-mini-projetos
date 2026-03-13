REPORT zteste_wesley2.

DATA gv_type(10) TYPE c VALUE 'Sucesso'.

START-OF-SELECTION.

  IF gv_type EQ 'S' OR gv_type EQ 'Sucesso'.
    MESSAGE 'Mensagem de sucesso!' TYPE 'S'.
  ELSE.
    MESSAGE 'Tipo de mensagem não exitente!' TYPE 'W' DISPLAY LIKE 'S'.
  ENDIF.
