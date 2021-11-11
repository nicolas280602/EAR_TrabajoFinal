Feature:HU04:Como cliente quiero agendar una cita para consultar los resultados de mis placas   
    Scenario: E01: Registrar cita correctamente 
    Given  que me encuentro en el formulario de citas="Citas"
    When  lleno el formulario con todos los campos correctos y presiono el botón="Agendar Cita"
    Then se muestra un mensaje de confirmación="Cita creada correctamente".
Examples:
    |  Seccion |         Boton         |       Mensaje           |
    |  Citas   |       Agendar Cita    |Cita creada correctamente|

Scenario: E02: Registrar cita erróneamente
    Given que me encuentro en el formulario de citas="Citas"
    When   lleno el formulario con todos los campos incorrectos y presiono el botón="Agendar Cita"
    Then  se muestra una alerta en el campo erróneo="seleccionar una fecha disponible".
Examples:
    |  Seccion |         Boton         |            Mensaje                |
    |  Citas   |       Agendar Cita    |  seleccionar una fecha disponible |
