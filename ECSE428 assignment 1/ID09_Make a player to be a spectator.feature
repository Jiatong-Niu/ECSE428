Feature: Make a player to be a spectator

As a Host
I want to make a player to be a spcetator
So that the player can view the game without taking part in the game

  Background: 
    Given that a game session is in progress
    And I am a Host
  
  Scenario: (Normal Flow) I successfully make a player to be a spectator
     When I clicked menu
      And the boot players button is shown
      And I clicked the boot player button
      And I selected the name
      And the name is a player
     Then the selected player should be successfully become a spectator
  
  Scenario: (Error Flow) I can not make a player to be a spectator because the player is already a spectator
     When I clicked menu
      And the boot players button is shown
      And I clicked the boot player button
      And I selected the player
      And the player is already a spectator
     Then the selected player will be kicked out of the game
  
  Scenario: (Alternate Flow) I make a player spectator after he/she rejoin the game
     When a spectator rejoin in the game
      And I clicked menu
      And the boot players button is shown
      And I can click the boot player button
      And I can select the name of the player who just joined the game
     Then I can make this player to be a spectator
  
