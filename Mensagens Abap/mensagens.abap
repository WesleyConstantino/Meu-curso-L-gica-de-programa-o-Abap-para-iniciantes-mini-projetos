REPORT zteste_wesley2.

DATA gv_type(2) TYPE c.

SELECTION-SCREEN BEGIN OF BLOCK b1.
  PARAMETERS p_type(2) TYPE c.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.

gv_type = p_type.

CASE gv_type.
  WHEN 'S'.
   MESSAGE 'Mensagem de sucesso!' TYPE 'S'.
  WHEN 'E'.
   MESSAGE 'Mensagem de erro!' TYPE 'E'.
  WHEN 'W'.
   MESSAGE 'Mensagem de aviso!' TYPE 'W'.
  WHEN 'I'.
   MESSAGE 'Mensagem de informação!' TYPE 'I'.
  WHEN 'A'.
   MESSAGE 'Mensagem de about!' TYPE 'A'.
  WHEN 'X'.
   MESSAGE 'Mensagem de erro crítico!' TYPE 'X'.
  WHEN 'ES'.
   MESSAGE 'Mensagem de erro com sucesso!' TYPE 'E' DISPLAY LIKE 'S'.
  WHEN 'EI'.
   MESSAGE 'Mensagem de erro com informação!' TYPE 'E' DISPLAY LIKE
'I'.
  WHEN 'SW'.
   MESSAGE 'Mensagem de sucesso com aviso!' TYPE 'S' DISPLAY LIKE 'W'.
  WHEN OTHERS.
   MESSAGE 'Tipo de mensagem não exitente!' TYPE 'W'.
ENDCASE.
