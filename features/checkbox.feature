Feature: Checkbox
  As a developer
  I want to use the element checkbox in my tests

  Scenario: Checking if it is checked
    Given I am on a page that has a checkbox
    And There is a checkbox checked 
    Then I should be able to verify if it is checked

  Scenario: Checking if it is uncheked
    Given I am on a page that has a checkbox
    Then I should be able to verify if it is unchecked

  Scenario: Checking the checkbox
    Given I am on a page that has a checkbox
    Then I should be able to check it
 
  Scenario: Unchekning the checkbox
    Given I am on a page that has a checkbox
    And There is a checkbox checked 
    Then I should be able to uncheck it
