Feature: View which team win the game

As a Player
I want to view which team win the game
So that I can know the result

  Background: 
    Given that a game session is in progress
  
  Scenario: (Normal Flow) I successfully see the game result
     When all players finished voting
     Then the game result should be shown on my screen
  
  Scenario: (Error Flow) I can not see the game result
     When all players finished voting
      And I have internet connection problem
     Then the game result should not shown on my screen
      And the system will inform reconnecting on my screen
  
  Scenario: (Alternate Flow) I can not see the game result because the host reset the game
     When all players finished voting
      And the host reset the game
     Then the game result should not shown on my screen
      And the webpage should be redirected to the reset page
