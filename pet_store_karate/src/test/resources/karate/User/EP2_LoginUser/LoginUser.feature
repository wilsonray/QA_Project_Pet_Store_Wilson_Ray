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
    * def responseCreateUser = read('classpath:karate/User/EP1_CreateUser/responseCreateUser.json')
    * print fakeUser
    Given path 'user', 'login'
    And params {username: '#(fakeUser.username)', password: '#(fakeUser.password)'}
    When  method get
    Then status 200