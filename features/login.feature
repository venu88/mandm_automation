Feature: As a registered user
  In order to buy new items
  I should be able to login to the site

  Scenario: login with invalid email format
    Given I am on the login page
    And I enter "ddfdsfdf" into the textfield with id "EmailAddress"
    And I enter "jyhgkjjljl" into the textfield with id "Password"
    When I click on the button with class "disableableContinueButton"
    Then I should see "This is an invalid email address" message on the page

   Scenario: login with invalid email format 1
     Given I am on the login page
     And I enter "vvvghhj.ghhgjgjh@~?><@" into the textfield with id "EmailAddress"
     And I enter "jyhgkjjljl" into the textfield with id "Password"
     When I click on the button with class "disableableContinueButton"
     Then I should see "This is an invalid email address" message on the page

     Scenario: login with invalid email format 2
       Given I am on the login page
       And I enter "1212.12112@1212121" into the textfield with id "EmailAddress"
       And I enter "jyhgkjjljl" into the textfield with id "Password"
       When I click on the button with class "disableableContinueButton"
       Then I should see "This is an invalid email address" message on the page

      Scenario: login with invalid email format 3
        Given I am on the login page
        And I enter "hgjgjg5616156564fhghffggfghv161654541fccgh@gmail" into the textfield with id "EmailAddress"
        And I enter "jyhgkjjljl" into the textfield with id "Password"
        When I click on the button with class "disableableContinueButton"
        Then I should see "This is an invalid email address" message on the page

       Scenario: login with invalid email format 4
         Given I am on the login page
         And I enter "hgjgjg5616156564fhghffggfghv161654541fcc@ghgjhhg156161" into the textfield with id "EmailAddress"
         And I enter "jyhgkjjljl" into the textfield with id "Password"
         When I click on the button with class "disableableContinueButton"
         Then I should see "This is an invalid email address" message on the page

      Scenario: login with invalid email format
       Given I am on the login page
        And I enter "agmail.com" into the textfield with id "EmailAddress"
        And I enter "jyhgkjjljl" into the textfield with id "Password"
        When I click on the button with class "disableableContinueButton"
        Then I should see "This is an invalid email address" message on the page

     Scenario: Testing without entering email and password
     Given I am on the login page
     And I enter "" into the textfield with id "EmailAddress"
     And I enter "" into the textfield with id "Password"
     When I click on the button with class "disableableContinueButton"
     Then I should see "Please enter your email address.Please enter your password" message on the page


      Scenario: Testing it only with email and no password
        Given I am on the login page
        And I enter "dsdasd@gmail.com" into the textfield with id "EmailAddress"
        And I enter "" into the textfield with id "Password"
        When I click on the button with class "disableableContinueButton"
        Then I should see "Please enter your password" message on the page

        Scenario: Testing it only with password no email
          Given I am on the login page
          And I enter "" into the textfield with id "EmailAddress"
          And I enter "jyhgkjjljl" into the textfield with id "Password"
          When I click on the button with class "disableableContinueButton"
          Then I should see "Please enter your email address" message on the page

          Scenario: Enter long username and password
            Given I am on the login page
            And I enter "fjjhjhhhgfjhfjhfjhghj51523lhjgjhhhj@fggdhddjhfhgmail.com" into the textfield with id "EmailAddress"
            And I enter "jyhgkjjljleg454421321344bjhggghjghjgjhgfjjfh4g)((**^$Dsdasdasffasfas" into the textfield with id "Password"
            When I click on the button with class "disableableContinueButton"
            Then I should see "You do not have an account set up with this email. Please select 'No' to 'Do you have a password' to proceed" message on the page

            Scenario: entering with some blankspace between the characters
              Given I am on the login page
              And I enter "a b c d @gmail.com" into the textfield with id "EmailAddress"
              And I enter "j y hgk jjljl" into the textfield with id "Password"
              When I click on the button with class "disableableContinueButton"
              Then I should see "This is an invalid email address" message on the page

              Scenario: enter correct username and password
                Given I am on the login page
                And I enter "abcd687688@gmail.com" into the textfield with id "EmailAddress"
                And I enter "jgkjjljl" into the textfield with id "Password"
                When I click on the button with class "disableableContinueButton"
                Then I should see "You do not have an account set up with this email. Please select 'No' to 'Do you have a password' to proceed." message on the page
