@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "2adbc704fc0d7ece" set apn "<apnname>"
    And Using Android device serialno "2adbc704fc0d7ece" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                       | url                             | title    |
      | idata-func-epg1               | https://www.bbc.co.uk/          | bbc      |
      | idata-func-epg1-use-same-apn  | https://twitter.com/?lang=en-gb | twitter  |
      | idata-func-epg1-use-same-apn  | https://www.ebay.co.uk/         | ebay     |
      | idata-func-epg1-use-same-apn  | https://www.youtube.com/        | youtube  |
      | idata-func-epg1-use-same-apn  | https://www.amazon.co.uk/       | amazon   |
      | idata-func-epg1-use-same-apn  | https://www.reddit.com/         | reddit   |
      | idata-func-epg1-use-same-apn  | http://xhaus.com/headers        | xhaus    |
      | idata-func-epg1-use-same-apn  | https://google.co.uk            | google   |
      | idata-func-epg1-use-same-apn  | https://google.com              | google   |
      | idata-func-epg1-use-same-apn  | http://www.espn.co.uk/          | espn     |
      | idata-func-epg1-use-same-apn  | https://www.dailymotion.com/    | daily    |
      | idata-func-epg1-use-same-apn  | https://www.facebook.com/       | facebook |
      | mobile-func-epg1              | https://www.bbc.co.uk/          | bbc      |
      | mobile-func-epg1-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | mobile-func-epg1-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | mobile-func-epg1-use-same-apn | https://www.youtube.com/        | youtube  |
      | mobile-func-epg1-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | mobile-func-epg1-use-same-apn | https://www.reddit.com/         | reddit   |
      | mobile-func-epg1-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | mobile-func-epg1-use-same-apn | https://google.co.uk            | google   |
      | mobile-func-epg1-use-same-apn | https://google.com              | google   |
      | mobile-func-epg1-use-same-apn | http://www.espn.co.uk/          | espn     |
      | mobile-func-epg1-use-same-apn | https://www.dailymotion.com/    | daily    |
      | mobile-func-epg1-use-same-apn | https://www.facebook.com/       | facebook |
