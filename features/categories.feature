Feature: Create and Edit Categories
  As an author
  In order to gift my thoughts to the world
  I want to create a category
  
  Background:                            
    Given the blog is set up             
    And I am logged into the admin panel
  
  Scenario: Get to the categories page from admin
    Given I am on the admin page
    And I follow "Categories"
    Then I should be on the categories page
  
  Scenario: Create category page shown
    Given I am on the categories page
    Then I should see "Permalink"
    And I fill in "category_name" with "Usador"
    And I fill in "Keywords" with "Wizard"
    And I fill in "Description" with "Wizard of the 12th realm of Ephiseus."
    And I press "Save"
    Then I should be on the categories page
    And I should see "Category was successfully saved."
