@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                        | url                             | title   |
      | isetup-func-epg1               | https://www.bbc.co.uk/          | bbc     |
      | isetup-func-epg1-use-same-apn  | https://twitter.com/?lang=en-gb | twitter |
      | isetup-func-epg1-use-same-apn  | https://www.ebay.co.uk/         | ebay    |
      | isetup-func-epg1-use-same-apn  | http://xhaus.com/headers        | xhaus   |
      | ibrowse-func-epg1              | https://www.bbc.co.uk/          | bbc     |
      | ibrowse-func-epg1-use-same-apn | https://twitter.com/?lang=en-gb | twitter |
      | ibrowse-func-epg1-use-same-apn | https://www.ebay.co.uk/         | ebay    |
      | ibrowse-func-epg1-use-same-apn | https://www.amazon.co.uk/       | amazon  |
      | ibrowse-func-epg1-use-same-apn | http://xhaus.com/headers        | xhaus   |
      | wap-func-epg1                  | https://www.bbc.co.uk/          | bbc     |
      | wap-func-epg1-use-same-apn     | https://twitter.com/?lang=en-gb | twitter |
      | wap-func-epg1-use-same-apn     | https://www.ebay.co.uk/         | ebay    |
      | wap-func-epg1-use-same-apn     | https://www.amazon.co.uk/       | amazon  |
      | wap-func-epg1-use-same-apn     | http://xhaus.com/headers        | xhaus   |
      | wap-func-epg1-use-same-apn     | http://www.espn.co.uk/          | espn    |
      | vpn-func-epg1                  | https://www.bbc.co.uk/          | bbc     |
      | vpn-func-epg1-use-same-apn     | https://twitter.com/?lang=en-gb | twitter |
      | vpn-func-epg1-use-same-apn     | https://www.ebay.co.uk/         | ebay    |
      | vpn-func-epg1-use-same-apn     | https://www.amazon.co.uk/       | amazon  |
