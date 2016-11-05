Feature: Submit a payment
  As a member of a kitty
  I want to submit a payment
  so I can track all the payments

  Scenario: one payment where one member pays for another member
    Given There is no payment submitted yet
    When I submit a payment by "David" for "ski rental" of "10" including "Erin" 
    Then I should see a payment by "David" for "ski rental" of "10" including "Erin" 

  Scenario: add second payment where one member pays for another member
    Given There is one payment submitted by "David" from "ski rental" of "10" including "Erin"
    When I submit a payment by "David" for "apartment rental" of "100" including "Erin"
    Then I should see a payment by "David" for "ski rental" of "10" including "Erin"
    And I should see a payment by "David" for "apartment rental" of "100" including "Erin"
