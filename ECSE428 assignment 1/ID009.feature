Feature: ID09_Make a player to be a spectator

    User Stories:
    As a Host
    I want to make a player to be a spcetator
    So that the player can view the game without taking part in the game

    Background:
               Given that a game session is in progress

    Scenario Outline: (Normal Flow) I successfully make a player to be a spectator
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
               And the name is a spectator
               Then the selected player will be kicked out of the game

    Scenario Outline: (Alter Flow) I can not make a player to be a spectator because I am not the Host
               When I clicked menu
               And the boot players button is not shown
               And I can not click the boot player button
               And I can not select the name
               Then I can not make a player to be a spectator
