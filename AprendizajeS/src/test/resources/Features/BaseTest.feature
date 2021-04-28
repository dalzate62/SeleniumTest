Feature: Examples
  optional description of the feature

  Background:
    Given I set UserEmail value in Data Scenario

  @urlsinparametros
  Scenario: Get Sites
    Given Sitio sin parametro
    Then I Load The DOM Information azlogin.json
    And I Save text of Titulo as Scenario Context
    And I set Usuario with key value Titulo.text

  @url
  Scenario: Get Url
    Given I Got to Site https://www.advantageonlineshopping.com/#/
    Then I Load The DOM Information azlogin.json
    And I Do Click In Element Reguistro
    And I Do Click In Element Reguis
    And I Set Usuario With Test dalzate
    And I Set Email With Test daniel.alzte@gmail.com
    And I Set Contrasena With Test Daniel1
    And I Set ConfirContrasena With Test Daniel1
    And I Set PrimerNom With Test Daniel
    And I Set SegundoNom With Test Gustavo
    And I Set NumeroTel With Test 1234567
    And I Set Pais With Test Colombia
    And I Set Direccion With Test calle 100
    And I Set Staprore With Test 15
    And I Set CodigoPostal With Test 1
    And I Do Click In Element Aceptar
    And I Do Click In Element Ingresar

  @navegador
  Scenario: I do utility select of navegator
    Given I Got to Site http://localhost:8080/NewAZ/Login/
    Then I Load The DOM Information azlogin.json
    And I Do Click In Element Reguistro
    And I Do Click In Element Reguis
    And I Set text Colombia in dropdown Pais
    And I Set index 03 in dropdown Pais

  @mensaje
  Scenario: I do see message error
    Given I Got to Site https://www.spotify.com/co/signup/
    Then I Load The DOM Information azlogin.json
    And I Set Email With Test dasdas
    Then I check if Mensaje error message is false

  @checkbox
  Scenario: I check CheckBox
    Given I Got to Site https://www.spotify.com/co/signup/
    Then I Load The DOM Information azlogin.json
    And I check the checkbox having Reguis
    And I check the checkbox having Reguis

  @clickamazon
  Scenario: Click Cuenta Amazon
    Given I Got to Site https://www.amazon.com/
    Then I Load The DOM Information azlogin.json
    And I Do Click in JS element Cuenta
    And I wait for element Mis pedidos

  @scroll
  Scenario: Scroll to element Amazon
    Given I Got to Site https://www.amazon.com/
    Then I Load The DOM Information azlogin.json
    And I scroll to element Sobre Amazon
    And I scroll to top of pages
    And I wait for element Sobre Amazon

  @newtab
  Scenario: Open New Tab
    Given I Got to Site https://www.amazon.com/
    And I open new tab with URL https://es-la.facebook.com/
    And I go to Facebook window
    And I go to Principal window
    And I go to Facebook window

  @alerts
  Scenario: Alerts
    Given I Got to Site https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert
    Then I Load The DOM Information azlogin.json
    And I switch to Frame: Frame1
    And I Do Click In Element Reguistro
    Then I accept alert
    And I wait 5 seconds

  @screenshoot
  Scenario: Take a screenshot
    Given I Got to Site https://www.w3schools.com/jsref/tryit.asp?filename=tryjsref_alert
    And I take screenshoot: HolyScreen
    And I attach a Screenshot to Report Reporte

  @asserts
  Scenario: I Asserts
    Given I Got to Site https://www.spotify.com/co/signup/
    Then I Load The DOM Information azlogin.json
    Then Check if email error Not is Displayed
    And I Set Email With Test dasdas
    And I Do Click In Element Contrasena
    #Then Assert if email error contains text ejemplo@email.com
    #Then Assert if email error is equal to Este correo electrónico no es válido. Asegúrate de que tenga un formato como este: ejemplo@email.com
    #Then Check if email error is NOT contains text Covid
    Then Assert if email error is Displayed

