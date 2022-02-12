Feature: View what cards are not included in the game

As a Player
I want to view card distribution information
So that I can know what happened during the game

  Background: 
    Given that a game session is in progress
  
  Scenario: (Normal Flow) I successfully see the card distribution information
     When all players finished voting
     Then the cards that were not distributed in game should be shown on my screen
  
  Scenario: (Error Flow) I can not see the card distribution information due to internet connection problem
     When all players finished voting
      And I have internet connection problem
     Then the cards that were not distributed in game should not shown on my screen
      And the system will inform reconnecting on my screen
  
  Scenario: (Alternate Flow) I can not see the card distribution information because the host reset the game
     When all players finished voting
      And the host reset the game
     Then the cards that were not distributed in game should not shown on my screen
      And the webpage should be redirected to the reset page
