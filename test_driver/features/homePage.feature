Feature: AddFeature
  Test add features

  # Scenario Outline: Verify Plus feature of the app
  #   And I click the plus button
  #   Then I verify number display "<verifyNumberDisplay>"
  #   Examples:
  #     | verifyNumberDisplay |
  #     | 1                   |

  Scenario Outline: Verify clicking on "add" button
    And I click the add button
    Given I verify alert displays "<verifyAlertDisplay>"
    Examples:
      | verifyAlertDisplay             |
      | Welcome to ExecuteAutomation 0 |

  # Scenario Outline: Verify "subtract" button
  #   And I click subtract button
  #   Then I verify number display "<verifyNumberDisplay>"
  #   Examples:
  #     | verifyNumberDisplay |
  #     | -1                  |