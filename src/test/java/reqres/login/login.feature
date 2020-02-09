Feature: Login functionality

Background:
    * url baseUrl
    * configure headers = { 'Content-Type': 'application/json' }
  

Scenario Outline: Multiple logins 

Given path 'login'
And request { email: '<email>', password: '<password>' }
When method post
Then status 200

  Examples:
    | email                      | password |
    | eve.holt@reqres.in         | secret   |
    | lindsay.ferguson@reqres.in | admin    |


Scenario: Login succesfull
   * def user =
       """
        {
            "email": "eve.holt@reqres.in",
            "password": "cityslicka"
        }
      """

Given path 'login'
And request user
When method post
Then status 200
And def authToken = response.token
And assert responseTime < 1000

* print responseTime
* print authToken


Scenario: Login unsuccesfull
  * def user =
      """
        {
            "email": "eve.holt@reqres.in",
            "password": ""
        }
      """

Given path 'login'
And request user
When method post
Then status 400
And match response.error == 'Missing password'


