Feature: Look at another players' card
   
    As a Seer in gameplay
    I would like to see another player's card
    So that I can give more information in the discussion
	
    Background:
		Given that I am randomly assigned as the Seer in a game
        Given that Announcer has announced that it is the turn of the Seer
	
    Scenario: (Normal Flow) I want to see another player's card
        When it is Seer's turn
		Then I could choose a player to see his/her card
        And I end my turn
	
    Scenario: (Alternate Flow) I want to see two cards in the center
        When it is Seer's turn
		Then I could choose to look at two cards in the center
        And I end my turn

    Scenario: (Error Flow) Wrong action performed in other player's turn
        When it is not Seer's turn
        And I choose to perform my action
        Then the system should display error message to all players and end the game