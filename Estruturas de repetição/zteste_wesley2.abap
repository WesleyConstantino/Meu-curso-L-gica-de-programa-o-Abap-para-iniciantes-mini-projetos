REPORT zteste_wesley2.

*Types:
TYPES: BEGIN OF ty_paciente,
          nome       TYPE c LENGTH 30,
          rg(10)     TYPE c,
          num_quarto TYPE i,
          data_alta  TYPE d,
     END OF ty_paciente.

*Tabelas internas:
DATA gt_paciente TYPE TABLE OF ty_paciente.

*Workareas:
DATA wa_paciente TYPE ty_paciente.

*Variáveis:
DATA gv_count TYPE i.

START-OF-SELECTION.

  wa_paciente-nome       = 'Luke Skywalker'.
  wa_paciente-rg         = 'X001009-9'.
  wa_paciente-num_quarto = 1200.
  wa_paciente-data_alta  = '10052026'.
  APPEND wa_paciente TO gt_paciente.
  CLEAR wa_paciente.

  wa_paciente-nome       = 'Mestre Yoda'.
  wa_paciente-rg         = '1001002-1'.
  wa_paciente-num_quarto = 502.
  wa_paciente-data_alta  = '15052026'.
  APPEND wa_paciente TO gt_paciente.
  CLEAR wa_paciente.

*Loop at:
  LOOP AT gt_paciente INTO wa_paciente.

  ENDLOOP.

*Loop at com WHERE:
  LOOP AT gt_paciente INTO wa_paciente WHERE nome = 'Mestre Yoda' AND
                                             rg   = '1001002-1'.

  ENDLOOP.

*While:
  WHILE gv_count < 3.

    gv_count = gv_count + 1.

  ENDWHILE.

*Do:
  DO 2 TIMES.

  ENDDO.

*Loops infinitos:
  DO.

  ENDDO.

  WHILE 2 EQ 2.

  ENDWHILE.

*Parando um loop (EXIT):
  DO.

    IF gv_count EQ 2.
      EXIT.
    ENDIF.

  ENDDO.

*Interrompendo o loop atual (CONTINUE):
  LOOP AT gt_paciente INTO wa_paciente.

    IF wa_paciente-nome = 'Mestre Yoda'.
      CONTINUE.
    ENDIF.

    WRITE / wa_paciente-nome.

  ENDLOOP.
