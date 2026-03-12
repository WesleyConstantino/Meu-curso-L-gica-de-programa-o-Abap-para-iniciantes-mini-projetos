report zteste_wesley2.

*Variáveis:
data: gv_nome     type string,
      gv_idade(2) type i,
      gv_datanasc type d,
      gv_hora     type t,
      gv_id       type n value 123,
      gv_salario  type f value '10.000',
      gv_txtlongo type x length 70.
*Constantes:
constants: gc_empresa type c value 'SAP',
           gc_verba   type p value '1000.00'.

*Tela de seleção:
selection-screen begin of block b1.

parameters p_table(25) type c.

selection-screen end of block b1.

*Eventos:
end-of-selection.
  write 'Processo finalizado!'.

load-of-program.
  p_table = 'Evento LOAD-OF-PROGRAM!'.

initialization.
  p_table = 'Evento inicialization!'.

start-of-selection.

at selection-screen.
  if p_table eq 'EVENTO INICIALIZATION!'.
    message 'Digite um valor diferente!' type 'E' display like 'S'.
  endif.

  gv_nome     = 'Wesley'.
  gv_idade    = 29.
  gv_datanasc = 19970226.
  gv_hora     = '073000'.
  gv_id       = '321'.
  gv_salario  = '12.000'.
  gv_txtlongo = 'Texto longo, Texto longo, Texto longo, Texto longo'.
