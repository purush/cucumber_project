@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                      | url                             | title    |
      | m-bb-serv-epg1               | https://www.bbc.co.uk/          | bbc      |
      | m-bb-serv-epg1-use-same-apn  | https://twitter.com/?lang=en-gb | twitter  |
      | m-bb-serv-epg1-use-same-apn  | https://www.ebay.co.uk/         | ebay     |
      | m-bb-serv-epg1-use-same-apn  | https://www.youtube.com/        | youtube  |
      | m-bb-serv-epg1-use-same-apn  | https://www.amazon.co.uk/       | amazon   |
      | m-bb-serv-epg1-use-same-apn  | https://www.reddit.com/         | reddit   |
      | m-bb-serv-epg1-use-same-apn  | http://xhaus.com/headers        | xhaus    |
      | m-bb-serv-epg1-use-same-apn  | https://google.co.uk            | google   |
      | m-bb-serv-epg1-use-same-apn  | https://google.com              | google   |
      | m-bb-serv-epg1-use-same-apn  | http://www.espn.co.uk/          | espn     |
      | m-bb-serv-epg1-use-same-apn  | https://www.dailymotion.com/    | daily    |
      | m-bb-serv-epg1-use-same-apn  | https://www.facebook.com/       | facebook |
      | m-bb-serv-epg2               | https://www.bbc.co.uk/          | bbc      |
      | m-bb-serv-epg2-use-same-apn  | https://twitter.com/?lang=en-gb | twitter  |
      | m-bb-serv-epg2-use-same-apn  | https://www.ebay.co.uk/         | ebay     |
      | m-bb-serv-epg2-use-same-apn  | https://www.youtube.com/        | youtube  |
      | m-bb-serv-epg2-use-same-apn  | https://www.amazon.co.uk/       | amazon   |
      | m-bb-serv-epg2-use-same-apn  | https://www.reddit.com/         | reddit   |
      | m-bb-serv-epg2-use-same-apn  | http://xhaus.com/headers        | xhaus    |
      | m-bb-serv-epg2-use-same-apn  | https://google.co.uk            | google   |
      | m-bb-serv-epg2-use-same-apn  | https://google.com              | google   |
      | m-bb-serv-epg2-use-same-apn  | http://www.espn.co.uk/          | espn     |
      | m-bb-serv-epg2-use-same-apn  | https://www.dailymotion.com/    | daily    |
      | m-bb-serv-epg2-use-same-apn  | https://www.facebook.com/       | facebook |
      | modem-serv-epg1              | https://www.bbc.co.uk/          | bbc      |
      | modem-serv-epg1-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | modem-serv-epg1-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | modem-serv-epg1-use-same-apn | https://www.youtube.com/        | youtube  |
      | modem-serv-epg1-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | modem-serv-epg1-use-same-apn | https://www.reddit.com/         | reddit   |
      | modem-serv-epg1-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | modem-serv-epg1-use-same-apn | https://google.co.uk            | google   |
      | modem-serv-epg1-use-same-apn | https://google.com              | google   |
      | modem-serv-epg1-use-same-apn | http://www.espn.co.uk/          | espn     |
      | modem-serv-epg1-use-same-apn | https://www.dailymotion.com/    | daily    |
      | modem-serv-epg1-use-same-apn | https://www.facebook.com/       | facebook |
      | modem-serv-epg2              | https://www.bbc.co.uk/          | bbc      |
      | modem-serv-epg2-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | modem-serv-epg2-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | modem-serv-epg2-use-same-apn | https://www.youtube.com/        | youtube  |
      | modem-serv-epg2-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | modem-serv-epg2-use-same-apn | https://www.reddit.com/         | reddit   |
      | modem-serv-epg2-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | modem-serv-epg2-use-same-apn | https://google.co.uk            | google   |
      | modem-serv-epg2-use-same-apn | https://google.com              | google   |
      | modem-serv-epg2-use-same-apn | http://www.espn.co.uk/          | espn     |
      | modem-serv-epg2-use-same-apn | https://www.dailymotion.com/    | daily    |
      | modem-serv-epg2-use-same-apn | https://www.facebook.com/       | facebook |
