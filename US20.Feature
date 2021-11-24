Feature: US20: Como paciente quiero registrar mi placa en la app para poder recibir un diagnóstico o tratamiento

Scenario: S01: Subir placas a la app
Given que me encuentro en la sección="Placas del paciente" de la app
When he agregado alguna placa y presiono el boton="Subir placas"
Then aparece un mensaje de confirmación="Su placa se subió exitosamente"
Examples:
| Sección             | Boton        | Mensaje                        |
| Placas del paciente | Subir Placas | Su placa se subió Exitosamente |

Scenario: S02: Agregar placa al envío
Given que me encuentro en la sección="Placas del paciente" de la app
When seleccione una de mis placas="Imagen1.jpg" y presione el botón="Agregar"
Then aparecerá mi placa como imagen en la app
Examples:
| Botón  | Placa     | Sección            |
| Agregar| Imagen.jpg| Placas del paciente|

Scenario: S03: Eliminar placa del envío
Given que me encuentro en la sección="Placas del paciente" de la app
When cuando selecciono una placa="Imagen1.jpg" y presiono el botón="Eliminar"
Then el archivo se elimina del envío
Examples:
|Sección             | Botón   | Placa       |
|Placas del paciente | Eliminar| Imagen1.jpg |

