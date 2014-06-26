Feature: Manage Categories
  As a blog administrator
  In order to organize my blog
  I want to be able to view and
  modify my categories

Background:
  Given the blog is set up
  And I am logged into the admin panel

Scenario:
  Given I am on the Dashboard page
  When I follow "Categories"
  Then I should be on the Admin Categories page
