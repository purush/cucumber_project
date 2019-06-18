@ios
Feature: iPAD Browse top 10 website.
  I want to use this template for my feature file

  Scenario Outline: iPAD Browse top 10 website.
    Given I have a ipad with udid "caecc423e608824f597d8a3dbc382b3addc0382f"
    Then I should be able to go to all these website "<website>"
    And Click any 3 random links from the site on ios

    Examples: 
      | website               |
      | https://www.bbc.co.uk |
