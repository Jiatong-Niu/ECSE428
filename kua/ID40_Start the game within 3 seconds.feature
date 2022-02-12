Feature: Start the game within 3 seconds

As a player
I want to start playing the game no more than 3 seconds
So that we will not be waiting too long

  Background: 
    Given I am logged in
  
  Scenario: (Normal Flow) Start the game within 3 seconds
     When I start the game 
     Then the game is started
      And the loading time less than 3 seconds
  
  Scenario: (Alternate Flow) Start the game with loading time than more 3 seconds
     When I start the game
     Then the game is started 
      And the loading time is more than 3 seconds
  
  Scenario: (Error Flow) Unable to start the game due to Internet connection
     When I start the game
      And I have Internet connection issue
     Then the game is not started 
      And system shall display error message to me that: unable to load the game
