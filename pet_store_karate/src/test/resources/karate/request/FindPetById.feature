Feature: Service client Get
  As QA Automation
  I want to consult a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service GET method
    * def PetBody = read('classpath:karate/request/AddPetBody.json')
    * def responseFindPetById = read('classpath:karate/request/responseFindPetById.json')

    Given path 'pet', '15'
    When  method get
    Then status 200
    And match response == PetBody
    And assert response.id == PetBody.id
    And assert response.category.id == PetBody.category.id
    And assert response.category.name == PetBody.category.name
    And assert response.name == PetBody.name
    And match response.photoUrls == PetBody.photoUrls
    And assert response.tags.id == PetBody.tags.id
    And assert response.tags.name == PetBody.tags.name
    And assert response.status == PetBody.status