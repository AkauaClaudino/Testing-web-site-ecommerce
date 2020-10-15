Feature: Access my account
  
   I want to do login, and access my account


Scenario: Successful login
    Given I want access my account on the home page
    When  I enter email and password in form login
    And  I click in Sign in
    Then My account text must be shown

Scenario: Unsuccessful login
      Given I want access my account on the home page
      When I enter an invalid email and password in form login
      And  I click in Sign in
      Then show a message and does not sign in


