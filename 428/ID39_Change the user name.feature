Feature: ID39_Change the user name

    User Stories:
    As a user
    I want to change my user name
    So that I can show my individuality and difference in case I get board of my old user name


    Background:
    Given I am logged in 


    Scenario: (Normal Flow) Change my user name successfully
        When I chagne the user name and input a new unique name
        Then my user name is updated

    Scenario: (Alternative Flow) Change my user name unsuccessfully
        When I chagne the user name and input a non-unique name
        Then my user name is not updated
        And system shall display warning message to me that the name is taken

    Scenario: (Error Flow) Search for a user but the name is null 
        When I chagne the user name and input Null
        Then my user name is not updated
        And system shall display warning message to me that: input name cannot be null
