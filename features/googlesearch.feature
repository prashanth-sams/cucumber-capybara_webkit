Feature: Googlesearch
  As a user I want to be search for a keyword in Google
  So that I can obtain the search results

@javascript
Scenario: Search Keywords in Google
  Given I am on the Google home page  
  When I enter "q" with "prashanth sams"
  And I press "#gbqfb"
  Then I should see "Prashanth Sams"