Feature: registar ecommerce
  
   I want register an account for buy clothes and everything i want


Scenario: registering valid account
 
 Given I already on the page
 When  I click Sign in 
 And   I enter my email  and click on create an account 
 Then  I insert my personal data and click on register
 Then  Authentication page must be shown

Scenario: registering invalid account
  
   Given I already on the page
   When  I click Sign in
   And   I enter an invalid email and click on create an account 
   Then   Authentication page must not  be shown
    

   