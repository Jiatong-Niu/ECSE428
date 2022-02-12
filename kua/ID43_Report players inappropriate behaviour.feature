Feature: Report player's inappropriate behaviour

As a player
I want to report players inappropriate behaviour
So that bad players can be punished and we can have a better community

  Background: 
    Given I am logged in
  
  Scenario: (Main flow) Report a player successfully
     When I report a validate player by his/her name
     Then the sytem shall display a message: report received and it will be processed very soon
  
  Scenario: (Alternative flow) Report a player but with incorrect name
     When I report a player
      And the name is invalid 
     Then the sytem shall display a message: no such player exists
      And the system will prompt and wait for my next input
  
  Scenario: (Error flow) Report a player but with incorrect name
     When I report a player
      And the player is myself
     Then the sytem shall display a warning message: can not report yourself
