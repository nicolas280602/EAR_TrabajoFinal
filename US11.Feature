Feature: US11:Como médico quiero emitir una receta médica del paciente que estoy atendiendo para que pueda empezar su tratamiento.

Scenario: S01: Llenar formato de receta
Given que me encuentro en la sección de creación de recetas="Recetas emitidas"
When seleccione el paciente="Jaime Luis" al que estoy atendiendo, elijo la opción de crear una receta, completo el formato de receta y luego presiono el botón "Emitir receta"
Then se muestra un mensaje de confirmación="Receta emitida correctamente"
Examples:
|       Seccion       |   Paciente  |       Boton           |          Mensaje           |
| Recetas emitidas    |  Jaime Luis |     Emitir receta     |Receta emitida correctamente|

Scenario: S02: Llenado incompleto del formato de receta
Given que me encuentro en la sección de creación de recetas="Recetas emitidas"
When seleccione el paciente al que estoy atendiendo="Jaime Luis", elijo la opción de crear una receta, no completo algunos campos del formato de receta  y luego presiono el botón="Emitir receta"
Then se muestra una alerta en los campos que faltan completar="Falta Completar"
Examples:
|     Seccion       |   Paciente  |     Boton           |           Mensaje           |
|  Recetas emitidas |  Jaime Luis |   Emitir receta     |      Falta Completar        |
