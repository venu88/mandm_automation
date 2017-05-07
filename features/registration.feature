Feature: As a new user
  In order to order items
  I should be able to register on to mandm

  Scenario: create a new account
  Given I am on the registration page
    And I enter necessary information to create an account
    When I click on the button with class "disableableContinueButton"
    Then I should see "hi venu" message on the page

    Scenario: Login to user and check user account details
      Given I am on the registration page
      And I enter necessary information to create an account
      When I click on the button with class "disableableContinueButton"
      And I click on link with id "myaccount"
      And I click on the link customer name
      And I should see the firstname which I registered

     Scenario: Login to user my user account and place a order
      Given  I am on the mandm homepage
       And I click on link with id "myaccount"
       And I enter "vgr.shu@gmail.com" into the textfield with id "EmailAddress"
       And I enter "India2010" into the textfield with id "Password"
       Then I click on the button with class "disableableContinueButton"

       Scenario: creating new account with invalid username
         Given  I am on the mandm homepage
         And I click on link with id "myaccount"
         And I enter "venugopalreddy.shu@gmail.com" into the textfield with id "EmailAddress"
         And I click on the radio button with id "CurrentCustomer_NoCreateNew"
         And I click on the button with class "disableableContinueButton"
         And I c




