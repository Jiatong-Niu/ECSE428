Feature: Thumbs up to the Minions
   
    As a Werewolf in gameplay
    I would like to let Minion players know my identity
    So that we can collaborate in the discussion
	
    Background:
		Given that I am randomly assigned as the Werewolf in a game
	
    Scenario: (Normal Flow) Thumbs up to the Minion in the game
        Given there is at least one Minion in the game
        When it is Minion's turn
		Then I should click thumb up button to show that I am Werewolf till the end of this turn
	
    Scenario: (Alternate Flow) Thumbs up till the end of the turn
    	Given there is no Minion in the game
		When it is Minion's turn
		Then I should still click thumb up button till the end of this turn
        But no one else will know I am the Werewolf

    Scenario: (Error Flow) Perform wrong action in other player's turn
		When it is not Minion's turn
		And I click thumb up button
		Then the system should display warning message to me 
        And system should not perform that request