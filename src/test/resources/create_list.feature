
Feature: Create a List in Trello Board

  Background:
    * def result = callonce read('classpath:trello/create_board.feature')
    * def boardId = result.boardId

  Scenario: Create a new list in the board
    Given url 'https://api.trello.com/1/lists'
    And param name = 'AlbarakaTechNewList'
    And param idBoard = boardId
    And param key = '01d6b307a0936ebffec16ffa551771ad'
    And param token = 'Token'
    When method post
    Then status 200
    And match response.name == 'AlbarakaTechNewList'
    And def listId = response.id