Feature: AddFeature
  Test add features

  Scenario Outline: Verify Plus feature of the app
    # Then I verify title display "<verifyTitleDisplay>"
    And I click the plus button
    Then I verify number display "<verifyNumberDisplay>"
    Examples:
      | verifyTitleDisplay | verifyNumberDisplay |
      | HieuTran Home Page | 1                   |

Scenario Outline: Verify clicking on "add" button
  And I click the add button
  Then I verify alert display "<verifyAlertDisplay>"
  Examples:
    | verifyAlertDisplay             |
    | Welcome to ExecuteAutomation 0 |

Scenario Outline: Verify "subtract" button
  And I click subtract button
  Then I verify number display "<verifyNumberDisplay>"
  Examples:
    | verifyNumberDisplay |
    | -1                  |