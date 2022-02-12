Feature: Look at another player's card or two of the center cards
   
    As a Seer in gameplay
    I would like to see another player's card or two of the center cards
    So that I can give more information in the discussion
	
    Background:
		Given that I am randomly assigned as the Seer in a game
	
    Scenario: (Normal Flow) I want to see another player's card
        When it is Seer's turn
		Then I could choose a player to see his/her card
        And system label his identity for me
	
    Scenario: (Alternate Flow) I want to see two cards in the center
        When it is Seer's turn
		Then I could choose to look at two cards in the center
        And system label the two cards for me

    Scenario: (Error Flow) Wrong action performed in other player's turn
        When it is not Seer's turn
        And I choose to perform my action
        Then the system should display warning message to me 
        And system should not perform that request