Feature: Create a Card in Trello List

  Background:
    * def result = callonce read('classpath:trello/create_list.feature')
    * def listId = result.listId

  Scenario: Create a new card in the list
    Given url 'https://api.trello.com/1/cards'
    And param name = 'AlbarakaTechNewCard'
    And param idList = listId
    And param key = '01d6b307a0936ebffec16ffa551771ad'
    And param token = 'Token'
    When method post
    Then status 200
    And match response.name == 'AlbarakaTechNewCard'
    And def cardId = response.id
