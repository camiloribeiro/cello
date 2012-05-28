Feature: Access elements
  As developer
  I want access elements in diferent ways

  Scenario: Write in a element text field sing id 
    Given I am on a page that has a textfield
    Then I should be able to write "Test" in a element using id

  @pending
  Scenario: Write in a element text field sing name 
    Given I am on a page that has a textfield
    Then I should be able to write "Test" in a element using name
  
  @pending
  Scenario: Write in a element text field sing label related
    Given I am on a page that has a textfield
    Then I should be able to write "Test" in a element using label
  
  @pending
  Scenario: Write in a element text field sing xpath
    Given I am on a page that has a textfield
    Then I should be able to write "Test" in a element using xpath
