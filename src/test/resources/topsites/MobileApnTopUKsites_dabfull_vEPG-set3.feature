@mobile
Feature: Using Android test APNs for vEPG

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "2adbc704fc0d7ece" set apn "<apnname>"
    And Check mobile data connection for serialno "2adbc704fc0d7ece"
    And Using Android device serialno "2adbc704fc0d7ece" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                                | url                      | title |
      | mvne1-full-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | mvne1-full-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
      | payandgo-full-vepg-vpgw-2              | http://xhaus.com/headers | xhaus |
      | payandgo-full-vepg-vpgw-2-use-same-apn | https://www.bbc.co.uk/   | bbc   |
      | tesco-full-vepg-vpgw-2                 | http://xhaus.com/headers | xhaus |
      | tesco-full-vepg-vpgw-2-use-same-apn    | https://www.bbc.co.uk/   | bbc   |
