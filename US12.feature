
Feature:US12:Como cliente quiero visualizar la receta emitida por mi médico para tener conocimiento de cuál será mi tratamiento   
    Scenario: E01: Historial de recetas médicas existentes.
    Given que me encuentro en la sección de historial de recetas médicas="Recetas emitidas"
    When  seleccione alguna de mis recetas médicas emitidas="Receta1"
    Then se muestra una vista previa del documento y la opción de imprimir y descargar="Imprimir receta".
Examples:
    |       Seccion      |   Receta   |       Boton      | 
    |  Recetas emitidas  |   Receta1  |  Imprimir receta |

Scenario: E02: Historial de recetas médicas inexistentes
    Given  que me encuentro en la sección de historial de recetas médicas="Recetas emitidas"
    When   no haya recetas médicas por visualizar=" "
    Then  se muestra un mensaje="No tiene recetas médicas".
Examples:
    |       Seccion      |   Receta  |            Mensaje            |
    |  Recetas emitidas  |           |   No tiene recetas médicas     |








