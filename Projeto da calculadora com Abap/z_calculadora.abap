REPORT z_calculadora.

DATA: gv_result TYPE p DECIMALS 2,
      gv_operacao(13) TYPE c.

*Tela de seleção:
SELECTION-SCREEN BEGIN OF BLOCK b1.
"Parameters:
PARAMETERS: p_numb1 TYPE i,
            p_numb2 TYPE i.
"Radiobuttons:
PARAMETERS: rb_adi RADIOBUTTON GROUP gr1 DEFAULT 'X',
            rb_sub RADIOBUTTON GROUP gr1,
            rb_div RADIOBUTTON GROUP gr1,
            rb_mul RADIOBUTTON GROUP gr1.
SELECTION-SCREEN END OF BLOCK b1.

*Evento:
START-OF-SELECTION.
  IF p_numb1 IS NOT INITIAL AND p_numb2 IS NOT INITIAL.
    PERFORM realiza_calculo.
    PERFORM exibe_resultado.
  ELSE.
    MESSAGE 'Preencha os parâmetros!' TYPE 'S' DISPLAY LIKE 'E'.
  ENDIF.

FORM realiza_calculo.

*Adição:
  IF rb_adi IS NOT INITIAL.
    gv_operacao = 'Adição'.
    gv_result = p_numb1 + p_numb2.
*Subitração:
  ELSEIF rb_sub EQ 'X'.
    gv_operacao = 'Subtração'.
    gv_result = p_numb1 - p_numb2.
*Divisão:
  ELSEIF rb_div = 'X'.
    gv_operacao = 'Divisão'.
    gv_result = p_numb1 / p_numb2.
*Multiplicação:
  ELSEIF rb_mul <> ' '.
    gv_operacao = 'Multiplicação'.
    gv_result = p_numb1 * p_numb2.
  ENDIF.

ENDFORM.                    "realiza_calculo

FORM exibe_resultado.

  WRITE: 'O resultado da', gv_operacao,'é:',gv_result.

ENDFORM.
