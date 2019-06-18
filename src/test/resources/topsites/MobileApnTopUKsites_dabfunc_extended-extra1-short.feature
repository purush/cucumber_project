@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                      | url                             | title   |
      | m-bb-func-epg1               | https://www.bbc.co.uk/          | bbc     |
      | m-bb-func-epg1-use-same-apn  | https://twitter.com/?lang=en-gb | twitter |
      | m-bb-func-epg1-use-same-apn  | https://www.ebay.co.uk/         | ebay    |
      | m-bb-func-epg1-use-same-apn  | http://xhaus.com/headers        | xhaus   |
      | m-bb-func-epg1-use-same-apn  | http://www.espn.co.uk/          | espn    |
      | modem-func-epg1              | https://www.bbc.co.uk/          | bbc     |
      | modem-func-epg1-use-same-apn | https://www.ebay.co.uk/         | ebay    |
      | modem-func-epg1-use-same-apn | https://www.amazon.co.uk/       | amazon  |
      | modem-func-epg1-use-same-apn | http://xhaus.com/headers        | xhaus   |
      | modem-func-epg1-use-same-apn | http://www.espn.co.uk/          | espn    |
