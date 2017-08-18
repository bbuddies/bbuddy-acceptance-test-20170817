@login
Feature: Budgets

  Scenario: add a budget
    When add a budget with month "2017-08" and amount 1000
    Then budgets list contains following
      | month   | amount |
      | 2017-08 | 1000   |

  Scenario: add exit budget
    Given month "2017-08" and amount 1234
    When add a budget with month 2017-08 and amount 500
    Then budgets list contains following
      | month   | amount |
      | 2017-08 | 500    |
    And budgets not contains amount 1234

  Scenario: caculate the budget
    Given month "2017-08" and amount 900
    When post time with startAt "2017-08-10" and endAt "2017-09-20"
    Then budgets list exist the caculate result
    |result|
    | 1000  |

