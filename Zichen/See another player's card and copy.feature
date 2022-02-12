Feature: See another player's card and copy
   
    As a DOPPELGÄNGER in gameplay
    I may like to see another players' card in my turn at night
    So that I can copy his card and perform further actions
	
    Background:
	      Given that I am randomly assigned as the DOPPELGÄNGER in a game
        Given that Announcer has announced that it is the turn of the DOPPELGÄNGER
	
    Scenario: (Normal Flow) Copy a player's card who does nothing at night
		    When it is DOPPELGÄNGER's turn
        And I randomly choose one of the following card:
            |card    |
            |Villager|
            |Tanner  |
            |Hunter  |
		    Then I should perform nothing after
        And game continue
	
    Scenario: (Alternate Flow) Copy a player's card who may has their teammates
	    	When it is DOPPELGÄNGER's turn
        And I randomly choose one of the following card:
            |card    |
            |Werewolf|
            |Mason   |
		    Then game continue
        And I perform same action with the card I copied in their turn

    Scenario: (Alternate Flow) Copy a player's card who has no teammate
		    When it is DOPPELGÄNGER's turn
        And I randomly choose one of the following card:
            |card        |
            |Seer        |
            |Robber      |
            |Troublemaker|
            |Drunk       |
		    Then I should perform their action immediately
        And game continue

    Scenario: (Alternate Flow) Copy Minion's card
		    When it is DOPPELGÄNGER's turn
        And I randomly choose the card Minion
		    Then I should know who are the Werewolves 
        And labels for Werewolf are created for me
        And game continue

    Scenario: (Alternate Flow) Copy Insomniac's card
		    When it is DOPPELGÄNGER's turn
        And I randomly choose the card Insomniac
        Then game continue
		    And I should be bale to see my card after Insomniac's turn
    
    Scenario: (Error Flow) I choose myself as one target to copy
		When it is DOPPELGÄNGER's turn
		And I choose myself to copy card
		Then the system should not perform that request and display a warning message to me since the request is not allowed