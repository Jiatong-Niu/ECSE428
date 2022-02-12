Feature: Exchange my card with a card from the center

As a Drunk in gameplay
I may like to exchange a card from the center at night
So that I can create more confusions in the discussion

  Background: 
    Given that I am randomly assigned as the Drunk in a game
  
  Scenario: (Normal Flow) Exchange card
     When it is Drunk's turn
     Then I should choose one card in center
      And I become the identity I choose now
      But I do not know the card I exchanged
  
  Scenario: (Alternate Flow) Do not exchange card
     When it is Drunk's turn
     Then I may not choose any card in center
      And game continue
  
  Scenario: (Error Flow) Exchange with another player
     When it is Drunk's turn
      And I choose another player in game to exchange
     Then the system should not perform that request 
      And display a warning message to me since the request is not allowed
