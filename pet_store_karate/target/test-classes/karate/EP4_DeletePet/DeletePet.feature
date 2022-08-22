Feature: Service client Delete
  As QA Automation
  I want to delete a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service DELETE method
    #* def PetBody = read('classpath:karate/AddPet/AddPetBody.json')
    * def responseDeletePet = read('classpath:karate/EP4_DeletePet/SuccessfulDeleteResponse.json')

    Given path 'pet', '15'
    And header api_key = "special-key"
    When  method delete
    Then status 200
    And match response == responseDeletePet
    And assert response.type == responseDeletePet.type
    And assert response.message == '15'

  Scenario: Delete request with non-existent pet

    Given path 'pet', '15'
    And header api_key = "special-key"
    When  method delete
    Then status 404