@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                         | url                             | title   |
      | mvne1-func-epg1                 | https://www.bbc.co.uk/          | bbc     |
      | mvne1-func-epg1-use-same-apn    | https://twitter.com/?lang=en-gb | twitter |
      | mvne1-func-epg1-use-same-apn    | https://www.ebay.co.uk/         | ebay    |
      | mvne1-func-epg1-use-same-apn    | https://www.amazon.co.uk/       | amazon  |
      | mvne1-func-epg1-use-same-apn    | http://www.espn.co.uk/          | espn    |
      | tesco-func-epg1                 | https://www.bbc.co.uk/          | bbc     |
      | tesco-func-epg1-use-same-apn    | https://twitter.com/?lang=en-gb | twitter |
      | tesco-func-epg1-use-same-apn    | https://www.ebay.co.uk/         | ebay    |
      | tesco-func-epg1-use-same-apn    | https://www.amazon.co.uk/       | amazon  |
      | tesco-func-epg1-use-same-apn    | http://www.espn.co.uk/          | espn    |
      | payandgo-func-epg1              | https://www.bbc.co.uk/          | bbc     |
      | payandgo-func-epg1-use-same-apn | https://twitter.com/?lang=en-gb | twitter |
      | payandgo-func-epg1-use-same-apn | https://www.ebay.co.uk/         | ebay    |
      | payandgo-func-epg1-use-same-apn | https://www.amazon.co.uk/       | amazon  |
      | payandgo-func-epg1-use-same-apn | http://www.espn.co.uk/          | espn    |
