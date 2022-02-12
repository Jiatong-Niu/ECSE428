Feature: See who's the werewolf
   
    As a Minion in gameplay
    I would like to see who is the Werewolf at night
    So that I can have more information in the discussion and save Werewolves
	
    Background:
	    Given that I am randomly assigned as the Minion in a game
        Given that Announcer has announced that it is the turn of the Minion
	
    Scenario: (Normal Flow) See at least one Werewolf player
		When it is Minion's turn
        And there is at least one Werewolf in the game
		Then I should know who is the Werewolf in the discussion and label them as Werewolves
	
    Scenario: (Alternate Flow) See no Werewolf player
		When it is Minion's turn
        And there is no Werewolf in the game
		Then I should know there is no Werewolf in the game and no label is created for me
    
    Scenario: (Error Flow) See more than three Werewolves in the game
		When it is Minion's turn
		And I see more than three Werewolves in the game
		Then the system should display an error message to every player and end the game