Feature: Add other users to frined list

As a user
I want to be able to add antoher user to my friend list 
So that I can have a game with him next time

  Background: 
    Given I am logged in
  
  Scenario: (Normal flow) Add a user to friend list successfully
     When I add a user to my friend list by his/her name
      And the name correct
     Then the user will be on my friend list
      And my number of friends increments by 1
  
  Scenario: (Alternative flow) Add a user to friend list unsuccessfully
     When I add a user to my friend list by his/her name
      And the name is not correct
     Then the user will not be on my friend list
      And my number of friends stay the same
  
  Scenario: (Alternative flow) Add a friend but the input includes illegal characters
     When I add a user to my friend list by his/her name
      And the name contains illegal characters
     Then system shall display warning message to me that illegal username
      And my number of friends stay the same
