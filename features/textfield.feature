Feature: Textfield
  As a developer
  I want to use textfield in different ways

  Scenario: Finding a textfield
    Given I am on a page that has a textfield
    Then I should can knows if this page has a textfield
    
  Scenario: Setting a text on a textfield
    Given I am on a page that has a textfield
    Then I should be able to write a text like "Testing automation Rockst"

  Scenario: Getting the text from a textfield
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I shoud be able to know get the text "Testing automation rocks"

  Scenario: The textfield does not contais the text
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should be able to know if the text on the textfield does not contais the text "Fooooooo"

  Scenario: The textfield does not contais the text (counter proof)
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should be able to know if the text on the textfield does not contais the text "rocks"

  Scenario: The textfield contains a text 
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should be able to know if the text on the textfield contais the text "rocks"
    
    
  Scenario: The text on a textfield is exacle some text
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should be able to know if the text on the textfield is the text "Testing automation rocks"
  
  Scenario: The textfield is empty
    Given I am on a page that has a textfield
    Then I should be able to know if the textfield is empty 

  @pending
  Scenario: Textfield max lenght
  
  Scenario: The lenght of a Textfield text
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should be able to know if the size of the textfield text is "24"
    
    
    @pending
  Scenario: The textfield is not enable
