Feature: See the night has fallen page

As a Player
I want to see the night has fallen page
So that I know the game is in action

  Background: 
    Given that a game session is in progress
      And that all the players know their identity
  
  Scenario: (Normal Flow) I successfully see the page
     When it is not my turn
     Then the night has fallen page should successfully shown on the screen
  
  Scenario: (Error Flow) I do not see the page
     When it is not my turn
      And the host reset the game
     Then the night has fallen page should not successfully shown on the screen
  
  Scenario Outline: (Alternate Flow) I successfully see the page
     When I have finished my action
      And there are other players waiting for their turn
     Then the night has fallen page should successfully shown on the screen
