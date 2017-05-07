Given(/^I am on the registration page$/) do
  step 'I am on the mandm homepage'
  step 'I click on link with id "myaccount"'
end


And(/^I enter necessary information to create an account$/) do
  @email = "venu"+Time.now.strftime("%Y%m%d%H%M%s")+"@gmail.com"
  @password = "Password1"
  @firstname = "dfknlbdlfkdklgj"
  steps %{
   Given I enter "#{@email}" into the textfield with id "EmailAddress"
   Given I click on the radio button with id "CurrentCustomer_NoCreateNew"
   Given  I click on the button with class "disableableContinueButton"
   Given I select "Mr" option from the dropdown with id "CardholderDetails_CardholderName_Salutation"
   Given I enter "#{@firstname}" into the textfield with id "CardholderDetails_CardholderName_FirstName"
   Given I enter "reddy" into the textfield with id "CardholderDetails_CardholderName_Surname"
   Given I enter "12345" into the textfield with id "CustomerDetails_Mobile"
   Given I enter "#{@email}" into the textfield with id "CustomerDetails_ConfirmEmailAddress"
   Given I select "United Kingdom" option from the dropdown with id "CardholderDetails_FindAddress_Country"
   Given I enter "RG20FS" into the textfield with id "CardholderDetails_FindAddress_PostCode"
   Given I click on link with id "find_address_btn"
   Given I select "14 St. Agnes Way,Reading" option from the dropdown with id "pickList"
   Given I enter "#{@password}" into the textfield with id "SignUpDetails_Password"
   Given I enter "#{@password}" into the textfield with id "SignUpDetails_ConfirmPassword"

    }
 end

And(/^I should see the firstname which I registered$/) do
  step 'I should see "'+@firstname+'" message on the page'
end
