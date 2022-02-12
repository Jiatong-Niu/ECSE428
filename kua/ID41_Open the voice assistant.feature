Feature: Open the voice assistant

As a player with eye disability
I want to be able to turn on the voice assistant 
So that I can play the game without being hindered by eye disability

  Background: 
    Given I am logged in
      And the voice assistant is off
  
  Scenario: (Normal Flow) Turn on the assistant
     When I turn on the voice assistant
     Then the voice assistant is turned on
  
  Scenario: (Alternate) Flow) Turn off the voice assistant
     When I turn off the voice assistant
     Then the voice assistant stays turned off
  
  Scenario: (Error Flow) Unable turn on the voice due to hardware
    Given I do not have any hardware peripheral for audio
     When I turn on the voice assistant
     Then system shall display error message to me that: no hardware support can be found
  