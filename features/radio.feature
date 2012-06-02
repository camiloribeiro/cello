Feature: Radio
  As a develper
  I want to interact with radio elements

  Scenario: See whitch option of a radio collection is setted
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir-webdriver    | 
      | selenium-webdriver | 
      | ruby               | 
    And the option "Ruby" is setted
    Then I should be able to know that option is setted

  Scenario: See if a radio option is not setted
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir-webdriver    | 
      | selenium-webdriver | 
      | ruby               | 
    And the option "Ruby" is setted
    Then I should be able to know it the option "Cucumber" is not setted

  Scenario: See if a radio option is setted
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir-webdriver    | 
      | selenium-webdriver | 
      | ruby               | 
    And the option "Ruby" is setted
    Then I should be able to know it the option "Ruby" is setted

  Scenario: See if the radio collection has some option setted
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir-webdriver    | 
      | selenium-webdriver | 
      | ruby               | 
    And the option "Ruby" is setted
    Then I should be able to know if there is some options setted 
   
  @wip
  Scenario: Select an radio option  
    Given I am on a page that has a radio group with the follow opitions:
      | cucumber           | 
      | watir-webdriver    | 
      | selenium-webdriver | 
      | ruby               | 
    And the option "Ruby" is setted
    Then I should be able to select the option "Cucumber"
