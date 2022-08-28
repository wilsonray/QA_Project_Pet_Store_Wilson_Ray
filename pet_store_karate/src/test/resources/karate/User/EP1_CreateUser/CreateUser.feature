@F5
Feature: Service client Post
  As QA Automation
  I want to create a user
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service POST method
    * def fakePerson =  read('classpath:karate/Helpers/randomizer.js')
    #* def requestCreateUser = read('classpath:karate/User/EP1_CreateUser/CreateUserBody.json')
    * def requestCreateUser = callonce fakePerson
    #* def requestCreateUser = {"id": 22, "username": "#(fakerObj.name().firstName())", "firstName": "Claire", "email": "claireredfield@gmail.com", "password": "kekw", "phone": "987-654-321", "userStatus": 0}
    * def responseCreateUser = read('classpath:karate/User/EP1_CreateUser/responseCreateUser.json')

    Given path 'user'
    And request requestCreateUser
    When  method post
    Then status 200
    And match response == responseCreateUser
