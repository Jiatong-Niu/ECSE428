Feature: Vote for a suspect

As a player
I want to be able to vote for a suspect
So that I can win the game if one wolf gets the majority vote

  Background: 
    Given that discurssion period is end 
    And it is time to vote
  
  Scenario Outline: (Normal Flow) Vote for a player to kill him/her
     When it is the voting time
      And I vote a player as the wolf
     Then this player's vote count increments by 1
  
  Scenario: (Alternate Flow) Do not vote
     When it is the voting time
      And I do not want to vote anyone
     Then game continues
  
  Scenario: (Error Flow) Vote for myself  
     When it is the voting time
      And I vote myself as the wolf
     Then system shall display warning message to me that cannot vote for yourself
      And my vote count stays the same 
