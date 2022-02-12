Feature: Restart the game

As a Host
I want to restart the game
So that we can play again

  Background: 
    Given that a game session is in progress
  
  Scenario: (Normal Flow) I successfully reset the game
     When the vote process was finished
      And the restart button is shown
      And I clicked the restart button
     Then the webpage should be successfully redirect to restart the game
  
  Scenario: (Error Flow) I can not reset the game when the game is not over
     When the vote process was not finished
      And the play again button is not shown
      And I can not click the play again button
     Then the webpage should not be successfully redirect to restart the game
  
  Scenario: (Alternate Flow) I can not reset the game because I am not the Host
     When the vote process was finished
      And the play again button is shown
      And I clicked the play again button
     Then the webpage should not be successfully redirect to restart the game
      And system will inform me that the game is waiting for host
  
