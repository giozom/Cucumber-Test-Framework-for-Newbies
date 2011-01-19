Feature: A simple google search

Scenario: A simple google search scenario
  Given I am on the main google search
  And I search for "site:qastuffs.blogspot.com"
  And I click on the search button
  And I click on the first result
  Then I should land on the qastuffs blog
