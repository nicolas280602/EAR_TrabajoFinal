Feature: US20: Como paciente quiero registrar mi placa en la app para poder recibir un diagnóstico o tratamiento

Scenario: E01: Subir placa a la app
    Given que me encuentro en la sección principal="Inicio" de la app
    When presiono el botón="Subir placa"
    Then aparece un mensaje de confirmación="su placa se subió exitosamente"
Examples:
    |Seccion | Boton | Mensaje |
    |Inicio | Subir Placa | Su placa se subio Exitosamente |

Scenario: E02: Adjuntar placa a la app
    Given que me encuentro en la sección principal="Inicio" de la app
    When presiono el botón="Adjuntar" para agregar una placa y selecciono la placa="Imagen1.jpg"
    Then aparecerá mi placa como imagen en donde está el boton
Examples:
    | Boton | Seleccion | Seccion |
    | Adjuntar | Imagen.jpg| Inicio |

Scenario: E03: Desadjuntar placa de la app
    Given que me encuentro en la sección principal="Inicio" de la app
    When presiono el botón de "Desadjuntar" del archivo adjuntado="Imagen1.jpg"
    Then el archivo se elimina del envío
Examples:
    |Seccion| Boton | Seccion |
    |Inicio | Desadjuntar | Imagen1.jpg |
