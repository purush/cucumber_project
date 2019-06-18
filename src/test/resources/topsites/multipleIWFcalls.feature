@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check IWF page
    And Using Android device serialno "2adbc704fc0d7ece" open "chrome" browser
    And open browser and enter url "<url>" and check iwf page loaded and contains page title "<title>"

    Examples: 
      | url                    | title |
      | https://o2uyhlezymcd.vandviwf.com | iwf   |
     