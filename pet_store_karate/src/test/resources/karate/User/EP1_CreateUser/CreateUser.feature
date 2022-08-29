@F5
Feature: Service client Post
  As QA Automation
  I want to create a user
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service POST method
    * def fakePerson = karate.callSingle('classpath:karate/Helpers/randomizer.js')
    * def requestCreateUser = fakePerson
    * def responseCreateUser = read('classpath:karate/User/EP1_CreateUser/responseCreateUser.json')
    * print fakePerson
    Given path 'user'
    And request requestCreateUser
    When method post
    Then status 200
    And match response == responseCreateUser
    And assert response.type == "unknown"
