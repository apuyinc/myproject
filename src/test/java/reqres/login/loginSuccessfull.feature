Feature: Login successfull

Background:
* url baseUrl

Scenario: Login succesfull

Given path 'login'
And request { email: '#(email)', password: '#(password)' }
When method post
Then status 200
And def authToken = response.token