@mobile
Feature: Using Android test APNs for vEPG

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Dismiss Alerts Android device serialno "9885e6455836594c55"
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And wait 5 sec
    And Check mobile data connection for serialno "9885e6455836594c55"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                                | url                      | title |
      | ibrowse-serv-vepg-vpgw-2               | http://xhaus.com/headers | xhaus |
      | ibrowse-serv-vepg-vpgw-2-use-same-apn  | https://www.bbc.co.uk/   | bbc   |
      | idata-serv-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | idata-serv-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | isetup-serv-vepg-vpgw-2                | http://xhaus.com/headers | xhaus |
      | isetup-serv-vepg-vpgw-2-use-same-apn   | https://www.bbc.co.uk/   | bbc   |
      | m-bb-serv-vepg-vpgw-2                  | http://xhaus.com/headers | xhaus |
      | m-bb-serv-vepg-vpgw-2-use-same-apn     | https://www.bbc.co.uk/   | bbc   |
      | mobile-serv-vepg-vpgw-2                | http://xhaus.com/headers | xhaus |
      | mobile-serv-vepg-vpgw-2-use-same-apn   | https://www.bbc.co.uk/   | bbc   |
      | modem-serv-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | modem-serv-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | mvne1-serv-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | mvne1-serv-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | payandgo-serv-vepg-vpgw-2              | http://xhaus.com/headers | xhaus |
      | payandgo-serv-vepg-vpgw-2-use-same-apn | https://www.bbc.co.uk/   | bbc   |
      | tesco-serv-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | tesco-serv-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | vpn-serv-vepg-vpgw-2                   | http://xhaus.com/headers | xhaus |
      | vpn-serv-vepg-vpgw-2-use-same-apn      | https://www.bbc.co.uk/   | bbc   |
      | wap-serv-vepg-vpgw-2                   | http://xhaus.com/headers | xhaus |
      | wap-serv-vepg-vpgw-2-use-same-apn      | https://www.bbc.co.uk/   | bbc   |
