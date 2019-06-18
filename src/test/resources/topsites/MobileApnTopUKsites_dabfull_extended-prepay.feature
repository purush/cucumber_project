@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                         | url                             | title    |
      | mvne1-full-epg1                 | https://www.bbc.co.uk/          | bbc      |
      | mvne1-full-epg1-use-same-apn    | https://twitter.com/?lang=en-gb | twitter  |
      | mvne1-full-epg1-use-same-apn    | https://www.ebay.co.uk/         | ebay     |
      | mvne1-full-epg1-use-same-apn    | https://www.youtube.com/        | youtube  |
      | mvne1-full-epg1-use-same-apn    | https://www.amazon.co.uk/       | amazon   |
      | mvne1-full-epg1-use-same-apn    | https://www.reddit.com/         | reddit   |
      | mvne1-full-epg1-use-same-apn    | http://xhaus.com/headers        | xhaus    |
      | mvne1-full-epg1-use-same-apn    | https://google.co.uk            | google   |
      | mvne1-full-epg1-use-same-apn    | https://google.com              | google   |
      | mvne1-full-epg1-use-same-apn    | http://www.espn.co.uk/          | espn     |
      | mvne1-full-epg1-use-same-apn    | https://www.dailymotion.com/    | daily    |
      | mvne1-full-epg1-use-same-apn    | https://www.facebook.com/       | facebook |
      | mvne1-full-epg2                 | https://www.bbc.co.uk/          | bbc      |
      | mvne1-full-epg2-use-same-apn    | https://twitter.com/?lang=en-gb | twitter  |
      | mvne1-full-epg2-use-same-apn    | https://www.ebay.co.uk/         | ebay     |
      | mvne1-full-epg2-use-same-apn    | https://www.youtube.com/        | youtube  |
      | mvne1-full-epg2-use-same-apn    | https://www.amazon.co.uk/       | amazon   |
      | mvne1-full-epg2-use-same-apn    | https://www.reddit.com/         | reddit   |
      | mvne1-full-epg2-use-same-apn    | http://xhaus.com/headers        | xhaus    |
      | mvne1-full-epg2-use-same-apn    | https://google.co.uk            | google   |
      | mvne1-full-epg2-use-same-apn    | https://google.com              | google   |
      | mvne1-full-epg2-use-same-apn    | http://www.espn.co.uk/          | espn     |
      | mvne1-full-epg2-use-same-apn    | https://www.dailymotion.com/    | daily    |
      | mvne1-full-epg2-use-same-apn    | https://www.facebook.com/       | facebook |
      | tesco-full-epg1                 | https://www.bbc.co.uk/          | bbc      |
      | tesco-full-epg1-use-same-apn    | https://twitter.com/?lang=en-gb | twitter  |
      | tesco-full-epg1-use-same-apn    | https://www.ebay.co.uk/         | ebay     |
      | tesco-full-epg1-use-same-apn    | https://www.youtube.com/        | youtube  |
      | tesco-full-epg1-use-same-apn    | https://www.amazon.co.uk/       | amazon   |
      | tesco-full-epg1-use-same-apn    | https://www.reddit.com/         | reddit   |
      | tesco-full-epg1-use-same-apn    | http://xhaus.com/headers        | xhaus    |
      | tesco-full-epg1-use-same-apn    | https://google.co.uk            | google   |
      | tesco-full-epg1-use-same-apn    | https://google.com              | google   |
      | tesco-full-epg1-use-same-apn    | http://www.espn.co.uk/          | espn     |
      | tesco-full-epg1-use-same-apn    | https://www.dailymotion.com/    | daily    |
      | tesco-full-epg1-use-same-apn    | https://www.facebook.com/       | facebook |
      | tesco-full-epg2                 | https://www.bbc.co.uk/          | bbc      |
      | tesco-full-epg2-use-same-apn    | https://twitter.com/?lang=en-gb | twitter  |
      | tesco-full-epg2-use-same-apn    | https://www.ebay.co.uk/         | ebay     |
      | tesco-full-epg2-use-same-apn    | https://www.youtube.com/        | youtube  |
      | tesco-full-epg2-use-same-apn    | https://www.amazon.co.uk/       | amazon   |
      | tesco-full-epg2-use-same-apn    | https://www.reddit.com/         | reddit   |
      | tesco-full-epg2-use-same-apn    | http://xhaus.com/headers        | xhaus    |
      | tesco-full-epg2-use-same-apn    | https://google.co.uk            | google   |
      | tesco-full-epg2-use-same-apn    | https://google.com              | google   |
      | tesco-full-epg2-use-same-apn    | http://www.espn.co.uk/          | espn     |
      | tesco-full-epg2-use-same-apn    | https://www.dailymotion.com/    | daily    |
      | tesco-full-epg2-use-same-apn    | https://www.facebook.com/       | facebook |
      | payandgo-full-epg1              | https://www.bbc.co.uk/          | bbc      |
      | payandgo-full-epg1-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | payandgo-full-epg1-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | payandgo-full-epg1-use-same-apn | https://www.youtube.com/        | youtube  |
      | payandgo-full-epg1-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | payandgo-full-epg1-use-same-apn | https://www.reddit.com/         | reddit   |
      | payandgo-full-epg1-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | payandgo-full-epg1-use-same-apn | https://google.co.uk            | google   |
      | payandgo-full-epg1-use-same-apn | https://google.com              | google   |
      | payandgo-full-epg1-use-same-apn | http://www.espn.co.uk/          | espn     |
      | payandgo-full-epg1-use-same-apn | https://www.dailymotion.com/    | daily    |
      | payandgo-full-epg1-use-same-apn | https://www.facebook.com/       | facebook |
      | payandgo-full-epg2              | https://www.bbc.co.uk/          | bbc      |
      | payandgo-full-epg2-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | payandgo-full-epg2-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | payandgo-full-epg2-use-same-apn | https://www.youtube.com/        | youtube  |
      | payandgo-full-epg2-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | payandgo-full-epg2-use-same-apn | https://www.reddit.com/         | reddit   |
      | payandgo-full-epg2-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | payandgo-full-epg2-use-same-apn | https://google.co.uk            | google   |
      | payandgo-full-epg2-use-same-apn | https://google.com              | google   |
      | payandgo-full-epg2-use-same-apn | http://www.espn.co.uk/          | espn     |
      | payandgo-full-epg2-use-same-apn | https://www.dailymotion.com/    | daily    |
      | payandgo-full-epg2-use-same-apn | https://www.facebook.com/       | facebook |
