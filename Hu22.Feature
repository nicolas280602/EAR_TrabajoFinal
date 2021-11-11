Feature:HU22:Como médico quiero ver las placas que el paciente subió a la app para poder evaluarlas y realizar el posterior diagnóstico    
    Scenario: E01: Vista previa de placas existentes 
    Given que me encuentro en la sección de información del paciente="Perfil"
    When selecciono una de sus placas="Placa1.jpg" subidas al aplicativo
    Then la app abre un visualizador de alta resolución de la placa.
Examples:
    |    Boton   |Seccion|
    |  Placa1.jpg| Perfil|

Scenario: E02: Vista previa de placas inexistentes
    Given que me encuentro en la sección deinformación del paciente="Perfil"
    When  no hay una placa que seleccionar=""
    Then  la app muestra un mensaje ="No hay placas que seleccionar".
Examples:
    |   Boton   |     Seccion       |      Mensaje                |
    |           | historial de citas|No hay placas que seleccionar|