Feature: Textarea
  As developer
  I want to interact with textarea elements in many ways

  Scenario: Finding a textarea
    Given I am on a page that has a textarea
    Then I should can knows if this page has a textarea
    
  Scenario: Setting a text on a textarea
    Given I am on a page that has a textarea
    Then I should be able to write a text like "Testing automation Rockst" in the textarea

  Scenario: Getting the text from a textarea
    Given I am on a page that has a textarea
    And There is a textarea with the text "Testing automation rocks"
    Then I shoud be able to get the text "Testing automation rocks" from this textarea

  Scenario: The textarea does not contais the text
    Given I am on a page that has a textarea
    And There is a textarea with the text "Testing automation rocks"
    Then I should be able to know if the text on the textarea does not contais the text "Fooooooo"

  Scenario: The textarea does not contais the text (counter proof)
    Given I am on a page that has a textarea
    And There is a textarea with the text "Testing automation rocks"
    Then I should be able to know if the text on the textarea does not contais the text "rocks"

  Scenario: The textarea contains a text 
    Given I am on a page that has a textarea
    And There is a textarea with the text "Testing automation rocks"
    Then I should be able to know if the text on the textarea contais the text "rocks"
    
  Scenario: The text on a textarea is exactly some text
    Given I am on a page that has a textarea
    And There is a textarea with the text "Testing automation rocks"
    Then I should be able to know if the text on the textarea is the text "Testing automation rocks"
  
  Scenario: The textarea is empty
    Given I am on a page that has a textarea
    Then I should be able to know if the textarea is empty 

  @pending
  Scenario: Textfield max lenght

  Scenario: The lenght of a Textfield text
    Given I am on a page that has a textarea
    And There is a textarea with the text "Testing automation rocks"
    Then I should be able to know if the size of the textarea text is "24"
