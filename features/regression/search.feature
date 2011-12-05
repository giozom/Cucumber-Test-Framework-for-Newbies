Feature: A simple google search

Scenario: A simple google search scenario
  Given I am on the main google search
  And I search for "site:qastuffs.blogspot.com"
  And I click on the "QA Blog" link
  Then I should land on the qastuffs blog
