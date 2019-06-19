@mobile
Feature: Using Android test APNs for vEPG

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And Check mobile data connection for serialno "9885e6455836594c55"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                           | url                      | title |
      | vpn-full-vepg-vpgw-2              | http://xhaus.com/headers | xhaus |
      | vpn-full-vepg-vpgw-2-use-same-apn | https://www.bbc.co.uk/   | bbc   |
      | wap-full-vepg-vpgw-2              | http://xhaus.com/headers | xhaus |
      | wap-full-vepg-vpgw-2-use-same-apn | https://www.bbc.co.uk/   | bbc   |
