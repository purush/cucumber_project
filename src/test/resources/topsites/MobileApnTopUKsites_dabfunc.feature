@mobile
Feature: Using Android device check mobile DataConnection

  Scenario: Using Android device Switch off WiFi for Mobile Data

  #   Given Using Android device and serialno "9885e6455836594c55" switch on airplane mode
  #   And wait 5 sec
  #   Given Using Android device and serialno "9885e6455836594c55" switch off airplane mode
  #   And wait 5 sec
  #Given Using Android device and serialno "9885e6455836594c55" switch off WiFi
  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site.
    And Dismiss Alerts Android device serialno "9885e6455836594c55"
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And wait 15 sec
    And Check mobile data connection for serialno "9885e6455836594c55"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"
    And Click any 0 random links from the site

    Examples: 
      | apnname            | url                    | title |
      | idata-func-epg1    | https://www.bbc.co.uk/ | bbc   |
      | mobile-func-epg1   | https://www.bbc.co.uk/ | bbc   |
      | ibrowse-func-epg1  | https://www.bbc.co.uk/ | bbc   |
      | m-bb-func-epg1     | https://www.bbc.co.uk/ | bbc   |
      | isetup-func-epg1   | https://www.bbc.co.uk/ | bbc   |
      | modem-func-epg1    | https://www.bbc.co.uk/ | bbc   |
      | mvne1-func-epg1    | https://www.bbc.co.uk/ | bbc   |
      | tesco-func-epg1    | https://www.bbc.co.uk/ | bbc   |
      | payandgo-func-epg1 | https://www.bbc.co.uk/ | bbc   |
      | wap-func-epg1      | https://www.bbc.co.uk/ | bbc   |
      | idata-func-epg2    | https://www.bbc.co.uk/ | bbc   |
      | mobile-func-epg2   | https://www.bbc.co.uk/ | bbc   |
      | ibrowse-func-epg2  | https://www.bbc.co.uk/ | bbc   |
      | m-bb-func-epg2     | https://www.bbc.co.uk/ | bbc   |
      | isetup-func-epg2   | https://www.bbc.co.uk/ | bbc   |
      | modem-func-epg2    | https://www.bbc.co.uk/ | bbc   |
      | mvne1-func-epg2    | https://www.bbc.co.uk/ | bbc   |
      | tesco-func-epg2    | https://www.bbc.co.uk/ | bbc   |
      | payandgo-func-epg2 | https://www.bbc.co.uk/ | bbc   |
      | wap-func-epg2      | https://www.bbc.co.uk/ | bbc   |
