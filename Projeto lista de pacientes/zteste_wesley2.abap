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

SELECTION-SCREEN BEGIN OF BLOCK b1.
PARAMETERS: p_nome       TYPE c LENGTH 30,
            p_rg(10)     TYPE c,
            p_n_qua TYPE i,
            p_dt_alt TYPE d.
SELECTION-SCREEN END OF BLOCK b1.

INITIALIZATION.
  wa_paciente-nome       = 'Luke Skywalker'.
  wa_paciente-rg         = 'X001009-9'.
  wa_paciente-num_quarto = 1200.
  wa_paciente-data_alta  = '20260510'.
  APPEND wa_paciente TO gt_paciente.
  CLEAR wa_paciente.

START-OF-SELECTION.
  PERFORM: preenche_tabela,
           escreve_tabela.

*&---------------------------------------------------------------------*
*&      Form  preenche_tabela
*&---------------------------------------------------------------------*
FORM preenche_tabela.

 IF p_nome IS NOT INITIAL AND p_rg IS NOT INITIAL AND
    p_n_qua IS NOT INITIAL AND p_dt_alt IS NOT INITIAL.

  wa_paciente-nome       = p_nome.
  wa_paciente-rg         = p_rg.
  wa_paciente-num_quarto = p_n_qua.
  wa_paciente-data_alta  = p_dt_alt.

  APPEND wa_paciente TO gt_paciente.
  CLEAR wa_paciente.

  ELSE.
   MESSAGE TEXT-001 TYPE 'W' DISPLAY LIKE 'E'.
  ENDIF.

ENDFORM.                    "preenche_tabela

*&---------------------------------------------------------------------*
*&      Form  escreve_tabela
*&---------------------------------------------------------------------*
FORM escreve_tabela.
  DATA lv_n_paciente TYPE i.

  LOOP AT gt_paciente INTO wa_paciente.
    "Contador:
    lv_n_paciente = lv_n_paciente + 1.

    WRITE:/ 'Paciente', lv_n_paciente, ':'.
    WRITE:/ wa_paciente-nome, wa_paciente-rg, wa_paciente-num_quarto,
            wa_paciente-data_alta.
    WRITE /.
  ENDLOOP.

ENDFORM.                    "escreve_tabela
