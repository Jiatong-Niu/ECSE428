Feature: Login as Player

As a Player
I want to login in to my account
With a password and username or email
So that I can access my account information like friend list

  Scenario: (Normal Flow) Login as a player successfully 
     When I input the correct username and password
     Then I should login to my account successfully
  
  Scenario: (Alternate Flow) Login with associated email 
     When I input the email and password
     Then I should login to my account successfully
      
  Scenario: (Error Flow) Try to login with non-existing username
     When I input the non-existing username and password
     Then I cannot login to my account
      And system shall display warning message to me that illegal username
  
