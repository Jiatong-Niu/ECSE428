Feature: Become a spectator

As a Player
I want to be a spcetator
So that I can view the game without taking part in the game

  Background: 
    Given that a game session is created
  
  Scenario: (Normal Flow) I successfully become a spectator
     When I clicked menu
      And the spectate button is shown
      And I clicked the spectate button
     Then I should successfully become a spectator
  
  Scenario: (Error Flow) I can not become a spectator because I am the Host
    Given I am the Host
     When I clicked menu
      And the spectate button is not shown
      And I can not click the spectate button
     Then I should not successfully become a spectator
  
  Scenario: (Alternate Flow) I can not become a spectator if the game is in progress
     When I clicked menu
      And the spectate button is not shown
      And I can not click the spectate button
     Then I should not successfully become a spectator
