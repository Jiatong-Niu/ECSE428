Feature: Look for other Masons
   
    As a Mason in gameplay
    I would like to see who else is the Mason at night
    So that I can have more information in the discussion
	
    Background:
	      Given that I am randomly assigned as the Mason in a game
        Given that Announcer has announced that it is the turn of the Mason
	
    Scenario: (Normal Flow) See another Mason
		    When it is Mason's turn
        And there is another Mason in the game
		    Then I should know who is the Mason with me in the discussion and label him/her as Mason
	
    Scenario: (Alternate Flow) See no Mason
		    When it is Mason's turn
        And there is no other Mason in the game
		    Then I should know there is no other Mason in the game and no label is created for me
    
    Scenario: (Error Flow) See more than one other Masons
		    When it is Mason's turn
	    	And I see more than one other Masons in the game
	    	Then the system should display an error message to every player and end the game