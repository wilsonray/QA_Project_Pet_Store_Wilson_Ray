Feature: Service client Put
  As QA Automation
  I want to update a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario Outline: Request with invalid id
    * def requestUpdatePet = read('classpath:karate/EP2_UpdatePet/UpdatePetBody.json')
    * set requestUpdatePet.id = <id>

    Given path 'pet'
    And request requestUpdatePet
    When method put
    Then status <codestatus>

    Examples:
      |id    |codestatus|
      |0     |200       |
      |"kekw"|400       |
      |""    |400       |
      |null  |400       |
      |''    |400       |
      |"#$%&"|400       |

  Scenario Outline: Request with invalid category.id
    * def requestUpdatePet = read('classpath:karate/EP2_UpdatePet/UpdatePetBody.json')
    * set requestUpdatePet.category.id = <categid>

    Given path 'pet'
    And request requestUpdatePet
    When method put
    Then status <codestatus>

    Examples:
      |categid|codestatus|
      |0      |200       |
      |"kekw" |400       |
      |""     |400       |
      |null   |400       |
      |''     |400       |
      |"#$%&" |400       |

  Scenario: Check the service PUT method
    * def requestUpdatePet = read('classpath:karate/EP2_UpdatePet/UpdatePetBody.json')
    * def responseUpdatePet = read('classpath:karate/EP2_UpdatePet/responseUpdatePet.json')

    Given path 'pet'
    And request requestUpdatePet
    When  method put
    Then status 200
    And match response == responseUpdatePet
    And assert response.id == requestUpdatePet.id
    And assert response.category.id == requestUpdatePet.category.id
    And assert response.category.name == requestUpdatePet.category.name
    And assert response.name == requestUpdatePet.name
    And match response.photoUrls == requestUpdatePet.photoUrls
    And assert response.tags.id == requestUpdatePet.tags.id
    And assert response.tags.name == requestUpdatePet.tags.name
    And assert response.status == requestUpdatePet.status