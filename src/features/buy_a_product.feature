Feature: Buy a product

  Background:
    Given the user is on SauceDemo login page

  @buyproduct
  Scenario: Buy a product
    When the user fill username with "standard_user"
    And the user fill password with "secret_sauce"
    And the user press login button
    And the user add to cart "Sauce Labs Backpack"
    And the user click on the cart
    Then the user should see "Sauce Labs Backpack" product on the cart
    When the user press checkout
    And the user fill form with name "Sandra", last name "Casado" and postal code "12345"
    And the user press continue button
    Then the user should see the product "Sauce Labs Backpack" and total price "32.39"
    And the user press finish
    Then the user should see the buy complete message "Thank you for your order!"

  Scenario: Buy a product without fill personal dates
    When the user fill username with "standard_user"
    And the user fill password with "secret_sauce"
    And the user press login button
    And the user add to cart "Sauce Labs Backpack"
    And the user click on the cart
    Then the user should see "Sauce Labs Backpack" product on the cart
    When the user press checkout
    And the user fill form with name "", last name "" and postal code ""
    And the user press continue button
    Then the user should see the error message "Error: First Name is required"

  Scenario: Buy a product and continue shopping
    When the user fill username with "standard_user"
    And the user fill password with "secret_sauce"
    And the user press login button
    And the user add to cart "Sauce Labs Backpack"
    And the user click on the cart
    Then the user should see "Sauce Labs Backpack" product on the cart
    And the user click continue shopping button
    Then the user should see the products section

  Scenario: Buy a product and remove it
    When the user fill username with "standard_user"
    And the user fill password with "secret_sauce"
    And the user press login button
    And the user add to cart "Sauce Labs Backpack"
    And the user click on the cart
    Then the user should see "Sauce Labs Backpack" product on the cart
    And the user click in remove button
    Then the product will be removed from the cart