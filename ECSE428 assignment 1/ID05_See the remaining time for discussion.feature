Feature: See the remaining time for discussion

As a Player
I want to see the time countdown
So that I can prepare my speech

  Background: 
    Given that a game session is in progress
  
  Scenario: (Normal Flow) I successfully see the countdown
     When all players have finished their turn
      And it has been less than 3 minutes
     Then the countdown should successfully be shown on my screen
  
  Scenario: (Error Flow) I can not see the countdown due to internet connection problem
     When all players have finished their turn
      And it has been less than 3 minutes
     Then the countdown should not be shown on my screen
      And the system will inform reconnecting on my screen
  
  Scenario: (Alternate Flow) All players choose to skip to vote
     When all players have finished their turn
      And it has been less than 3 minutes
      And all players clicked skip to vote button
     Then the countdown should not be shown on my screen
