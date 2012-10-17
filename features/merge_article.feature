Feature: Merge Articles
  As a blog administrator
  In order to write more than one article on the same topic and say similar things
  I want to be able to merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
	  And the following articles exist:
  | title			| body_and_extended | author		| comments |
  | article1  | content1          | author1		| comment1 |
  | article2  | content2          | author2		| comment2 |
  

  Scenario: A non-admin cannot merge articles.


  Scenario: When articles are merged, the merged article should contain the text of both previous articles.
    Given I am on the edit page for article1
    When I fill in "Article ID" with "1"
    And I press "Merge"
    When I go to the edit page for article1
    Then I should see content1 and content2.

  Scenario: When articles are merged, the merged article should have one author
 	
  Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article.
  
  Scenario: The title of the new article should be the title from either one of the merged articles.
