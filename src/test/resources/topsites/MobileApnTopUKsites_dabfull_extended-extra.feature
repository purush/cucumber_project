@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                      | url                             | title    |
      | m-bb-full-epg1               | https://www.bbc.co.uk/          | bbc      |
      | m-bb-full-epg1-use-same-apn  | https://twitter.com/?lang=en-gb | twitter  |
      | m-bb-full-epg1-use-same-apn  | https://www.ebay.co.uk/         | ebay     |
      | m-bb-full-epg1-use-same-apn  | https://www.youtube.com/        | youtube  |
      | m-bb-full-epg1-use-same-apn  | https://www.amazon.co.uk/       | amazon   |
      | m-bb-full-epg1-use-same-apn  | https://www.reddit.com/         | reddit   |
      | m-bb-full-epg1-use-same-apn  | http://xhaus.com/headers        | xhaus    |
      | m-bb-full-epg1-use-same-apn  | https://google.co.uk            | google   |
      | m-bb-full-epg1-use-same-apn  | https://google.com              | google   |
      | m-bb-full-epg1-use-same-apn  | http://www.espn.co.uk/          | espn     |
      | m-bb-full-epg1-use-same-apn  | https://www.dailymotion.com/    | daily    |
      | m-bb-full-epg1-use-same-apn  | https://www.facebook.com/       | facebook |
      | m-bb-full-epg2               | https://www.bbc.co.uk/          | bbc      |
      | m-bb-full-epg2-use-same-apn  | https://twitter.com/?lang=en-gb | twitter  |
      | m-bb-full-epg2-use-same-apn  | https://www.ebay.co.uk/         | ebay     |
      | m-bb-full-epg2-use-same-apn  | https://www.youtube.com/        | youtube  |
      | m-bb-full-epg2-use-same-apn  | https://www.amazon.co.uk/       | amazon   |
      | m-bb-full-epg2-use-same-apn  | https://www.reddit.com/         | reddit   |
      | m-bb-full-epg2-use-same-apn  | http://xhaus.com/headers        | xhaus    |
      | m-bb-full-epg2-use-same-apn  | https://google.co.uk            | google   |
      | m-bb-full-epg2-use-same-apn  | https://google.com              | google   |
      | m-bb-full-epg2-use-same-apn  | http://www.espn.co.uk/          | espn     |
      | m-bb-full-epg2-use-same-apn  | https://www.dailymotion.com/    | daily    |
      | m-bb-full-epg2-use-same-apn  | https://www.facebook.com/       | facebook |
      | modem-full-epg1              | https://www.bbc.co.uk/          | bbc      |
      | modem-full-epg1-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | modem-full-epg1-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | modem-full-epg1-use-same-apn | https://www.youtube.com/        | youtube  |
      | modem-full-epg1-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | modem-full-epg1-use-same-apn | https://www.reddit.com/         | reddit   |
      | modem-full-epg1-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | modem-full-epg1-use-same-apn | https://google.co.uk            | google   |
      | modem-full-epg1-use-same-apn | https://google.com              | google   |
      | modem-full-epg1-use-same-apn | http://www.espn.co.uk/          | espn     |
      | modem-full-epg1-use-same-apn | https://www.dailymotion.com/    | daily    |
      | modem-full-epg1-use-same-apn | https://www.facebook.com/       | facebook |
      | modem-full-epg2              | https://www.bbc.co.uk/          | bbc      |
      | modem-full-epg2-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | modem-full-epg2-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | modem-full-epg2-use-same-apn | https://www.youtube.com/        | youtube  |
      | modem-full-epg2-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | modem-full-epg2-use-same-apn | https://www.reddit.com/         | reddit   |
      | modem-full-epg2-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | modem-full-epg2-use-same-apn | https://google.co.uk            | google   |
      | modem-full-epg2-use-same-apn | https://google.com              | google   |
      | modem-full-epg2-use-same-apn | http://www.espn.co.uk/          | espn     |
      | modem-full-epg2-use-same-apn | https://www.dailymotion.com/    | daily    |
      | modem-full-epg2-use-same-apn | https://www.facebook.com/       | facebook |
