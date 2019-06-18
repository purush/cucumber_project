@mobile
Feature: Using Android device check mobile DataConnection

 
  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site.
    And Dismiss Alerts Android device serialno "9885e6455836594c55"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"
    And Click any 500 random links from the site
    And wait 5 sec

    Examples: 
      | apnname         | url                                            | title     |
      | idata-full-epg1 | https://www.instagram.com/explore/tags/photos/ | instagram |
