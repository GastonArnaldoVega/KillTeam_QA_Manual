Feature: Verificación de funcionalidad en Kill Team - Warhammer Community

  # Regression Testing
  Scenario: Búsqueda de comandos no vigentes
    Given que estoy en la página de "Kill Team - Warhammer Community"
    When escribo "Caballeros Grises" o "Compendium" en el campo de búsqueda
    Then no debería poder descargar ningún archivo o reglas asociadas a los comandos no vigentes

  # Equivalence Partitioning Testing
  Scenario: Búsqueda del comando Kasrkin sin importar el uso de mayúsculas
    Given que estoy en la página de "Kill Team - Warhammer Community"
    When escribo "KASRKIN", "kasrkin" o "kAsRkIn" en el campo de búsqueda
    Then debería ver los resultados correctos para el comando "Kasrkin" y poder descargar los PDFs relacionados

  # Negative Testing
  Scenario: Búsqueda de Kasrkin con errores ortográficos
    Given que estoy en la página de "Kill Team - Warhammer Community"
    When escribo "K4SRK1N", "karskin" o "niksrak" en el campo de búsqueda
    Then no debería ver resultados relacionados con el comando "Kasrkin"
    And debería haber diferencias en los resultados debido a los errores ortográficos

  # Compatibility Testing
  Scenario: Realizar una búsqueda utilizando las funciones nativas del navegador
    Given que estoy en la página de "Kill Team - Warhammer Community"
    When realizo una búsqueda utilizando las funciones nativas de los navegadores "Google Chrome", "Opera GX" o "Microsoft Edge"
    Then no debería encontrar errores visuales ni impedimentos para ejecutar la búsqueda

  # Localization Testing
  Scenario: Verificación de búsqueda en español para comandos en inglés
    Given que estoy en la página "Kill Team - Warhammer Community" en el idioma "Español"
    When escribo "Angels of Death" en el campo de búsqueda
    Then no debería ver resultados relacionados con "Ángeles de la Muerte"

  # Functional Testing
  Scenario: Abrir PDF del comando seleccionado en una nueva pestaña
    Given que estoy en la página de "Kill Team - Warhammer Community" en la sección de "Team Rules"
    When hago clic en la tarjeta de cualquier "comando"
    Then debería abrirse una nueva pestaña con el PDF correspondiente al comando seleccionado

  # Functional Testing
  Scenario: Verificar la descarga directa de las reglas de los comandos
    Given que estoy en la página de "Kill Team - Warhammer Community" en la sección de "Team Rules"
    When hago clic en el ícono de descarga de cualquier comando
    Then debería generarse una descarga directa del archivo PDF de las reglas del comando seleccionado

  # Usability Testing
  Scenario: Verificar que se recuerde la selección de idioma tras actualizar la página
    Given que estoy en la página "Kill Team - Warhammer Community" en el idioma "Español"
    When realizo un "refresh" o actualización de la página
    Then debería recordar la selección de idioma y no volver al inglés

  # Functional Testing
  Scenario: Verificar que los menús estén plegados tras actualizar la página
    Given que estoy en la página "Kill Team - Warhammer Community" con todos los menús desplegables visibles
    When realizo una actualización o "refresh" de la página
    Then los menús deberían recargarse en su estado plegado

  # Functional Testing
  Scenario: Verificar que los menús se plieguen al cambiar el idioma
    Given que estoy en la página "Kill Team - Warhammer Community" en idioma "Español"
    When cambio el idioma a "Inglés" o "Portugués"
    Then los menús deberían recargarse en su estado plegado
