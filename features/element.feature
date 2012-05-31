Feature: Element
  As a developer
  I want use element to run my tests

  @pending
  Scenario: Use as element and send a native watir/selenium method
  
  Scenario: Click at the element
    Given I am on a page that has a element
    And that element is named as: 
      | checkbox      |
      | text_field    |
      | textarea      |
    Then I want click on this element
    
  Scenario: Know if the element is visible
    Given I am on a page that has a element
    And that element is named as: 
      | checkbox      |
      | text_field    |
      | textarea      |
    Then I want know if this element is visible

  Scenario: Know if the element is enable
    Given I am on a page that has a element
    And that element is named as: 
      | checkbox      |
      | text_field    |
      | textarea      |
    Then I want know if this element is enable

  Scenario: Know if the element exists
    Given I am on a page that has a element
    And that element is named as: 
      | checkbox      |
      | text_field    |
      | textarea      |
    Then I want know if this element exists

  Scenario: Right click at the element
    Given I am on a page that has a element
    And that element is named as: 
      | checkbox      |
      | text_field    |
      | textarea      |
    Then I shoud be able to click with the right button in this element

  @pending
  Scenario: Wait until the element is gone
    Given I am on a page that has a element
    And that element is named as: 
      | checkbox      |
      | text_field    |
      | textarea      |

  @pending
  Scenario: Wait until the element is present
    Given I am on a page that has a element
    And that element is named as: 
      | checkbox      |
      | text_field    |
      | textarea      |

  @pending
  Scenario: get the location of it
    Given I am on a page that has a element
    And that element is named as: 
      | checkbox      |
      | text_field    |
      | textarea      |
    Then I should be able to get the location of it
