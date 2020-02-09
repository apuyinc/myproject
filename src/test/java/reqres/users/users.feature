Feature: reqres tests

  Background:
    * url baseUrl
    * configure headers = { 'Content-Type': 'application/json' }

Scenario: get all users and then get first user by id
    Given path 'users'
    # And header Accept = 'application/json'
    When method get
    Then status 200
    
    * def user = response.data[0]

    Given path 'users', user.id
    When method get
    Then status 200

Scenario: get users in page 2
    Given path 'users'
    And param page = '2'
    When method get
    Then status 200
    And match each response.data contains { id : '#? _ > 6' }