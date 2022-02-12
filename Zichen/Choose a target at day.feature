Feature: Choose a target at day
   
    As a Hunter in gameplay
    I may like to choose a player at the end of the discussion
    So that I can bring that player out of the game if I get voted
	
    Background:
	      Given that I am randomly assigned as the Hunter in a game
	
    Scenario: (Normal Flow) Choose a target player
	      When it is the end of the discussion period
	      Then I should choose a player 
	
    Scenario: (Alternate Flow) Do not choose a player
	      When it is the end of the discussion period
        And I do not want to bring a player with me out of the game
	      Then I do not choose any player
    
    Scenario: (Error Flow) Choose more than one player 
		    When it is the end of the discussion period
	      And I choose more than one players in the game
	      Then the system should not perform that request 
        And display a warning message to me since the request is not allowed