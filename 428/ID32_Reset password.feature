Feature: ID32_Reset password

    User stories
    As a user
    I want to reset my password
    So that I still can access my account even if I forget my old password

    Background:
    Given the account is linked to an email

    Scenario: (Main flow) Reset password with verification code
    When I reset my password
    And a verification code will be sent to my email
    And I input the verification code
    And I input the new password
    Then my password is updated
    And system shall display success message to me that reset password successfully

    Scenario: (Alternative flow) Reset password failed due to unmatched verification code
    When I reset my password
    And a verification code will be sent to my email
    And I input a wrong verification code
    And I input the new password
    Then my password is not updated
    And system shall display warning message to me that wrong verification code

    Scenario: (Error flow)
    When I reset my password
    And a verification code will be sent to my email
    And I input the verification code
    And I input the new password with illegal characters
    Then my password is not updated
    And system shall display warning message to me that password includes illegal characters