Feature: Search
  As a Bug Bang reader
  I want to navigate on the basic scenarios

  Scenario: Basic search for common users
    Given I am on The Bug Bang Theory home page
    When I write "Camilo Ribeiro" on search field
    And ask to search
    Then I should see the follow results:
      | BugBang Responde I: Horas x Qualidade (A eterna briga das empresas)    | 
      | The Bugbang Theory    | 
      | Penso, logo automatizo    | 
      | The Bug Bang Theory 2.0 – Agile and Technical Testing Rocks!  | 

  Scenario: Going to about page
    Given I am on The Bug Bang Theory home page
    When I go to about page
    Then I should see the text "Camilo Ribeiro"

  Scenario: Seeing the last twelve post blogs
    Given I am on The Bug Bang Theory home page
    Then I want see the the last twelve postblog session
    And It should be twelve links
