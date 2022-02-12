Feature: View the cheat sheet during the game

As a Player
I want to view the cheat sheet
So that I can see the set up information during the game

  Background: 
    Given that a game session is in process
  
  Scenario: (Normal Flow) I successfully see the cheat sheet for the current game
     When the Host has set up the game
      And I clicked on the cheat sheet button
     Then the cheat sheet for the current game should be shown on my screen
  
  Scenario: (Alternate Flow) I do not see the cheat sheet for the current game but previous one was displayed instead
     When the Host has not set up the game
      And I clicked on the cheat sheet button
     Then the cheat sheet for the previous game set up should be shown on my screen
  
  Scenario: (Error Flow) I can not see the cheat sheet due to internet connection problem
     When the Host has not set up the game
      And I clicked on the cheat sheet button
      And I have internet connection problem
     Then the cheat sheet will not be shown on my screen
      And the system will display reconnecting message on my screen
