Feature: ID43_Report Users inappropriate behaviour

    User stories:
    As a user
    I want to report users inappropriate behaviour
    So that bad players can be punished and we have a better community

    Background:
    Given I am logged in

    Scenario: (Main flow) Report a user successfully
    When I report a validate user by his/her name
    Then the sytem shall display a message: report received and it will be processed very soon

    Scenario: (Alternative flow) Report a user but with incorrect name
    When I report a user
    And the name is invalid 
    Then the sytem shall display a message: no such user exists

    Scenario: (Error flow) Report a user but with incorrect name
    When I report a user
    And the user is myself
    Then the sytem shall display a message: can not report yourself