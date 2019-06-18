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
      | ibrowse-func-vepg-vpgw-2               | http://xhaus.com/headers | xhaus |
      | ibrowse-func-vepg-vpgw-2-use-same-apn  | https://www.bbc.co.uk/   | bbc   |
      | idata-func-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | idata-func-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | isetup-func-vepg-vpgw-2                | http://xhaus.com/headers | xhaus |
      | isetup-func-vepg-vpgw-2-use-same-apn   | https://www.bbc.co.uk/   | bbc   |
      | m-bb-func-vepg-vpgw-2                  | http://xhaus.com/headers | xhaus |
      | m-bb-func-vepg-vpgw-2-use-same-apn     | https://www.bbc.co.uk/   | bbc   |
      | mobile-func-vepg-vpgw-2                | http://xhaus.com/headers | xhaus |
      | mobile-func-vepg-vpgw-2-use-same-apn   | https://www.bbc.co.uk/   | bbc   |
      | modem-func-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | modem-func-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | mvne1-func-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | mvne1-func-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | payandgo-func-vepg-vpgw-2              | http://xhaus.com/headers | xhaus |
      | payandgo-func-vepg-vpgw-2-use-same-apn | https://www.bbc.co.uk/   | bbc   |
      | tesco-func-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | tesco-func-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | vpn-func-vepg-vpgw-2                   | http://xhaus.com/headers | xhaus |
      | vpn-func-vepg-vpgw-2-use-same-apn      | https://www.bbc.co.uk/   | bbc   |
      | wap-func-vepg-vpgw-2                   | http://xhaus.com/headers | xhaus |
      | wap-func-vepg-vpgw-2-use-same-apn      | https://www.bbc.co.uk/   | bbc   |
