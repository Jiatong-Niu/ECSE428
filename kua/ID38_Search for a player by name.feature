Feature: Search for a player by name

As a player
I want to be able to search for a player by his/her name
So I can view his/her profile or add him/her to my friend list

  Background: 
    Given I am logged in
  
  Scenario: (Normal Flow) Search for a player by his/her name successfully
     When I search for a player with his/her correct name
     Then the player should be found 
      And I can see his/her profile
  
  Scenario: (Alternate Flow) Search for a player with the substring of the name
     When I search for a player with the substring of his/her name
     Then a list of players should be displayed
      And I can find the player I want 
      And I can see his/her profile
  
  Scenario: (Error Flow) Search for a player but the name includes illegal characters
     When I search for a player with the input name which includes illegal characters
     Then no player should be found
      And system shall display warning message to me that the input name includes illegal characters
