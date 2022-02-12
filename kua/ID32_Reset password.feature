Feature: Reset password

As a player
I want to reset my password
So that I still can access my account even if I forget my old password

  Background: 
    Given the account is linked to an email
  
  Scenario: (Normal flow) Reset password with verification code from email
     When I reset my password
      And a verification code will be sent to my email
      And I input the verification code
      And I input the new password
     Then my password is updated
      And system shall display success message to me that reset password successfully
  
  Scenario: (Alternate flow) Reset password with verification code from text message
     When I reset my password
      And a verification code will be sent to my phone by text message
      And I input the verification code
      And I input the new password
     Then my password is updated
      And system shall display success message to me that reset password successfully
  
  Scenario: (Error flow) Reset password failed due to illegal characters
     When I reset my password
      And a verification code will be sent to my email
      And I input the verification code
      And I input the new password with illegal characters
     Then my password is not updated
      And system shall display warning message to me that password includes illegal characters
