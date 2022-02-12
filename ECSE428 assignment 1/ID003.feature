Feature: ID03_Show the night has fallen page during the night

    User Stories:
    As a Player
    I want to see the night has fallen page
    So that I know the game is in action

    Background:
               Given that a game session is in progress
               And that all the players knew their identity

    Scenario Outline: (Normal Flow) I successfully see the page
               When it is not my turn
               Then the night has fallen page should successfully shown on the screen

    Scenario: (Error Flow) I do not see the page
               When it is not my turn
               And the host reset the game
               Then the night has fallen page should not successfully shown on the screen

    Scenario Outline: (Alter Flow) I successfully see the page
               When I have finished my action
               And there are other players waiting for their turn
               Then the night has fallen page should successfully shown on the screen