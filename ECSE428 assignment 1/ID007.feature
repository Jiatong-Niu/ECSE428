Feature: ID07_Reset the game

    User Stories:
    As a Host
    I want to reset the game set up
    So that I can change the cards included in the game

    Background:
               Given that a game session is in progress

    Scenario Outline: (Normal Flow) I successfully reset the game
               When I clicked menu
               And the reset button is shown
               And I clicked the reset button
               Then the webpage should be successfully redirect to reset the game

    Scenario: (Error Flow) I can not reset the game on the preparation page
               When I clicked menu
               And the reset button is not shown
               And I can not clicked the reset button
               Then the webpage should be successfully redirect to reset the game

    Scenario Outline: (Alter Flow) I can not reset the game because I am not the Host
               When I clicked menu
               And the reset button is not shown
               And I can not clicked the reset button
               Then the webpage should be successfully redirect to reset the game
