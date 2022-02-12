Feature: View the role of each player at the end of the game

As a Player
I want to view the role of all players
So that I can know who was on my team

  Background: 
    Given that a game session is in progress
  
  Scenario Outline: (Normal Flow) I successfully see the roles
     When all players finished voting
     Then the role of each player should be shown on my screen
  
  Scenario: (Error Flow) I can not see the role of each player due to internet connection problem
     When all players finished voting
      And I have internet connection problem
     Then the role of each player should not shown on my screen
      And the system will display reconnecting message on my screen
  
  Scenario Outline: (Alternate Flow) I can not see the role of each player because the host reset the game
     When all players finished voting
      And the host reset the game
     Then the role of each player should not shown on my screen
      And the webpage should be redirected to the reset page
