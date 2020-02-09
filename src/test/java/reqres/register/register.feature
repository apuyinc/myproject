Feature: register tests

Background:
    * url baseUrl

Scenario: register ok
    * def user = 
    """
    {
    "email": "eve.holt@reqres.in",
    "password": "pistol"
    }
    """

Given path 'register'
And request user
When method post
Then status 200