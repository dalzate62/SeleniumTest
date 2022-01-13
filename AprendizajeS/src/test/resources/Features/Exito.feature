Feature: Ejercicio para la entrevista
  Exito carrito de compras

  Scenario: Carrito de compras
    Given I Got to Site https://www.google.com/?hl=es
    Then I Load The DOM Information EjercicioExito.json
    And  I Set Busqueda With Test falabella
    And  I Do Click In Element Falabella
    And I Do Click In Element PaginaFalabella
    And I Do Click In Element CompraObjeto
    And I Do Click In Element ComprarBlusa
    And I Do Click In Element Talla
    And I Do Click In Element AgregarAlaBolsa
    And I Do Click In Element IrBolsa
    And I Do Click In Element SumarOtro
    And I Do Click In Element Proteger
    And I Do Click In Element SeleccionProteger
    And I Do Click In Element Comprar
    And I wait 5 seconds
    And I take screenshoot: ValidacionCompra