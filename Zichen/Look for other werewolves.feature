Feature: Look for other Werewolves
   
    As a Werewolf in gameplay
    I would like to verify my teammates(other Werewolves) in my turn at night
    So that we can collaborate in the discussion
	
    Background:
	    Given that I am randomly assigned as the Werewolf in a game
	
    Scenario: (Normal Flow) See other Werewolves
        Given there are other Werewolves other than myself
		When it is Werewolf's turn
        Then I should know whoelse is the Werewolf 
        And system label him/her as Werewolf
	
    Scenario: (Alternate Flow) See no other Werewolf
        Given there is no other Werewolf other than myself
		When it is Werewolf's turn
		Then I should know there is no other Werewolf
        And my turn end
    
    Scenario: (Error Flow) Game end because of setup error
        Given there is no other Werewolf other than myself
		When it is Werewolf's turn
		And I see another two Werewolves in the game
		Then the system should display an error message to every player
        And the game end