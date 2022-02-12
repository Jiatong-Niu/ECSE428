Feature: Restart the game

As a Host
I want to restart the game
So that we can play again

  Background: 
    Given that a game session is in progress
  
  Scenario: (Normal Flow) I successfully restart the game
     When the vote process was finished
      And the restart button is shown
      And I clicked the restart button
     Then the webpage should be successfully redirect to restart the game
  
  Scenario: (Error Flow) I can not restart the game when the game is not over
     When the vote process was not finished
      And the play again button is not shown
      And I can not click the play again button
     Then the webpage should not be successfully redirect to restart the game
  
  Scenario: (Alternate Flow) I successfully restart the game
       As a Host
     When I closed the webpage 
      And I restarted the webpage
     Then the webpage should be successfully redirect to restart the game
    
  
