@mobile
Feature: Using Android device check mobile DataConnection

  Scenario: Using Android device Switch off WiFi for Mobile Data
    #  Given Using Android device and serialno "9885e6455836594c55" switch on airplane mode
    #  And wait 5 sec
    #  Given Using Android device and serialno "9885e6455836594c55" switch off airplane mode
    #  And wait 5 sec
    Given Using Android device and serialno "9885e6455836594c55" switch off WiFi
    And wait 5 sec

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site.
    And Dismiss Alerts Android device serialno "9885e6455836594c55"
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And wait 30 sec
    And Check mobile data connection for serialno "9885e6455836594c55"
    And wait 2 sec
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname            | url                    | title |
      | idata-full-epg1    | https://www.bbc.co.uk/ | bbc   |
      | idata-func-epg1    | https://www.bbc.co.uk/ | bbc   |
      | idata-serv-epg1    | https://www.bbc.co.uk/ | bbc   |
      | mobile-full-epg1   | https://www.bbc.co.uk/ | bbc   |
      | mobile-func-epg1   | https://www.bbc.co.uk/ | bbc   |
      | mobile-serv-epg1   | https://www.bbc.co.uk/ | bbc   |
      | ibrowse-full-epg1  | https://www.bbc.co.uk/ | bbc   |
      | ibrowse-func-epg1  | https://www.bbc.co.uk/ | bbc   |
      | ibrowse-serv-epg1  | https://www.bbc.co.uk/ | bbc   |
      | m-bb-full-epg1     | https://www.bbc.co.uk/ | bbc   |
      | m-bb-func-epg1     | https://www.bbc.co.uk/ | bbc   |
      | m-bb-serv-epg1     | https://www.bbc.co.uk/ | bbc   |
      | isetup-full-epg1   | https://www.bbc.co.uk/ | bbc   |
      | isetup-func-epg1   | https://www.bbc.co.uk/ | bbc   |
      | isetup-serv-epg1   | https://www.bbc.co.uk/ | bbc   |
      | modem-full-epg1    | https://www.bbc.co.uk/ | bbc   |
      | modem-func-epg1    | https://www.bbc.co.uk/ | bbc   |
      | modem-serv-epg1    | https://www.bbc.co.uk/ | bbc   |
      | mvne1-full-epg1    | https://www.bbc.co.uk/ | bbc   |
      | mvne1-func-epg1    | https://www.bbc.co.uk/ | bbc   |
      | mvne1-serv-epg1    | https://www.bbc.co.uk/ | bbc   |
      | tesco-full-epg1    | https://www.bbc.co.uk/ | bbc   |
      | tesco-func-epg1    | https://www.bbc.co.uk/ | bbc   |
      | tesco-serv-epg1    | https://www.bbc.co.uk/ | bbc   |
      | payandgo-full-epg1 | https://www.bbc.co.uk/ | bbc   |
      | payandgo-func-epg1 | https://www.bbc.co.uk/ | bbc   |
      | payandgo-serv-epg1 | https://www.bbc.co.uk/ | bbc   |
      | wap-full-epg1      | https://www.bbc.co.uk/ | bbc   |
      | wap-func-epg1      | https://www.bbc.co.uk/ | bbc   |
      | wap-serv-epg1      | https://www.bbc.co.uk/ | bbc   |
      | vpn-full-epg1      | https://www.bbc.co.uk/ | bbc   |
      | vpn-func-epg1      | https://www.bbc.co.uk/ | bbc   |
      | vpn-serv-epg1      | https://www.bbc.co.uk/ | bbc   |
      | idata-full-epg2    | https://www.bbc.co.uk/ | bbc   |
      | idata-func-epg2    | https://www.bbc.co.uk/ | bbc   |
      | idata-serv-epg2    | https://www.bbc.co.uk/ | bbc   |
      | mobile-full-epg2   | https://www.bbc.co.uk/ | bbc   |
      | mobile-func-epg2   | https://www.bbc.co.uk/ | bbc   |
      | mobile-serv-epg2   | https://www.bbc.co.uk/ | bbc   |
      | ibrowse-full-epg2  | https://www.bbc.co.uk/ | bbc   |
      | ibrowse-func-epg2  | https://www.bbc.co.uk/ | bbc   |
      | ibrowse-serv-epg2  | https://www.bbc.co.uk/ | bbc   |
      | m-bb-full-epg2     | https://www.bbc.co.uk/ | bbc   |
      | m-bb-func-epg2     | https://www.bbc.co.uk/ | bbc   |
      | m-bb-serv-epg2     | https://www.bbc.co.uk/ | bbc   |
      | isetup-full-epg2   | https://www.bbc.co.uk/ | bbc   |
      | isetup-func-epg2   | https://www.bbc.co.uk/ | bbc   |
      | isetup-serv-epg2   | https://www.bbc.co.uk/ | bbc   |
      | modem-full-epg2    | https://www.bbc.co.uk/ | bbc   |
      | modem-func-epg2    | https://www.bbc.co.uk/ | bbc   |
      | modem-serv-epg2    | https://www.bbc.co.uk/ | bbc   |
      | mvne1-full-epg2    | https://www.bbc.co.uk/ | bbc   |
      | mvne1-func-epg2    | https://www.bbc.co.uk/ | bbc   |
      | mvne1-serv-epg2    | https://www.bbc.co.uk/ | bbc   |
      | tesco-full-epg2    | https://www.bbc.co.uk/ | bbc   |
      | tesco-func-epg2    | https://www.bbc.co.uk/ | bbc   |
      | tesco-serv-epg2    | https://www.bbc.co.uk/ | bbc   |
      | payandgo-full-epg2 | https://www.bbc.co.uk/ | bbc   |
      | payandgo-func-epg2 | https://www.bbc.co.uk/ | bbc   |
      | payandgo-serv-epg2 | https://www.bbc.co.uk/ | bbc   |
      | wap-full-epg2      | https://www.bbc.co.uk/ | bbc   |
      | wap-func-epg2      | https://www.bbc.co.uk/ | bbc   |
      | wap-serv-epg2      | https://www.bbc.co.uk/ | bbc   |
      | vpn-full-epg2      | https://www.bbc.co.uk/ | bbc   |
      | vpn-func-epg2      | https://www.bbc.co.uk/ | bbc   |
      | vpn-serv-epg2      | https://www.bbc.co.uk/ | bbc   |
