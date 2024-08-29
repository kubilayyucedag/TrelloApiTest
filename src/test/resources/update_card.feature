Feature: Update Trello Card Details

  Background:
    * def result = callonce read('classpath:trello/create_card.feature')
    * def cardId = result.cardId

  Scenario: Update a card's details
    Given url 'https://api.trello.com/1/cards/' + cardId
    And param name = 'UpdateCardName'
    And param key = '01d6b307a0936ebffec16ffa551771ad'
    And param token = 'Token'
    When method put
    Then status 200
    And match response.name == 'UpdateCardName'
