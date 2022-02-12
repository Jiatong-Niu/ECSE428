Feature: ID13_View the event log of a finished game

    User Stories:
    As a Player
    I want to view the event log
    So that I can know what happened during the game

    Background:
               Given that a game session is progress

    Scenario Outline: (Normal Flow) I successfully see the event log
               When all players finished voting
               Then the event log should be shown on my screen

    Scenario: (Error Flow) I can not see the event log due to internet connection problem
               When all players finished voting
               And I have internet connection problem
               Then the event log should not shown on my screen
               And the system will inform reconnecting on my screen

    Scenario Outline: (Alter Flow) I can not see the event log because the host reset the game
               When all players finished voting
               And the host reset the game
               Then the event log should not shown on my screen
               And the webpage should be redirect to the reset page