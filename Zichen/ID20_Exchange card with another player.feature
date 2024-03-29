Feature: Exchange card with another player

As a Robber in gameplay
I may like to exchange my card with another player
So that I can have more information in the discussion to let myself win

  Background: 
    Given that I am randomly assigned as the Robber in a game
  
  Scenario: (Normal Flow) I want to exchange my card with another player
     When it is Robber's turn
     Then I could choose a player to exchange our cards
      And I should see the new card I have now
  
  Scenario: (Alternate Flow) I do not want to exchange my card with another player
     When it is Robber's turn
     Then I could choose to perform nothing
  
  Scenario: (Error Flow) I choose myself as target
     When it is Robber's turn
      And I choose myself to exchange the card
     Then the system should not perform that request 
      And display the warning message to me