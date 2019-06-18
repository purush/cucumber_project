@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                       | url                             | title    |
      | idata-serv-epg1               | https://www.bbc.co.uk/          | bbc      |
      | idata-serv-epg1-use-same-apn  | https://twitter.com/?lang=en-gb | twitter  |
      | idata-serv-epg1-use-same-apn  | https://www.ebay.co.uk/         | ebay     |
      | idata-serv-epg1-use-same-apn  | https://www.youtube.com/        | youtube  |
      | idata-serv-epg1-use-same-apn  | https://www.amazon.co.uk/       | amazon   |
      | idata-serv-epg1-use-same-apn  | https://www.reddit.com/         | reddit   |
      | idata-serv-epg1-use-same-apn  | http://xhaus.com/headers        | xhaus    |
      | idata-serv-epg1-use-same-apn  | https://google.co.uk            | google   |
      | idata-serv-epg1-use-same-apn  | https://google.com              | google   |
      | idata-serv-epg1-use-same-apn  | http://www.espn.co.uk/          | espn     |
      | idata-serv-epg1-use-same-apn  | https://www.dailymotion.com/    | daily    |
      | idata-serv-epg1-use-same-apn  | https://www.facebook.com/       | facebook |
      | idata-serv-epg2               | https://www.bbc.co.uk/          | bbc      |
      | idata-serv-epg2-use-same-apn  | https://twitter.com/?lang=en-gb | twitter  |
      | idata-serv-epg2-use-same-apn  | https://www.ebay.co.uk/         | ebay     |
      | idata-serv-epg2-use-same-apn  | https://www.youtube.com/        | youtube  |
      | idata-serv-epg2-use-same-apn  | https://www.amazon.co.uk/       | amazon   |
      | idata-serv-epg2-use-same-apn  | https://www.reddit.com/         | reddit   |
      | idata-serv-epg2-use-same-apn  | http://xhaus.com/headers        | xhaus    |
      | idata-serv-epg2-use-same-apn  | https://google.co.uk            | google   |
      | idata-serv-epg2-use-same-apn  | https://google.com              | google   |
      | idata-serv-epg2-use-same-apn  | http://www.espn.co.uk/          | espn     |
      | idata-serv-epg2-use-same-apn  | https://www.dailymotion.com/    | daily    |
      | idata-serv-epg2-use-same-apn  | https://www.facebook.com/       | facebook |
      | mobile-serv-epg1              | https://www.bbc.co.uk/          | bbc      |
      | mobile-serv-epg1-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | mobile-serv-epg1-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | mobile-serv-epg1-use-same-apn | https://www.youtube.com/        | youtube  |
      | mobile-serv-epg1-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | mobile-serv-epg1-use-same-apn | https://www.reddit.com/         | reddit   |
      | mobile-serv-epg1-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | mobile-serv-epg1-use-same-apn | https://google.co.uk            | google   |
      | mobile-serv-epg1-use-same-apn | https://google.com              | google   |
      | mobile-serv-epg1-use-same-apn | http://www.espn.co.uk/          | espn     |
      | mobile-serv-epg1-use-same-apn | https://www.dailymotion.com/    | daily    |
      | mobile-serv-epg1-use-same-apn | https://www.facebook.com/       | facebook |
      | mobile-serv-epg2              | https://www.bbc.co.uk/          | bbc      |
      | mobile-serv-epg2-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | mobile-serv-epg2-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | mobile-serv-epg2-use-same-apn | https://www.youtube.com/        | youtube  |
      | mobile-serv-epg2-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | mobile-serv-epg2-use-same-apn | https://www.reddit.com/         | reddit   |
      | mobile-serv-epg2-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | mobile-serv-epg2-use-same-apn | https://google.co.uk            | google   |
      | mobile-serv-epg2-use-same-apn | https://google.com              | google   |
      | mobile-serv-epg2-use-same-apn | http://www.espn.co.uk/          | espn     |
      | mobile-serv-epg2-use-same-apn | https://www.dailymotion.com/    | daily    |
      | mobile-serv-epg2-use-same-apn | https://www.facebook.com/       | facebook |
