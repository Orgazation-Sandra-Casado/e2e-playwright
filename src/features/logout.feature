Feature: Logout on SauceDemo

  @logout
  Scenario: Logout on SauceDemo
    Given the user is on SauceDemo login page
    When the user clicks in menu button
    And he clicks in logout button
    Then the user should see the homepage
