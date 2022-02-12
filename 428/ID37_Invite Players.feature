Feature: ID37_Invite friends to join the game


    User Stories:
    As a player
    I wantt to be able to invite other players to join my game room
    So that we can have a game together


    Background:
        Given I create a game room


    Scenario: (Normal Flow) Invite a friend from the friend list
        When I invite a player in the friend list 
        And he accepts the invitation
        Then he will be in the game room 
        And the number of players of the room increments by 1

    Scenario: (Alternative Flow) Invite a player from the friend list but the player refuses the invitation
        When I invite a player in the friend list 
        And he refuses the invitation
        Then he will not be in the game room 
        And the number of players of the room stays the same
    
    Scenario: (Error flow) Invite a player when the room is full
        Given the game room is full
        When I invite a player in the friend list 
        Then system shall display warning message to me that the room is full 
        And the number of the players of the room stays the same
        And the player can not be invited
    