Feature: ID42_Change font size

    User stories
    As a User
    I want to be able to increase the font size
    So that I can see the words to overcome my poor eye sight


    Background: 
    Given I am logged in

    Scenario: (Normal Flow) Increase the font size 
        Given the font size is less than or equal to max-1
        When I increase the font size by 1
        Then the font size is increased by 1

    Scenario: (Alternative Flow) Decrease the font size 
        Given the font size is greater than or equal to min+1
        When I decrease the font size by 1
        Then the font size is decreased by 1

    Scenario: (Error Flow) Increase the font size when it is at the max
        Given the font size is at max
        When I increase the font size by 1
        Then system shall display warning message to me that: the font size is maxmized

    Scenario: (Error Flow) Decrease the font size when it is at the min
        Given the font size is at min
        When I decrease the font size by 1
        Then system shall display warning message to me that: the font size is minimized