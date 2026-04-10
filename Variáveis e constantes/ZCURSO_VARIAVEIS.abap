*&---------------------------------------------------------------------*
*& Report ZCURSO_VARIAVEIS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZCURSO_VARIAVEIS.

*Variáveis:
DATA: gv_nome      TYPE string,
      gv_idade(2)  TYPE i,
      gv_datanasc  TYPE d,
      gv_hora      TYPE t,
      gv_id        TYPE n VALUE 123,
      gv_salario   TYPE f VALUE '10.000',
      gv_taxa_hora TYPE p DECIMALS 2 VALUE '110.00',
      gv_textlongo TYPE x LENGTH 70.

*Constantes:
CONSTANTS: gc_empresa TYPE c VALUE 'SAP',
           gc_verba   TYPE p VALUE '1000.00'.

START-OF-SELECTION.

  gv_nome     = 'Wesley'.
  gv_idade    = 29.
  gv_datanasc = '19970226'.
  gv_hora     = '0730'.
  gv_id       = '321'.
  gv_salario  = '12.000'.
  gv_textlongo = 'Texto longo, Texto longo, Texto longo, Texto longo'.

  MOVE 'Wesley' TO gv_nome.

  WRITE '07:3000' TO gv_hora.

  WRITE: / 'Nome:', gv_nome.
  WRITE: / 'Idade', gv_idade.
  WRITE: / 'Data de nascimento:', gv_datanasc.
  WRITE: / 'Hora:', gv_hora.
  WRITE: / 'ID:', gv_id.
  WRITE: / 'Salário:', gv_salario.
  WRITE: / 'Taxa hora:', gv_taxa_hora.
  WRITE: / 'Texto longo:', gv_textlongo.
