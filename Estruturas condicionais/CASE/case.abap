REPORT zteste_wesley2.

DATA gv_type(2) TYPE c VALUE 'S'.

START-OF-SELECTION.

  CASE gv_type.
    WHEN 'S'.
      MESSAGE 'Mensagem de sucesso!' TYPE 'S'.
    WHEN 'E'.
      MESSAGE 'Mensagem de erro!' TYPE 'E'.
    WHEN OTHERS.
      MESSAGE 'Tipo de mensagem não exitente!' TYPE 'W'.
  ENDCASE.
