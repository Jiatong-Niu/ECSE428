Feature: Reset the game

As a Host
I want to reset the game set up
So that I can change the cards included in the game

  Background: 
    Given that a game session is in progress
  
  Scenario Outline: (Normal Flow) I successfully reset the game
     When I clicked menu
      And the reset button is shown
      And I clicked the reset button
     Then the webpage should be successfully redirect to reset the game
  
  Scenario: (Error Flow) I can not reset the game on the preparation page
     When I clicked menu
      And the reset button is not shown
      And I can not clicked the reset button
     Then I will not be able to reset the game unless I restart the session
  
  Scenario Outline: (Alternate Flow) I can not reset the game because I am not the Host
     When I clicked menu
      And the reset button is not shown
      And I can not clicked the reset button
     Then the webpage should not be successfully redirect to reset the game
  