Feature: View the gameplay rule

As a Player
I want to see the gameplay rule 
So that I know how to play the game

  Background: 
    Given that a game session is in progress
  
  Scenario Outline: (Normal Flow) I successfully see the game playrule
     When the Host finished setting up the game
      And the Host clicked ok
     Then the gameplay rule should successfully be shown on my screen
  
  Scenario: (Error Flow) I can not see the gameplay rule due to internet problem
     When the Host finished setting up the game
      And the Host clicked ok
      And I have internet connection problem
     Then the gameplay rule will not shown on my screen
      And the system will inform reconnecting on my screen
  
  Scenario Outline: (Alternate Flow) I can not see the gameplay because the host reset the game
     When the Host finished setting up the game
      And the Host clicked ok
      And the Host reset the game
     Then the gameplay rule should not shown on my screen
