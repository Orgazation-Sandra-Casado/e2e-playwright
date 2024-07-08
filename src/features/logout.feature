Feature: Logout on SauceDemo

  @logout
  Scenario: Logout on SauceDemo
    Given the user is on SauceDemo login page
    When the user fill username with "standard_user"
    And the user fill password with "secret_sauce"
    And the user press login button
    When the user clicks in menu button
    And he clicks in logout button
    Then the user should see the homepage
