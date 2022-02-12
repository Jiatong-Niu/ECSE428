Feature: ID44_View game history

    User stories:
    As a user
    I want to be able to view my game history
    So that I could recall whom I have played the game with and analyzed where I did wrong


    Background:
    Given I am logged in

    Scenario: (Main flow) View my game histroy successfully
    When I open my game history page
    Then my game history will be displayed

    Scenario: (Alternative flow) View my game histroy but I have not played any game
    When I open my game history page
    Then no game histroy can be displayed 
    And a message: you have not played any game

    Scenario: (Error flow) 
    When I open my game histroy page
    And I turn off my Internet by mistake
    Then a pop window: no Internet connection