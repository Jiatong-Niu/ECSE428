Feature: View the game set up information

As a Player
I want to see the identification card selected by host
So that I can plan for the game

  Background: 
    Given that a game session is created
      And there are at least three players in the game session
  
  Scenario: (Normal Flow) I successfully see the information 
     When the host selects the card
     Then the selection should successfully shown on my screen
  
  Scenario: (Error Flow) I can not see the set up information
     When the host selects the card
      And I have internet connection problem
     Then the selection should not shown on my screen
      And the system will inform reconnecting message on my screen
  
  Scenario Outline: (Alternate Flow) I successfully see the information after reload
     When the host selects the card
      And I reload my webpage
     Then the selection should successfully shown on my screen
