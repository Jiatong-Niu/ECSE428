Feature: ID12_View the role of each player

    User Stories:
    As a Player
    I want to view the role of all player
    So that I can who was on my team

    Background:
               Given that a game session is progress

    Scenario Outline: (Normal Flow) I successfully see the roles
               When all players finished voting
               Then the role of each player should be shown on my screen

    Scenario: (Error Flow) I can not see the role of each player due to internet connection problem
               When all players finished voting
               And I have internet connection problem
               Then the role of each player should not shown on my screen
               And the system will inform reconnecting on my screen

    Scenario Outline: (Alter Flow) I can not see the role of each player because the host reset the game
               When all players finished voting
               And the host reset the game
               Then the role of each player should not shown on my screen
               And the webpage should be redirect to the reset page