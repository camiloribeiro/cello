Feature: Browser
  As a developer
  I want use a browser in different contexts

  Scenario: Get a context
    Given I have a browser with no context (blank page)
    When I ask for the context inputs
    And and I ask to visit the page
    Then I should see the page inputs

  Scenario: Get another context
    Given I have a browser with no context (blank page)
    When I ask for the context iframe
    And and I ask to visit the page
    Then I should see the page iframe

  Scenario: Fill a textfield on a context
    Given I am in the inputs context
    When I ask for fill the textfield
    Then I should see the filled textfield
    And I should be able to close the browser

  @pending
  Scenario: Pass by two different contexts
    Given I am in the inputs context
    When I ask for fill the textfield
    Then I should see the filled textfield
    When I click on the simple page link 
    And I ask to use the simple page context
    Then I should fail when try access the old textfield
    And I should be able to verify the text on the new textfield
    And I should be able to close the browser
