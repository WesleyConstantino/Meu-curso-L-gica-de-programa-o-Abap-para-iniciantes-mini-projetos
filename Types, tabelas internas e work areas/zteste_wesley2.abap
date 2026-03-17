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
"DATA wa_paciente LIKE LINE OF gt_paciente.
