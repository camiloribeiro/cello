Feature: Getting HTML Atributes
  As Developer
  I want to get HTML atributs from elements

  @wip
  Scenario: Get the value of a html element
    Given I am on a page that has a element
    And the textfield has the value "text value"
    When I ask for the value of it element
    Then I should see the value of it

  @pending
  Scenario: Get the text of a html element
    Given I am on a page that has a element
    And the textfield has the text "text text"
    When I ask for the text of it element
    Then I should see the text of it

  @pending
  Scenario: Get the class of a html element
    Given I am on a page that has a element
    And the textfield has the class "text_class"
    When I ask for the class of it element
    Then I should see the class of it

  @pending
  Scenario: Get the tilte of a html element 
    Given I am on a page that has a element
    And the textfield has the title "text title"
    When I ask for the title of it element
    Then I should see the title of it
