Feature: Look at my card at night
   
    As an Insomniac in gameplay
    I may like to see my card in my turn at night
    So that I can have more information in the discussion
	
    Background:
	    Given that I am randomly assigned as the Insomniac in a game
	
    Scenario: (Normal Flow) Look at my card 
	    When it is Insomniac's turn
	    Then I should look at my card right away
	
    Scenario: (Alternate Flow) Do not look at my card
	    When it is Insomniac's turn
        And I do not want to see my card
	    Then game continue
    
    Scenario: (Error Flow) Look at another player's card
		When it is Insomniac's turn
	    And I choose another player's card in the game to see
	    Then the system should not perform that request 
        And display a warning message to me since the request is not allowed