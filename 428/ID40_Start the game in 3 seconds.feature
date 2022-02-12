Feature: ID40_Start the game within 3 seconds

    User stories:
    As a user
    I want to start the game within 3 seconds
    So that we will not be waiting for a long time

    Background:
    Given I am logged in


    Scenario: (Main Flow) Start the game within 3 seconds
        When I strat the game 
        Then the game is started
        And the loading time less than 3 seconds

    Scenario: (Alternative Flow) Start the game with loading time than more 3 seconds
        When I strat the game
        Then the game is started 
        And the loading time is more than 3 seconds

    Scenario: (Error Flow) Unable to start the game due to Internet connection
        When I strat the game
        And I have Internet connection issue
        Then the game is not started 
        And system shall display warning message to me that: unable to load the game