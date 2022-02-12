Feature: Look for other Werewolves
   
    As a Werewolf in gameplay
    I would like to verify my teammates(other Werewolves) in my turn at night
    So that we can collaborate in the discussion
	
    Background:
	    Given that I am randomly assigned as the Werewolf in a game
        Given that Announcer has announced that it is the turn of the Werewolf
	
    Scenario: (Normal Flow) I have teammates 
		When it is Werewolf's turn
		Then I should wake up
        And label my teammates as Werewolf
        And I end my turn
	
    Scenario: (Alternate Flow) I do not have a teammate
		When it is Werewolf's turn
		And there is no other Werewolf in the gameplay
		Then I should wake up 
        And I end my turn
    
    Scenario: (Error Flow) I don't have a teammate
		When it is Werewolf's turn
		And I forget to wake up to see my teammate till the end of my turn
		Then I have no information about the game
        And potentially other Werewolves do not know you are Werewolf
        And game should end due to wrong action of Werewolf player