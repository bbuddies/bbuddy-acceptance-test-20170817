@login
Feature: Budgets

  Scenario: add a budget
    When add a budget with month "2017-08" and amount 1000
    Then budgets list contains following
      | month   | amount |
      | 2017-08 | 1000   |

  Scenario: add exit budget
    Given month "2017-08" and amount 1000
    When add a budget with month "2017-08" and amount 500
    Then budgets list contains following
      | month   | amount |
      | 2017-08 | 500    |
    And budgets not contains amount 1000


#  Scenario: month cannt be empty
#    When the month is empty
#    Then there is an error message
