@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                         | url                             | title    |
      | mvne1-serv-epg1                 | https://www.bbc.co.uk/          | bbc      |
      | mvne1-serv-epg1-use-same-apn    | https://twitter.com/?lang=en-gb | twitter  |
      | mvne1-serv-epg1-use-same-apn    | https://www.ebay.co.uk/         | ebay     |
      | mvne1-serv-epg1-use-same-apn    | https://www.youtube.com/        | youtube  |
      | mvne1-serv-epg1-use-same-apn    | https://www.amazon.co.uk/       | amazon   |
      | mvne1-serv-epg1-use-same-apn    | https://www.reddit.com/         | reddit   |
      | mvne1-serv-epg1-use-same-apn    | http://xhaus.com/headers        | xhaus    |
      | mvne1-serv-epg1-use-same-apn    | https://google.co.uk            | google   |
      | mvne1-serv-epg1-use-same-apn    | https://google.com              | google   |
      | mvne1-serv-epg1-use-same-apn    | http://www.espn.co.uk/          | espn     |
      | mvne1-serv-epg1-use-same-apn    | https://www.dailymotion.com/    | daily    |
      | mvne1-serv-epg1-use-same-apn    | https://www.facebook.com/       | facebook |
      | mvne1-serv-epg2                 | https://www.bbc.co.uk/          | bbc      |
      | mvne1-serv-epg2-use-same-apn    | https://twitter.com/?lang=en-gb | twitter  |
      | mvne1-serv-epg2-use-same-apn    | https://www.ebay.co.uk/         | ebay     |
      | mvne1-serv-epg2-use-same-apn    | https://www.youtube.com/        | youtube  |
      | mvne1-serv-epg2-use-same-apn    | https://www.amazon.co.uk/       | amazon   |
      | mvne1-serv-epg2-use-same-apn    | https://www.reddit.com/         | reddit   |
      | mvne1-serv-epg2-use-same-apn    | http://xhaus.com/headers        | xhaus    |
      | mvne1-serv-epg2-use-same-apn    | https://google.co.uk            | google   |
      | mvne1-serv-epg2-use-same-apn    | https://google.com              | google   |
      | mvne1-serv-epg2-use-same-apn    | http://www.espn.co.uk/          | espn     |
      | mvne1-serv-epg2-use-same-apn    | https://www.dailymotion.com/    | daily    |
      | mvne1-serv-epg2-use-same-apn    | https://www.facebook.com/       | facebook |
      | tesco-serv-epg1                 | https://www.bbc.co.uk/          | bbc      |
      | tesco-serv-epg1-use-same-apn    | https://twitter.com/?lang=en-gb | twitter  |
      | tesco-serv-epg1-use-same-apn    | https://www.ebay.co.uk/         | ebay     |
      | tesco-serv-epg1-use-same-apn    | https://www.youtube.com/        | youtube  |
      | tesco-serv-epg1-use-same-apn    | https://www.amazon.co.uk/       | amazon   |
      | tesco-serv-epg1-use-same-apn    | https://www.reddit.com/         | reddit   |
      | tesco-serv-epg1-use-same-apn    | http://xhaus.com/headers        | xhaus    |
      | tesco-serv-epg1-use-same-apn    | https://google.co.uk            | google   |
      | tesco-serv-epg1-use-same-apn    | https://google.com              | google   |
      | tesco-serv-epg1-use-same-apn    | http://www.espn.co.uk/          | espn     |
      | tesco-serv-epg1-use-same-apn    | https://www.dailymotion.com/    | daily    |
      | tesco-serv-epg1-use-same-apn    | https://www.facebook.com/       | facebook |
      | tesco-serv-epg2                 | https://www.bbc.co.uk/          | bbc      |
      | tesco-serv-epg2-use-same-apn    | https://twitter.com/?lang=en-gb | twitter  |
      | tesco-serv-epg2-use-same-apn    | https://www.ebay.co.uk/         | ebay     |
      | tesco-serv-epg2-use-same-apn    | https://www.youtube.com/        | youtube  |
      | tesco-serv-epg2-use-same-apn    | https://www.amazon.co.uk/       | amazon   |
      | tesco-serv-epg2-use-same-apn    | https://www.reddit.com/         | reddit   |
      | tesco-serv-epg2-use-same-apn    | http://xhaus.com/headers        | xhaus    |
      | tesco-serv-epg2-use-same-apn    | https://google.co.uk            | google   |
      | tesco-serv-epg2-use-same-apn    | https://google.com              | google   |
      | tesco-serv-epg2-use-same-apn    | http://www.espn.co.uk/          | espn     |
      | tesco-serv-epg2-use-same-apn    | https://www.dailymotion.com/    | daily    |
      | tesco-serv-epg2-use-same-apn    | https://www.facebook.com/       | facebook |
      | payandgo-serv-epg1              | https://www.bbc.co.uk/          | bbc      |
      | payandgo-serv-epg1-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | payandgo-serv-epg1-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | payandgo-serv-epg1-use-same-apn | https://www.youtube.com/        | youtube  |
      | payandgo-serv-epg1-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | payandgo-serv-epg1-use-same-apn | https://www.reddit.com/         | reddit   |
      | payandgo-serv-epg1-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | payandgo-serv-epg1-use-same-apn | https://google.co.uk            | google   |
      | payandgo-serv-epg1-use-same-apn | https://google.com              | google   |
      | payandgo-serv-epg1-use-same-apn | http://www.espn.co.uk/          | espn     |
      | payandgo-serv-epg1-use-same-apn | https://www.dailymotion.com/    | daily    |
      | payandgo-serv-epg1-use-same-apn | https://www.facebook.com/       | facebook |
      | payandgo-serv-epg2              | https://www.bbc.co.uk/          | bbc      |
      | payandgo-serv-epg2-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | payandgo-serv-epg2-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | payandgo-serv-epg2-use-same-apn | https://www.youtube.com/        | youtube  |
      | payandgo-serv-epg2-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | payandgo-serv-epg2-use-same-apn | https://www.reddit.com/         | reddit   |
      | payandgo-serv-epg2-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | payandgo-serv-epg2-use-same-apn | https://google.co.uk            | google   |
      | payandgo-serv-epg2-use-same-apn | https://google.com              | google   |
      | payandgo-serv-epg2-use-same-apn | http://www.espn.co.uk/          | espn     |
      | payandgo-serv-epg2-use-same-apn | https://www.dailymotion.com/    | daily    |
      | payandgo-serv-epg2-use-same-apn | https://www.facebook.com/       | facebook |
