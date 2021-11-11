Feature:HU15:Como médico quiero inicializar una videoconferencia para que la comunicación del diagnóstico al paciente sea óptima    
    Scenario: E01: Registrar videoconferencia
    Given que me encuentro en el registro de citas del día="Registros de citas"
    When quiero registrar una sala para tal fecha, presiono el botón="Crear videoconferencia".
    Then  a app generará una sala virtual para poder reunirse con el paciente en la fecha indicada="9/11/21".
Examples:
    |          Boton         |    sala    |       Seccion      |
    | Crear Videoconferencia |  09/11/21  |  "Registro de citas|

Scenario: E02: Habilitar videoconferencia ya existen
    Given que me encuentro en el registro de citas del día="Registros de citas"
    When faltan 5 min para empezar la reunión y le doy al botón="Acceso Libre"
    Then la app dejará ingresar al cliente="Jaime Luis"
Examples:
    |     Boton1    |        Usuario          |      Seccion      |
    | Acceso Libre  |      Jaime Luis         | Registro de citas |