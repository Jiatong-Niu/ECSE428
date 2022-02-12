Feature: View game history

As a player
I want to be able to view my game history
So that I could recall whom I have played the game with and analyzed where I did wrong

  Background: 
    Given I am logged in
  
  Scenario: (Normal flow) View my game histroy successfully
     When I open my game history page
     Then my game history will be displayed
  
  Scenario: (Alternate flow) View my game histroy but I have not played any game
     When I open my game history page
     Then no game histroy can be displayed 
      And system will display a message: you have not played any game
  
  Scenario: (Error flow) Display error due to internet connection error
     When I open my game histroy page
      And I have no internet access
     Then system shall pop a window with error message: "no Internet connection"
