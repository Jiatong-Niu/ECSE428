Feature: View waiting information

As a Player
I want to view waiting information
So that I can know which player has not finish checking

  Background: 
    Given that a game session is in progress
  
  Scenario: (Normal Flow) I successfully see the number of players I am waiting
     When I have finished checking 
      And there are other players who have not finished checking
     Then the number of players I am waiting should be shown on my screen
  
  Scenario: (Error Flow) I do not see the waiting information due to internet connection problem
     When I have finished checking 
      And there are other players who have not finished checking
      And I have internet connection problem
     Then the waiting information should not be shown on my screen
      And the system will display reconnecting message on my screen
  
  Scenario: (Alternate Flow) I successfully see which player I am waiting
     When I have finished checking 
      And there is one player who has not finished checking
     Then the waiting information of that player's name should be shown on my screen
