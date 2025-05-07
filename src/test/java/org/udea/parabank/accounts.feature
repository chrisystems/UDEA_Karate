@parabank_transfer
Feature: Transfer to Parabank

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    * def accountId = 12345
    * def toAccountId = 12456
    * def txAmount = 100
  Scenario: Transfer Funds
    Given path 'transfer'
    And param fromAccountId = accountId
    And param toAccountId = toAccountId
    And param amount = txAmount
    When method POST
    Then status 200

    And match response == "Successfully transferred $" + txAmount + " from account #" + accountId + " to account #" + toAccountId