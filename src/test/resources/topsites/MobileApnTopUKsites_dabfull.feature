@mobile
Feature: Using Android device check mobile DataConnection

  Scenario: Using Android device Switch off WiFi for Mobile Data
    #   Given Using Android device and serialno "9885e6455836594c55" switch on airplane mode
    #   And wait 5 sec
    #   Given Using Android device and serialno "9885e6455836594c55" switch off airplane mode
    #   And wait 5 sec
    Given Using Android device and serialno "9885e6455836594c55" switch off WiFi
    And wait 0 sec

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site.
    And Dismiss Alerts Android device serialno "9885e6455836594c55"
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And wait 5 sec
    And Check mobile data connection for serialno "9885e6455836594c55"
    And wait 1 sec
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname            | url                    | title |
      | idata-full-epg1    | https://www.bbc.co.uk/ | bbc   |
      | mobile-full-epg1   | https://www.bbc.co.uk/ | bbc   |
      | ibrowse-full-epg1  | https://www.bbc.co.uk/ | bbc   |
      | m-bb-full-epg1     | https://www.bbc.co.uk/ | bbc   |
      | isetup-full-epg1   | https://www.bbc.co.uk/ | bbc   |
      | modem-full-epg1    | https://www.bbc.co.uk/ | bbc   |
      | mvne1-full-epg1    | https://www.bbc.co.uk/ | bbc   |
      | tesco-full-epg1    | https://www.bbc.co.uk/ | bbc   |
      | payandgo-full-epg1 | https://www.bbc.co.uk/ | bbc   |
      | wap-full-epg1      | https://www.bbc.co.uk/ | bbc   |
      | vpn-full-epg1      | https://www.bbc.co.uk/ | bbc   |
      | idata-full-epg2    | https://www.bbc.co.uk/ | bbc   |
      | mobile-full-epg2   | https://www.bbc.co.uk/ | bbc   |
      | ibrowse-full-epg2  | https://www.bbc.co.uk/ | bbc   |
      | m-bb-full-epg2     | https://www.bbc.co.uk/ | bbc   |
      | isetup-full-epg2   | https://www.bbc.co.uk/ | bbc   |
      | modem-full-epg2    | https://www.bbc.co.uk/ | bbc   |
      | mvne1-full-epg2    | https://www.bbc.co.uk/ | bbc   |
      | tesco-full-epg2    | https://www.bbc.co.uk/ | bbc   |
      | payandgo-full-epg2 | https://www.bbc.co.uk/ | bbc   |
      | wap-full-epg2      | https://www.bbc.co.uk/ | bbc   |
      | vpn-full-epg2      | https://www.bbc.co.uk/ | bbc   |
