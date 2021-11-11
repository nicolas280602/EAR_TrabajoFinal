Feature:HU14:Como cliente quiero imprimir la receta médica para tener un formato físico   
    Scenario: E01: Imprimir receta médica con impresora vinculada
    Given que me encuentro en la visualización previa de una receta="Recetas emitidas"
    When seleccione la opción=“imprimir receta” y tengo una impresora vinculada="HP 310"
    Then el dispositivo móvil utilizará la impresora y comenzará la impresión.
Examples:
    |       Seccion       |     opcion    |       Impresora           |   
    |  Recetas emitidas   |imprimir receta|         HP 310            |

Scenario: E02: : Imprimir receta médica sin impresora vinculada
    Given que me encuentro en la visualización previa de una receta
    When seleccione la opción=“imprimir receta” y no tengo una impresora vinculada=""
    Then  se mostrará un mensaje=“No se encontró un dispositivo de impresión vinculado”.
Examples:
    |       Seccion       |    opcion     |  Impresora |                    Mensaje                              |  
    |  Recetas emitidas   |imprimir receta|            | No se encontró un dispositivo de impresión vinculado | 