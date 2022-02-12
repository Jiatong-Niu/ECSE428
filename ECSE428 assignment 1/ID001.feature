Feature: ID01_Set up the game by choosing the card

    User Stories:
    As a Host
    I want to choose the identification cards
    So that I can start the game

    Background:
               Given that a game session is created
               And there are at least three players in the game session

    Scenario Outline: (Normal Flow) I successfully set up the game
               When I select cards that include two teams
               And the number of cards is twice the number of current players
               Then the selection should be successfully stored in the system

    Scenario: (Error Flow) I do not successfully set up the game because I select wrong cards
               When I select cards that include only one team
               And the number of cards is twice the number of current players
               Then the selection should not be successfully stored in the system
               And the system warns me that I need to select at least one card on the other team
    
    Scenario: (Alter Flow) I do not successfully set up the game because I select not enough number of cards
               When I select cards that include two teams
               And the number of cards is not twice the number of current players
               Then the selection should not be successfully stored in the system
               And the system warns me that I need to select more cards to star the game

    Scenario: (Alter Flow) I do not successfully set up the game because I select too many cards
               When I select cards that include two teams
               And the number of cards is not twice the number of current players
               Then the selection should not be successfully stored in the system
               And the system warns me that I need to unselect cards to star the game