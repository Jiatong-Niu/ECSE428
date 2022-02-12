Feature: ID30_Boot a player

    User Stories:
    As a Host
    I want to boot a player
    So that the player will be forced to leave the game

    Background:
               Given that a game session is in progress

    Scenario Outline: (Normal Flow) I successfully boot a spectator
               When I clicked menu
               And the boot players button is shown
               And I clicked the boot player button
               And I selected the name
               And the name is a spectator
               Then the selected spcetator should be successfully kicked out from the game 

    Scenario: (Error Flow) I can not kick a player because I am not the Host
               When I clicked menu
               And the boot players button is not shown
               And I can not click the boot player button
               And I can not select the name
               Then I can not kick the player out of the game

    Scenario Outline: (Alter Flow) I successfully boot a spectator
               When I clicked menu
               And the boot players button is shown
               And I clicked the boot player button
               And I selected the name
               And the name is a player
               And I clicked menu again
               And the boot players button is shown
               And I clicked the boot player button
               And I selected the same name
               Then the selected player should be successfully kicked out from the game 
