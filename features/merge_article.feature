Feature: Merge Articles
  As a blog administrator
  In order to prevent similar articles
  I want to be able to merge the contents
  of similar articles together

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist
      | id | title    | body      |
      | 2  | Foobar   | test art  |
      | 3  | Foobar 2 | text 2    |

  Scenario: Successfully merge articles
    Given I am on the article page for "Foobar"
    And I fill in "merge_with" with "3"
    And I press "Merge"
    Then the article "Foobar" should have body "test art text 2"

