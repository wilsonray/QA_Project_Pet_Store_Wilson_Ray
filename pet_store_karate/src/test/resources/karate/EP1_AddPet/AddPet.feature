@F1
Feature: Service client Post
  As QA Automation
  I want to create a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service POST method
    * def requestAddPet = read('classpath:karate/EP1_AddPet/AddPetBody.json')
    * def responseAddPet = read('classpath:karate/EP1_AddPet/responseAddPet.json')

    Given path 'pet'
    And request requestAddPet
    When  method post
    Then status 200
    And match response == responseAddPet
    And assert response.id == requestAddPet.id
    And assert response.category.id == requestAddPet.category.id
    And assert response.category.name == requestAddPet.category.name
    And assert response.name == requestAddPet.name
    And match response.photoUrls == requestAddPet.photoUrls
    And assert response.tags.id == requestAddPet.tags.id
    And assert response.tags.name == requestAddPet.tags.name
    And assert response.status == requestAddPet.status

  Scenario Outline: Request with invalid id
    * def requestAddPet = read('classpath:karate/EP1_AddPet/AddPetBody.json')
    * set requestAddPet.id = <id>

    Given path 'pet'
    And request requestAddPet
    When method post
    Then status <codestatus>

    Examples:
      |id    |codestatus|
      |0     |200       |
      |"kekw"|500       |
      |""    |200       |
      |null  |200       |
      |''    |200       |
      |"#$%&"|500       |

  Scenario Outline: Request with invalid category.id
    * def requestAddPet = read('classpath:karate/EP1_AddPet/AddPetBody.json')
    * set requestAddPet.category.id = <categid>

    Given path 'pet'
    And request requestAddPet
    When method post
    Then status <codestatus>

    Examples:
      |categid|codestatus|
      |0      |200       |
      |"kekw" |500       |
      |""     |200       |
      |null   |200       |
      |''     |200       |
      |"#$%&" |500       |