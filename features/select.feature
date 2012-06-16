Feature: Select
  As a developer
  I want to use select fields

  Scenario: Get the values available
    Given I am on a page that has a select
    Then I should be able to get the options available of it
    
  Scenario: Select a value
    Given I am on a page that has a select
    Then I should be able to select an option on it
    And be sure that the option setted is the option selected

  Scenario: Get selected
    Given I am on a page that has a select
    And the option "Cucumber" is selected
    Then I should be able to know the option "Cucumber" is selected

  Scenario: Get selected (counter proof)
    Given I am on a page that has a select
    And the option "Cucumber" is selected
    Then I should fail when ask if the option "Rspec" is selected

  #TODO: Think a way to create a default value
  @pending 
  Scenario: Go to default or empty
    Given I am on a page that has a select
    And the option "Cucumber" is selected
    Then I should be able to go to the default option of it
