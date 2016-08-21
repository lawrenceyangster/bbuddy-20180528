@user @monthlyBudget
Feature: Add budget for month

  Scenario: Add budget for month
    When add budget for "2016-06" with amount 100
    Then monthly budget 100 for "2016-06" is saved

  Scenario: Add budget for month which was set a budget already
    Given budget 100 has been set for month "2016-06"
    When add budget for "2016-06" with a new amount 200
    Then the budget for "2016-06" is 200