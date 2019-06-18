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
    And wait 15 sec
    And Check mobile data connection for serialno "9885e6455836594c55"
    And wait 1 sec
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"
    And Click any 0 random links from the site
    


    Examples: 
      | apnname            | url                    | title |
      | idata-serv-epg1    | https://www.bbc.co.uk/ | bbc   |
      | mobile-serv-epg1   | https://www.bbc.co.uk/ | bbc   |
      | ibrowse-serv-epg1  | https://www.bbc.co.uk/ | bbc   |
      | m-bb-serv-epg1     | https://www.bbc.co.uk/ | bbc   |
      | isetup-serv-epg1   | https://www.bbc.co.uk/ | bbc   |
      | modem-serv-epg1    | https://www.bbc.co.uk/ | bbc   |
      | mvne1-serv-epg1    | https://www.bbc.co.uk/ | bbc   |
      | tesco-serv-epg1    | https://www.bbc.co.uk/ | bbc   |
      | payandgo-serv-epg1 | https://www.bbc.co.uk/ | bbc   |
      | wap-serv-epg1      | https://www.bbc.co.uk/ | bbc   |
      | idata-serv-epg2    | https://www.bbc.co.uk/ | bbc   |
      | mobile-serv-epg2   | https://www.bbc.co.uk/ | bbc   |
      | ibrowse-serv-epg2  | https://www.bbc.co.uk/ | bbc   |
      | m-bb-serv-epg2     | https://www.bbc.co.uk/ | bbc   |
      | isetup-serv-epg2   | https://www.bbc.co.uk/ | bbc   |
      | modem-serv-epg2    | https://www.bbc.co.uk/ | bbc   |
      | mvne1-serv-epg2    | https://www.bbc.co.uk/ | bbc   |
      | tesco-serv-epg2    | https://www.bbc.co.uk/ | bbc   |
      | payandgo-serv-epg2 | https://www.bbc.co.uk/ | bbc   |
      | wap-serv-epg2      | https://www.bbc.co.uk/ | bbc   |
