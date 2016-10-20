Feature: Radio
  As a develper
  I want to interact with radio elements

  @pending  
  Scenario: See whitch option of a radio collection is setted
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir              | 
      | selenium-webdriver | 
      | ruby               | 
    And the option "Ruby" is setted
    Then I should be able to know that the option "Ruby" is setted

  Scenario: See if a radio option is not setted
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir              | 
      | selenium-webdriver | 
      | ruby               | 
    And the option "Ruby" is setted
    Then I should be able to know if the option "Cucumber" is not setted

  Scenario: See if a radio option is not setted (Counter Proof)
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir              | 
      | selenium-webdriver | 
      | ruby               | 
    And the option "Cucumber" is setted
    Then I should fail when ask if the the option "Cucumber" is not setted

  Scenario: See if a radio option is setted
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir              | 
      | selenium-webdriver | 
      | ruby               | 
    And the option "Ruby" is setted
    Then I should be able to know if the option "Ruby" is setted

  Scenario: See if a radio option is setted (counter proof)
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir              | 
      | selenium-webdriver | 
      | ruby               | 
    Then I should fail when ask if the option "Ruby" is setted

  Scenario: See if the radio collection has some option setted
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir              | 
      | selenium-webdriver | 
      | ruby               | 
    And the option "Ruby" is setted
    Then I should be able to know if there is some options setted 

  Scenario: See if the radio collection has some option setted
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir              | 
      | selenium-webdriver | 
      | ruby               | 
    Then I should fail when ask if there is some options setted 

  Scenario: Select an radio option  
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir              | 
      | selenium-webdriver | 
      | ruby               | 
    And the option "Ruby" is setted
    Then I should be able to select the option "Cucumber"
    And I should be able to know if the option "Cucumber" is setted
    
  Scenario: Select an radio option  
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir              | 
      | selenium-webdriver | 
      | ruby               | 
    And the option "Ruby" is setted
    Then I should be able to select the option "Cucumber"
    And I should fail when ask if the option "Ruby" is setted
