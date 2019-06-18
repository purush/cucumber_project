@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                       | url                             | title    |
      | idata-full-epg1               | https://www.bbc.co.uk/          | bbc      |
      | idata-full-epg1-use-same-apn  | https://twitter.com/?lang=en-gb | twitter  |
      | idata-full-epg1-use-same-apn  | https://www.ebay.co.uk/         | ebay     |
      | idata-full-epg1-use-same-apn  | https://www.youtube.com/        | youtube  |
      | idata-full-epg1-use-same-apn  | https://www.amazon.co.uk/       | amazon   |
      | idata-full-epg1-use-same-apn  | https://www.reddit.com/         | reddit   |
      | idata-full-epg1-use-same-apn  | http://xhaus.com/headers        | xhaus    |
      | idata-full-epg1-use-same-apn  | https://google.co.uk            | google   |
      | idata-full-epg1-use-same-apn  | https://google.com              | google   |
      | idata-full-epg1-use-same-apn  | http://www.espn.co.uk/          | espn     |
      | idata-full-epg1-use-same-apn  | https://www.dailymotion.com/    | daily    |
      | idata-full-epg1-use-same-apn  | https://www.facebook.com/       | facebook |
      | idata-full-epg2               | https://www.bbc.co.uk/          | bbc      |
      | idata-full-epg2-use-same-apn  | https://twitter.com/?lang=en-gb | twitter  |
      | idata-full-epg2-use-same-apn  | https://www.ebay.co.uk/         | ebay     |
      | idata-full-epg2-use-same-apn  | https://www.youtube.com/        | youtube  |
      | idata-full-epg2-use-same-apn  | https://www.amazon.co.uk/       | amazon   |
      | idata-full-epg2-use-same-apn  | https://www.reddit.com/         | reddit   |
      | idata-full-epg2-use-same-apn  | http://xhaus.com/headers        | xhaus    |
      | idata-full-epg2-use-same-apn  | https://google.co.uk            | google   |
      | idata-full-epg2-use-same-apn  | https://google.com              | google   |
      | idata-full-epg2-use-same-apn  | http://www.espn.co.uk/          | espn     |
      | idata-full-epg2-use-same-apn  | https://www.dailymotion.com/    | daily    |
      | idata-full-epg2-use-same-apn  | https://www.facebook.com/       | facebook |
      | mobile-full-epg1              | https://www.bbc.co.uk/          | bbc      |
      | mobile-full-epg1-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | mobile-full-epg1-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | mobile-full-epg1-use-same-apn | https://www.youtube.com/        | youtube  |
      | mobile-full-epg1-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | mobile-full-epg1-use-same-apn | https://www.reddit.com/         | reddit   |
      | mobile-full-epg1-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | mobile-full-epg1-use-same-apn | https://google.co.uk            | google   |
      | mobile-full-epg1-use-same-apn | https://google.com              | google   |
      | mobile-full-epg1-use-same-apn | http://www.espn.co.uk/          | espn     |
      | mobile-full-epg1-use-same-apn | https://www.dailymotion.com/    | daily    |
      | mobile-full-epg1-use-same-apn | https://www.facebook.com/       | facebook |
      | mobile-full-epg2              | https://www.bbc.co.uk/          | bbc      |
      | mobile-full-epg2-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | mobile-full-epg2-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | mobile-full-epg2-use-same-apn | https://www.youtube.com/        | youtube  |
      | mobile-full-epg2-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | mobile-full-epg2-use-same-apn | https://www.reddit.com/         | reddit   |
      | mobile-full-epg2-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | mobile-full-epg2-use-same-apn | https://google.co.uk            | google   |
      | mobile-full-epg2-use-same-apn | https://google.com              | google   |
      | mobile-full-epg2-use-same-apn | http://www.espn.co.uk/          | espn     |
      | mobile-full-epg2-use-same-apn | https://www.dailymotion.com/    | daily    |
      | mobile-full-epg2-use-same-apn | https://www.facebook.com/       | facebook |
