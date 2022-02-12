Feature: Look for other Masons
   
    As a Mason in gameplay
    I would like to see who else is the Mason at night
    So that I can have more information in the discussion
	
    Background:
	    Given that I am randomly assigned as the Mason in a game
	
    Scenario: (Normal Flow) See another Mason
        Given there is another Mason in the game
		When it is Mason's turn
		Then I should know whoelse is the Mason 
        And system label him/her as Mason
	
    Scenario: (Alternate Flow) See no Mason
        Given there is no other Mason in the game
		When it is Mason's turn
		Then I should know there is no other Mason in the game
        And no label is created for me
    
    Scenario: (Error Flow) Game end because of setup error
        Given there is only two Masons in the game
		When it is Mason's turn
	    And I see more than one other Masons in the game
	    Then the system should display an error message to every player 
        And end the game