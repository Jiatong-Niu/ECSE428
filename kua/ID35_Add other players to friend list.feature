Feature: Add other players to frined list

As a player
I want to be able to add antoher player to my friend list 
So that I can have a game with him next time

  Background: 
    Given I am logged in
  
  Scenario: (Normal flow) Add a player to friend list successfully
     When I add a player to my friend list by his/her name
      And the name correct
     Then the player will be on my friend list
      And my number of friends increments by 1
  
  Scenario: (Alternate flow) Add a player to friend list when we are in the same game room
    Given the player and I are in the same game room
     When I add this player to my friend list
     Then the player will be on my friend list
      And my number of friends increments by 1
  
  Scenario: (Error flow) Add a friend but the input includes illegal characters
     When I add a player to my friend list by his/her name
      And the name contains illegal characters
     Then system shall display warning message to me that player-name contains illegal characters
      And my number of friends stay the same
