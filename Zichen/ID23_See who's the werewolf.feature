Feature: See who's the werewolf

As a Minion in gameplay
I would like to see who is the Werewolf at night
So that I can have more information in the discussion and save Werewolves

  Background: 
    Given that I am randomly assigned as the Minion in a game
  
  Scenario: (Normal Flow) See at least one Werewolf player
    Given there is at least one Werewolf in the game  
     When it is Minion's turn     
     Then I should know who are the Werewolves 
      And system label them as Werewolves
  
  Scenario: (Alternate Flow) See no Werewolf player
    Given there is no Werewolf in the game
     When it is Minion's turn
     Then I should know there is no Werewolf 
      And no label is created for me
  
  Scenario: (Error Flow) Game end because of setup error
     When it is Minion's turn
      And I see more than three Werewolves in the game
     Then the system should display an error message to every player 
      And end the game
