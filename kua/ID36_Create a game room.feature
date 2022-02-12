Feature: Create a game room

As a player
I want to be able to create a game room with a room name 
So that I can invite my frineds to the room and we can have a game together

  Background: 
    Given I have login my account
  
  Scenario: (Normal Flow) Create a game room with a name successfully
     When I create a game room with a unique room name
     Then a game room is created with the name
  
  Scenario: (Alternate Flow) Create a game room with auto-generated name
     When I create a game room
      And I set the room name to be auto-generated name 
     Then a game room is created with the name
  
  Scenario: (Error Flow) Create a game room with illegal characters
     When I create a game room with a room name containing illegal characters
     Then A game room is not created
      And system shall display warning message to me that the room name containing illegal characters
