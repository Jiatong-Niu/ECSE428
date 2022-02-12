Feature: Press V key to speak

As a player
I want to be able to speak by pressing a key during the game
So that I can convey my thoughts ideas to my team mates and convince them of my opinions

  Background: 
    Given I am inside a game
    And it is the discussion period
  
  Scenario: (Normal flow) Speak successfully after press the V key
     When I press the V key
      And I speak
     Then my speech should be transfer to every player
  
  Scenario: (Alternate flow) Press the key but I do not speak
     When I press the V key
      And I do not speak
     Then other players can not hear anything from me
  
  Scenario: (Error flow) Press multiple keys
     When I press multiple keys including the V key
     Then the sysem will display warning message to me that do not press multiple keys  
      And no voice is conveyed to other players
