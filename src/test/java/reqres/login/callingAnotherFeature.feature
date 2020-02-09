Feature: which makes a 'call' to another re-usable feature

Background:
  * def signIn = call read('loginSuccessfull.feature') { email: 'eve.holt@reqres.in', password: 'cityslicka' }
  * def authToken = signIn.authToken

Scenario: some scenario
  * print authToken
  # main test steps