Feature: ID45_Press key to speak

    User stories
    As a User
    I want to be able to speak by pressing a key during the game
    So that I can convey my thoughts ideas to my team mates and convince them of my opinions


    Background: 
    Given I am inside a game

    Scenario: (Main flow) speak successfully after press the key
    When I press the key
    And I speak
    Then my speech should be transfer to every player

    Scenario: (Alternative flow) press the key but I do not speak
    When I press the key
    And I do not speak
    Then no other players can hear anything from me

    Scenario: (Error flow) press multiple key 
    When I press multiple keys including the speak key
    Then the sysem display warning message to me that do not press multiple keys  