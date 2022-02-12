Feature: Change font size

As a player
I want to be able to change the font size
So that I can see the words with my personal preference

  Background: 
    Given I am logged in
  
  Scenario: (Normal Flow) Increase the font size 
    Given the font size is less than or equal to 64
     When I increase the font size by 1
     Then the font size is increased by 1
  
  Scenario: (Alternate Flow) Decrease the font size 
    Given the font size is greater than or equal to 2
     When I decrease the font size by 1
     Then the font size is decreased by 1
  
  Scenario: (Error Flow) Increase the font size when it is at the max
    Given the font size is at max(64)
     When I increase the font size by 1
     Then system shall display error message to me that: the font size is already maxmized
  
  Scenario: (Error Flow) Decrease the font size when it is at the min
    Given the font size is at min(2)
     When I decrease the font size by 1
     Then system shall display error message to me that: the font size is already minimized
