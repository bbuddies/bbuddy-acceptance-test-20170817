@login
Feature: Budgets

  Scenario: add a budget
    When add a budget with month "2017-08" and amount 1000
    Then budgets list contains following
      | month   | amount |
      | 2017-08 | 1000   |