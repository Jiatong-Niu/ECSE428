Feature: ID38_Search for a user by his/her name

    User Stories:
    As a user
    I want to be able to search for a user by his/her name
    So I can view his/her profile or add him/her to my friend list


    Background: 
        Given I am logged in


    Scenario: (Normal Flow) Search for a user by his/her name successfully
        When I search for a user with his/her correct name
        Then the user should be found 
        And I can see his/her profile

    Scenario: (Alternative Flow) Search for a user but the name is incorrect
        When I search for a user with his/her incorrect name
        Then no user should be found 
        And system shall display warning message to me that can not find user with this name

    Scenario: (Error Flow) Search for a user but the name includes illegal character
        When I search for a user with the input name which includes illegal characters
        Then no user should be found
        And system shall display warning message to me that the input name includes illegal character