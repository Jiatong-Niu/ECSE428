Feature: View my identification card

As a Player
I want to see my identification card
So that I can play the game

  Background: 
    Given that a game session is in progress
      And that all the players were assigned to an identification card
  
  Scenario Outline: (Normal Flow) I successfully saw my identification card
     When I scroll the webpage
     Then my identification card should be successfully shown on the screen
  
  Scenario: (Error Flow) I do not successfully saw my identification card because the host reset game
     When I scroll the webpage
      And the host reset the game
     Then my identification card should not be successfully shown on the screen
  
  Scenario Outline: (Alternate Flow) I successfully saw my identification card
     When I scroll the webpage
      And I reload the webpage
     Then my identification card should be successfully shown on the screen
  
