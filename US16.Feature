Feature: US16:Como paciente quiero ingresar a la videoconferencia para poder asistir a la reunión con el médico y recibir mi diagnóstico

Scenario: S01: Ingresar a videoconferencia habilitada
Given que me encuentro en el historial de citas="Citas"
When ya es la hora de la cita y selecciono la opción="Unirse a la videoconferencia" y la sala "09/11/21" se encuentra habilitada
Then la app me une a la videoconferencia creada por el médico
Examples:
|           Boton              |    sala    | Seccion |
| Unirse a la videoconferencia |  09/11/21  |  Citas  |

Scenario: S02: Ingresar a videoconferencia inhabilitada
Given que me encuentro en el historial de citas="Citas"
When no es la hora de la cita y selecciono la opción="Unirse a la videoconferencia" y la sala no está habilitada
Then la app muestra un mensaje="Espere a que su médico habilite la sala"
Examples:
|           Boton              |Seccion|               Mensaje                 |
| Unirse a la videoconferencia | Citas |Espere a que su médico habilite la sala|
