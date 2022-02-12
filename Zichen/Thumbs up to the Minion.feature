Feature: Thumbs up to the Minions
   
    User Stories:
    As a Werewolf in gameplay
    I would like to let Minion players know my identity
    So that we can collaborate in the discussion
	
    Background:
		    Given that I am randomly assigned as the Werewolf in a game
        Given that Announcer has announced that it is the turn of the Minion
	
    Scenario: (Normal Flow) There is Minion in the game
        When it is Minion's turn
        And there is at least one Minion in the game
		    Then I should thumbs up to show that I am Werewolf till the end of this turn
	
    Scenario: (Alternate Flow) There has no Minion in the game
		    When it is Minion's turn
		    And there is no Minion in the game
		    Then I should thumbs up till the end of this turn

    Scenario: (Error Flow) Wrong action performed in other player's turn
		    When it is not Minion's turn
		    And I thumbs up
		    Then the system should display error message to all players and end the game