Feature: Exchange two other players' card

As a Troublemaker in gameplay
I may like to exchange two other players' card in my turn at night
So that I can have more information in the discussion

  Background: 
    Given that I am randomly assigned as the Troublemaker in a game
  
  Scenario: (Normal Flow) I want to exchange 
     When it is Troublemaker's turn
     Then I could choose two other players and swap their card
  
  Scenario: (Alternate Flow) I do not want to exchange
     When it is Troublemaker's turn
     Then I could choose to perform nothing
  
  Scenario: (Error Flow) I choose myself as one target to swap
     When it is Troublemaker's turn
      And I choose myself and another player to swap cards
     Then the system should not perform that request 
      And display the warning message to me since the request is not allowed