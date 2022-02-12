Feature: Change the name

As a player
I want to change my player name
So that I can show my individuality and difference in case I get board of my old player name

  Background: 
    Given I am logged in 
  
  Scenario: (Normal Flow) Change my name successfully
     When I chagne the player name and input a new unique name
     Then my player name is updated
  
  Scenario: (Alternate Flow) New name is taken by another player
     When I chagne the player name and input a non-unique name
     Then my player name is not updated
      And system shall display a message to me that the name is already taken
      And system will wait for my next input name
  
  Scenario: (Error Flow) New name includes illegal characters
     When I chagne the player name and input illegal characters
     Then my player name is not updated
      And system shall display a warning message to me that: input name cannot contain illegal characters
  