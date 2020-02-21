Feature: AddFeature
  Test add features

  Scenario Outline: Verify Plus feature of the app
    And I click the plus button
    Then I verify number display "<verifyNumberDisplay>"
    Examples:
      | verifyNumberDisplay |
      | 1                   |

  # Scenario: Verify clicking on "add" button
  #   And I click the add button
  #   Then I verify alert displays

  Scenario Outline: Verify "subtract" button
    And I click subtract button
    Then I verify number display "<verifyNumberDisplay>"
    Examples:
      | verifyNumberDisplay |
      | -1                  |