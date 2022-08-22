Feature: Service client Put
  As QA Automation
  I want to update a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service PUT method
    * def requestUpdatePet = read('classpath:karate/request/UpdatePetBody.json')
    * def responseUpdatePet = read('classpath:karate/request/responseAddPet.json')

    Given path 'pet'
    And request requestUpdatePet
    When  method post
    Then status 200
    And match response == responseUpdatePet
    And assert response.id == requestUpdatePet.id
    And assert response.name == requestUpdatePet.name
    And assert response.category.name == requestUpdatePet.category.name