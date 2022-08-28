@F6
Feature: Service client Get
  As QA Automation
  I want to login a user
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service GET method
    #* def fakePerson =  read('classpath:karate/Helpers/randomizer.js')
    * def requestLoginUser = call read('classpath:karate/User/EP1_CreateUser/CreateUser.feature')
    #* def requestLoginUser = call ('classpath:karate/User/EP1_CreateUser/CreateUser.feature')
    * def responseCreateUser = read('classpath:karate/User/EP1_CreateUser/responseCreateUser.json')

    Given path 'user', 'login'
    And params {username: '#(requestLoginUser.requestCreateUser.username)', password: '#(requestLoginUser.requestCreateUser.password)'}
    When  method get
    Then status 200
    #Then print requestCreateUser.username
    #Then print requestLoginUser.username
    #Then print requestLoginUser.requestCreateUser.username