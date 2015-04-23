Feature: Access elements inside Iframe
  As developer
  I want access elements inside an iframe

  @wip
  Scenario: Write in a element textfield using id 
    Given I am on a page that has a textfield inside a iframe
    Then I should be able to write "Test" in a element inside the iframe using id
