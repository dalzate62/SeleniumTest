Feature: Entrevista Practica
  optional description of the feature

  @Reguistro
  Scenario: Register in Site
    Given Sitio sin parametro
    Then I Load The DOM Information ElTiempo.json
    And I Do Click In Element Reguistro
    And I Do Click In Element Cancelar
    Then I accept alert
    And I Do Click In Element Reguistro
    And I Set Username With Test dalzate
    And I Set Password With Test dalzate
    And I Set RepeatPassword With Test dalzate
    And I Do Click In Element Gender
    And I Set Address With Test dalzate
    And I Set Billing_Address With Test dalzate
    And I Set text Kerala in dropdown State
    #And I Set State With Test Kerala
    And I Do Click In Element Terms&Conditions
    And I Do Click In Element Register
    Then I accept alert
    And I Do Click In Element Backlogin
    And I Set User With Test dalzate
    And I Set Pass With Test dalzate
    And I Do Click In Element Login
    And I take screenshoot: inicioLogin
