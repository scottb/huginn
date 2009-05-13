Feature: Manage occasions
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new occasion
    Given I am on the new occasion page
    When I fill in "Name" with "name 1"
    And I fill in "Start date" with "start_date 1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "start_date 1"

  Scenario: Delete occasion
    Given the following occasions:
      |name|start_date|
      |name 1|start_date 1|
      |name 2|start_date 2|
      |name 3|start_date 3|
      |name 4|start_date 4|
    When I delete the 3rd occasion
    Then I should see the following occasions:
      |name|start_date|
      |name 1|start_date 1|
      |name 2|start_date 2|
      |name 4|start_date 4|
