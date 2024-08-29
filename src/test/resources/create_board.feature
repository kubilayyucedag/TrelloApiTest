Feature: Create a Trello Board

  Scenario: Create a new board on Trello
    Given url 'https://api.trello.com/1/boards/'
    And param name = 'AlbarakaTechBoard'
    And param key = '01d6b307a0936ebffec16ffa551771ad'
    And param token = 'Token'
    When method post
    Then status 200
    And match response.name == 'AlbarakaTechBoard'
    And def boardId = response.id
