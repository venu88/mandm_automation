Feature: As an MandM customer
  In order to book items
  I should be able to land on the homepage

  Scenario: fresh footwear hero image should show on the homepage
    When I am on the mandm homepage
    Then I should see an image with alt "Fresh Footwear"

    Scenario: Clicking the Fresh Footwear image
      Given I am on the mandm homepage
      And I am a normal user
      When I click on the image with alt "Fresh Footwear"
      Then I must be on a page with "Footwear" h1

      Scenario: Clicking Mens Dropdown Menu
        Given I am on the mandm homepage
        And  I am a normal user
        When I click on link with text "Mens"
        And  I click on span with text "Shop All Mens"
        Then I must be on a page with "Men's Clothing, Footwear & Accessories" h1

        Scenario: Search any item in text field and should come back to homepage
          Given I am on the mandm homepage
          And I am a normal user
          When I enter "jeans" into the textfield with id "mainSearchText"
          And I click on the button with id "mainSearchBtn"
          Then I should be on search result page

          Scenario: Add item to basket
            Given I am on the mandm homepage
            And I am a normal user
            When I enter "jeans" into the textfield with id "mainSearchText"
            And I click on the button with id "mainSearchBtn"
            Then I click on first item with img with "JACK AND JONES Mens Glenn JJ Felix BL 691 Jeans Blue Denim"
            And I select the "Waist 27" Leg 30"" size for the item
            Then I Add the item to the basket
            When I go to the basket
            Then I should see the item "JACK AND JONES Mens Glenn JJ Felix BL 691 Jeans Blue Denim" added to the basket

  Scenario: Dynamic data
    Given I am on the mandm homepage
    And I am a normal user
    When I enter "jeans" into the textfield with id "mainSearchText"
    And I click on the button with id "mainSearchBtn"
    And I select the first item
    And I select the "Waist 27" Leg 30"" size for the item
    Then I Add the item to the basket
    When I go to the basket
    Then I should see the item in the basket

    Scenario: Create a user account
      Given I am on the mandm homepage
      And I click on link with id "myaccount"
      And I enter "dfgfhghdg@cffgxfg.cvgdf" into the textfield with id "EmailAddress"
      And I click on the radio button with id "CurrentCustomer_NoCreateNew"
      Then I click on the button with class "disableableContinueButton"
      And I select "Mr" option from the dropdown with id "CardholderDetails_CardholderName_Salutation"
      And I enter "venu" into the textfield with id "CardholderDetails_CardholderName_FirstName"
      And I enter "reddy" into the textfield with id "CardholderDetails_CardholderName_Surname"
      And I enter "12345" into the textfield with id "CustomerDetails_Mobile"
      And I enter "dfgfhghdg@cffgxfg.cvgdf" into the textfield with id "CustomerDetails_ConfirmEmailAddress"
      And I select "United Kingdom" option from the dropdown with id "CardholderDetails_FindAddress_Country"
      And I enter "RG20FS" into the textfield with id "CardholderDetails_FindAddress_PostCode"
      And I click on link with id "find_address_btn"
      And I select "14 St. Agnes Way,Reading" option from the dropdown with id "pickList"
      And I enter "England2010" into the textfield with id "SignUpDetails_Password"
      And I enter "England2010" into the textfield with id "SignUpDetails_ConfirmPassword"
      Then I click on the button with class "disableableContinueButton"


      Scenario: Create a user account by adding address manually
        Given I am on the mandm homepage
        And I click on link with id "myaccount"
        And I enter "venureddy@gmail.com" into the textfield with id "EmailAddress"
        And I click on the radio button with id "CurrentCustomer_NoCreateNew"
        Then I click on the button with class "disableableContinueButton"
        And I click on link with id "cardholder-manual-address"
        And I enter "flat 7, milman road" into the textfield with id "CardholderDetails_Address_AddressLine1"
        And I enter "reading" into the textfield with id "CardholderDetails_Address_Town"
        And I enter "RG2 0AZ" into the textfield with id "CardholderDetails_Address_PostCode"
        And I click on link with id "goBackToPostCode"



