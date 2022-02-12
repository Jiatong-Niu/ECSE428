Feature: ID15_View waiting information

    User Stories:
    As a Player
    I want to view waiting information
    So that I can know which player has not finish checking

    Background:
               Given that a game session is progress

    Scenario Outline: (Normal Flow) I successfully see the how many players I am waiting
               When I have finished checking 
               And there are other players who have not finished checking
               Then the waiting information should be shown on my screen

    Scenario: (Error Flow) I do not see the waiting information
               When I have finished checking 
               And there are no other players who have not finished checking
               Then the waiting information should not be shown on my screen

    Scenario Outline: (Alter Flow) I successfully see which player I am waiting
               When I have finished checking 
               And there is one player who has not finished checking
               Then the waiting information should be shown on my screen