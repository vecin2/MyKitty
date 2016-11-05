Feature: My kitty starts up
As a member of a kitty
I want to start up
So I can track expenses and see current balance

  Scenario: Start up 
    Given I haven't yet start the app
    When I start the app
    Then I should see "Welcome to MyKitty!"
    And I should see "Press P for inserting a payment"
    
