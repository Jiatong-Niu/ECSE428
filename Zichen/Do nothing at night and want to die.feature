Feature: Do nothing at night and want to die
   
    As a Tanner in gameplay
    I would like to get voted out in the discussion
    So that I can win the game
	
    Background:
	    Given that I am randomly assigned as the Tanner in a game
	
    Scenario: (Normal Flow) Do nothing at night
	    When it is the end of the night
	    Then I should wait for the system to start the discussion period
	
    Scenario: (Alternate Flow) Click auto-skip at night
	    When it is the beginning of the night
        And I want to get notified when the night is over
	    Then I click the auto-skip button at the beginning of the night
    
    Scenario: (Error Flow) Do anything at night
		When it is other player's turn
	    And I click any player's card in the game to see
	    Then the system should not perform that request and display a warning message to me since the request is not allowed