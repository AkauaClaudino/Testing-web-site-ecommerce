Feature: Buying some clothes
  
   I want to buy clothes and spend my money


Scenario: Buying clothe

    Given I am logged into my account
    And I choose one clothe
    When I execute all steps to the end
    Then I see the message "Your order on My Store is complete."


Scenario: Buying clothes

    Given I am logged into my account
    And I choose some clothes
    When I execute all steps to the end
    Then I see the message "Your order on My Store is complete."