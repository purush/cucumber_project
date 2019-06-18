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
      | ibrowse-full-vepg-vpgw-2               | http://xhaus.com/headers | xhaus |
      | ibrowse-full-vepg-vpgw-2-use-same-apn  | https://www.bbc.co.uk/   | bbc   |
      | idata-full-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | idata-full-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | isetup-full-vepg-vpgw-2                | http://xhaus.com/headers | xhaus |
      | isetup-full-vepg-vpgw-2-use-same-apn   | https://www.bbc.co.uk/   | bbc   |
      | m-bb-full-vepg-vpgw-2                  | http://xhaus.com/headers | xhaus |
      | m-bb-full-vepg-vpgw-2-use-same-apn     | https://www.bbc.co.uk/   | bbc   |
      | mobile-full-vepg-vpgw-2                | http://xhaus.com/headers | xhaus |
      | mobile-full-vepg-vpgw-2-use-same-apn   | https://www.bbc.co.uk/   | bbc   |
      | modem-full-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | modem-full-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | mvne1-full-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | mvne1-full-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | payandgo-full-vepg-vpgw-2              | http://xhaus.com/headers | xhaus |
      | payandgo-full-vepg-vpgw-2-use-same-apn | https://www.bbc.co.uk/   | bbc   |
      | tesco-full-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | tesco-full-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | vpn-full-vepg-vpgw-2                   | http://xhaus.com/headers | xhaus |
      | vpn-full-vepg-vpgw-2-use-same-apn      | https://www.bbc.co.uk/   | bbc   |
      | wap-full-vepg-vpgw-2                   | http://xhaus.com/headers | xhaus |
      | wap-full-vepg-vpgw-2-use-same-apn      | https://www.bbc.co.uk/   | bbc   |
