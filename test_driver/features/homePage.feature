Feature: AddFeature
  Test add features

  Scenario Outline: Verify Plus feature of the app
    And I click the plus button
    Then I verify number display "<verifyNumberDisplay>"
    Examples:
      | verifyNumberDisplay | verifyTitlePage    |
      | 1                   | HieuTran Home Page |

# Scenario: Verify "add" button
#   Given I verify title of page
#   And I click the add button
#   Then I verify alert displays

# Scenario: Verify "subtract" button
#   Given I verify title of page
#   And I click the subtract button
#   Then I verify number displays is "-1"