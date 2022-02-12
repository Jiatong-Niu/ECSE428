Feature: Boot a player

As a Host
I want to boot a player
So that the player will be forced to leave the game

  Background: 
    Given that a game session is in progress
  
  Scenario: (Normal Flow) I successfully boot a spectator
     When I clicked menu
      And I clicked the boot player button
      And I selected the player
      And the player is a spectator
     Then the selected spcetator should be successfully kicked out from the game 
  
  Scenario: (Error Flow) I can not kick a player because I am not the Host
     When I clicked menu
      And the boot players button is not shown
      And I can not click the boot player button
      And I can not select any player
     Then I can not kick the player out of the game
  
  Scenario: (Alternate Flow) I successfully boot a spectator
     When I clicked menu
      And I clicked the boot player button
      And I selected the name
      And the player is in game
      And I clicked menu again
      And I clicked the boot player button
      And I selected the same player again
     Then the selected player should be successfully kicked out from the game 
  
