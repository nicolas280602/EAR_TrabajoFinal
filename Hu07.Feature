Feature:HU07:Como cliente quiero cancelar mi cita para disponerla en otra fecha.   
    Scenario: E01: Postergación de cita exitoso
    Given que me encuentro en la sección de historial de citas="Registro de citas"
    When  elijo una cita="09/11/21", selecciono la opción="postergar cita", agrego la fecha deseada que esté disponible="20/11/21" y presiono el botón “Postergar cita”
    Then se muestra un mensaje="Cita postergada exitosamente".
Examples:
    |       Seccion       |   Citas   |       Boton           |       Mensaje           |
    |  Registro de citas  |  20/11/20 |   postergar cita      |Cita postergada exitosamente|

Scenario: E02: Postergación de cita errónea
    Given que me encuentro en la sección de historial de citas="Registro de citas"
    When  elijo una cita="09/11/21", selecciono la opción postergar cita, agrego la fecha deseada pero no ya está ocupada="18/11/21" y presiono el botón=“Postergar cita”
    Then  se muestra un mensaje que dice="Este horario no está disponible".
Examples:
    |       Seccion       |   Citas   |       Boton           |             Mensaje           |
    |  Registro de citas  |  18/11/21 |   postergar cita      |Este horario no está disponible|