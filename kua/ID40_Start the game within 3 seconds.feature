Feature: Start the game within 3 seconds

As a player
I want to start playing the game no more than 3 seconds
So that we will not be waiting too long

  Background: 
    Given I am logged in
     And I am in a game room
  
  Scenario: (Normal Flow) Start the game within 3 seconds
     When I start the game 
     Then the game is started
      And I should have to wait no longer than the max acceptable wait time 3 seconds
  
  Scenario: (Alternate Flow) Start the game with loading time than more 3 seconds
     Given I start the game
     When the loading time takes more than the max acceptable wait time 3 seconds
     Then the problem is logged
      And the game is eventually started
  
  Scenario: (Error Flow) Timeouts are logged when starting the game and no idea about the state of the game
     Given I start the game
     When the loading time takes more than the max acceptable wait time 3 seconds
     And game is not responding
     Then the problem is logged with "Unkonwn error" and player shall restart the game
