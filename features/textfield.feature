Feature: Textfield
  As a developer
  I want to use textfield in different ways
 
  Scenario: Finding a textfield
    Given I am on a page that has a textfield
    Then I should can knows if this page has a textfield named "text_field"
  
  #TODO graceful fegradation
  @pending
  Scenario: Finding a textfield (counter proof)
    Given I am on a page that has a textfield
    Then I should fail when ask if this page has a textfield named "false_field"

  Scenario: Setting a text on a textfield
    Given I am on a page that has a textfield
    Then I should be able to write a text like "Testing automation Rockst" in the textfield

  Scenario: Getting the text from a textfield
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I shoud be able to get the text "Testing automation rocks" from this textfield

  Scenario: Getting the text from a textfield (counter proof)
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I shoud fail to try get the text "Fooo BAAARRR" from this textfield

  Scenario: The textfield does not contais the text
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should be able to know if the text on the textfield does not contais the text "Fooooooo"

  Scenario: The textfield does not contais the text (counter proof)
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should fail when ask if the text on the textfield does not contais the text "rocks"

  Scenario: The textfield contains a text 
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should be able to know if the text on the textfield contais the text "rocks"
    
  Scenario: The textfield contains a text (counter proof)
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should fail when ask if the text on the textfield contais the text "foo barrrrrr"

  Scenario: The text on a textfield is exactly some text
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should be able to know if the text on the textfield is exacly the text "Testing automation rocks"

  Scenario: The text on a textfield is exactly some text (counter prooF)
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should fail when ask if the text on the textfield is exacly the text "rocks"
    
  Scenario: The textfield is empty
    Given I am on a page that has a textfield
    Then I should be able to know if the textfield is empty 

  Scenario: The textfield is empty (counter proof)
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should fail when ask if the textfield is empty 
    
  @pending
  Scenario: Textfield max lenght
  
  Scenario: The lenght of a Textfield text
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should be able to know if the size of the textfield text is "24"
    
  Scenario: The lenght of a Textfield text (counter proof)
    Given I am on a page that has a textfield
    And There is a textfield with the text "Testing automation rocks"
    Then I should fail when ask if the size of the textfield text is "26"













