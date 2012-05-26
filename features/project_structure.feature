:highlight Normal ctermbg=black ctermfg=whitFeature: Create Project Structure
  As awesome developer
  I want to create the page object model structure to my project

  Scenario: Create project structure
    Given I am in the project repositore
    When I ask for a new testing structure
    Then I should see the follow structure:
      | level    | directory_name                         |
      | 0        | testing                                |
      | 1        | testing/features                       |
      | 2        | testing/features/step_definition       |
