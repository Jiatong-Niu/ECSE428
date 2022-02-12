Feature: Login as User

As a user
I want to login in to my account
With a password and username
So that I can access my account information like friend list

  Scenario: (Normal Flow) Login as a User successfully 
     When I input the correct username and password
     Then I should login to my account successfully
  
  Scenario: (Alternate Flow) Login fail due to incorrect password 
     When I input the username and incorrect password
     Then I cannot login to my account
      And system shall display warning message to me that incorrect password
  
  Scenario: (Error Flow) Try to login with non-existing username
     When I input the non-existing username and password
     Then I cannot login to my account
      And system shall display warning message to me that illegal username
  
