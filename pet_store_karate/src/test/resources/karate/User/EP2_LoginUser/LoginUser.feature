@F6
Feature: Service client Get
  As QA Automation
  I want to login a user
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service GET method
    * call read('classpath:karate/User/EP1_CreateUser/CreateUser.feature')
    * def fakeUser = fakePerson
    * def responseLoginUser = read('classpath:karate/User/EP2_LoginUser/responseLoginUser.json')
    * print fakeUser
    Given path 'user', 'login'
    And params {username: '#(fakeUser.username)', password: '#(fakeUser.password)'}
    When  method get
    Then status 200
    And match response == responseLoginUser
    And assert response.type == "unknown"