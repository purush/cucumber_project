@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                        | url                             | title    |
      | isetup-full-epg1               | https://www.bbc.co.uk/          | bbc      |
      | isetup-full-epg1-use-same-apn  | https://twitter.com/?lang=en-gb | twitter  |
      | isetup-full-epg1-use-same-apn  | https://www.ebay.co.uk/         | ebay     |
      | isetup-full-epg1-use-same-apn  | https://www.youtube.com/        | youtube  |
      | isetup-full-epg1-use-same-apn  | https://www.amazon.co.uk/       | amazon   |
      | isetup-full-epg1-use-same-apn  | https://www.reddit.com/         | reddit   |
      | isetup-full-epg1-use-same-apn  | http://xhaus.com/headers        | xhaus    |
      | isetup-full-epg1-use-same-apn  | https://google.co.uk            | google   |
      | isetup-full-epg1-use-same-apn  | https://google.com              | google   |
      | isetup-full-epg1-use-same-apn  | http://www.espn.co.uk/          | espn     |
      | isetup-full-epg1-use-same-apn  | https://www.dailymotion.com/    | daily    |
      | isetup-full-epg1-use-same-apn  | https://www.facebook.com/       | facebook |
      | isetup-full-epg2               | https://www.bbc.co.uk/          | bbc      |
      | isetup-full-epg2-use-same-apn  | https://twitter.com/?lang=en-gb | twitter  |
      | isetup-full-epg2-use-same-apn  | https://www.ebay.co.uk/         | ebay     |
      | isetup-full-epg2-use-same-apn  | https://www.youtube.com/        | youtube  |
      | isetup-full-epg2-use-same-apn  | https://www.amazon.co.uk/       | amazon   |
      | isetup-full-epg2-use-same-apn  | https://www.reddit.com/         | reddit   |
      | isetup-full-epg2-use-same-apn  | http://xhaus.com/headers        | xhaus    |
      | isetup-full-epg2-use-same-apn  | https://google.co.uk            | google   |
      | isetup-full-epg2-use-same-apn  | https://google.com              | google   |
      | isetup-full-epg2-use-same-apn  | http://www.espn.co.uk/          | espn     |
      | isetup-full-epg2-use-same-apn  | https://www.dailymotion.com/    | daily    |
      | isetup-full-epg2-use-same-apn  | https://www.facebook.com/       | facebook |
      | ibrowse-full-epg1              | https://www.bbc.co.uk/          | bbc      |
      | ibrowse-full-epg1-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | ibrowse-full-epg1-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | ibrowse-full-epg1-use-same-apn | https://www.youtube.com/        | youtube  |
      | ibrowse-full-epg1-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | ibrowse-full-epg1-use-same-apn | https://www.reddit.com/         | reddit   |
      | ibrowse-full-epg1-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | ibrowse-full-epg1-use-same-apn | https://google.co.uk            | google   |
      | ibrowse-full-epg1-use-same-apn | https://google.com              | google   |
      | ibrowse-full-epg1-use-same-apn | http://www.espn.co.uk/          | espn     |
      | ibrowse-full-epg1-use-same-apn | https://www.dailymotion.com/    | daily    |
      | ibrowse-full-epg1-use-same-apn | https://www.facebook.com/       | facebook |
      | ibrowse-full-epg2              | https://www.bbc.co.uk/          | bbc      |
      | ibrowse-full-epg2-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | ibrowse-full-epg2-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | ibrowse-full-epg2-use-same-apn | https://www.youtube.com/        | youtube  |
      | ibrowse-full-epg2-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | ibrowse-full-epg2-use-same-apn | https://www.reddit.com/         | reddit   |
      | ibrowse-full-epg2-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | ibrowse-full-epg2-use-same-apn | https://google.co.uk            | google   |
      | ibrowse-full-epg2-use-same-apn | https://google.com              | google   |
      | ibrowse-full-epg2-use-same-apn | http://www.espn.co.uk/          | espn     |
      | ibrowse-full-epg2-use-same-apn | https://www.dailymotion.com/    | daily    |
      | ibrowse-full-epg2-use-same-apn | https://www.facebook.com/       | facebook |
      | wap-full-epg1                  | https://www.bbc.co.uk/          | bbc      |
      | wap-full-epg1-use-same-apn     | https://twitter.com/?lang=en-gb | twitter  |
      | wap-full-epg1-use-same-apn     | https://www.ebay.co.uk/         | ebay     |
      | wap-full-epg1-use-same-apn     | https://www.youtube.com/        | youtube  |
      | wap-full-epg1-use-same-apn     | https://www.amazon.co.uk/       | amazon   |
      | wap-full-epg1-use-same-apn     | https://www.reddit.com/         | reddit   |
      | wap-full-epg1-use-same-apn     | http://xhaus.com/headers        | xhaus    |
      | wap-full-epg1-use-same-apn     | https://google.co.uk            | google   |
      | wap-full-epg1-use-same-apn     | https://google.com              | google   |
      | wap-full-epg1-use-same-apn     | http://www.espn.co.uk/          | espn     |
      | wap-full-epg1-use-same-apn     | https://www.dailymotion.com/    | daily    |
      | wap-full-epg1-use-same-apn     | https://www.facebook.com/       | facebook |
      | wap-full-epg2                  | https://www.bbc.co.uk/          | bbc      |
      | wap-full-epg2-use-same-apn     | https://twitter.com/?lang=en-gb | twitter  |
      | wap-full-epg2-use-same-apn     | https://www.ebay.co.uk/         | ebay     |
      | wap-full-epg2-use-same-apn     | https://www.youtube.com/        | youtube  |
      | wap-full-epg2-use-same-apn     | https://www.amazon.co.uk/       | amazon   |
      | wap-full-epg2-use-same-apn     | https://www.reddit.com/         | reddit   |
      | wap-full-epg2-use-same-apn     | http://xhaus.com/headers        | xhaus    |
      | wap-full-epg2-use-same-apn     | https://google.co.uk            | google   |
      | wap-full-epg2-use-same-apn     | https://google.com              | google   |
      | wap-full-epg2-use-same-apn     | http://www.espn.co.uk/          | espn     |
      | wap-full-epg2-use-same-apn     | https://www.dailymotion.com/    | daily    |
      | wap-full-epg2-use-same-apn     | https://www.facebook.com/       | facebook |
      | vpn-full-epg1                  | https://www.bbc.co.uk/          | bbc      |
      | vpn-full-epg1-use-same-apn     | https://twitter.com/?lang=en-gb | twitter  |
      | vpn-full-epg1-use-same-apn     | https://www.ebay.co.uk/         | ebay     |
      | vpn-full-epg1-use-same-apn     | https://www.youtube.com/        | youtube  |
      | vpn-full-epg1-use-same-apn     | https://www.amazon.co.uk/       | amazon   |
      | vpn-full-epg1-use-same-apn     | https://www.reddit.com/         | reddit   |
      | vpn-full-epg1-use-same-apn     | https://google.co.uk            | google   |
      | vpn-full-epg1-use-same-apn     | https://google.com              | google   |
      | vpn-full-epg1-use-same-apn     | https://www.dailymotion.com/    | daily    |
      | vpn-full-epg1-use-same-apn     | https://www.facebook.com/       | facebook |
      | vpn-full-epg2                  | https://www.bbc.co.uk/          | bbc      |
      | vpn-full-epg2-use-same-apn     | https://twitter.com/?lang=en-gb | twitter  |
      | vpn-full-epg2-use-same-apn     | https://www.ebay.co.uk/         | ebay     |
      | vpn-full-epg2-use-same-apn     | https://www.youtube.com/        | youtube  |
      | vpn-full-epg2-use-same-apn     | https://www.amazon.co.uk/       | amazon   |
      | vpn-full-epg2-use-same-apn     | https://www.reddit.com/         | reddit   |
      | vpn-full-epg2-use-same-apn     | https://google.co.uk            | google   |
      | vpn-full-epg2-use-same-apn     | https://google.com              | google   |
      | vpn-full-epg2-use-same-apn     | https://www.dailymotion.com/    | daily    |
      | vpn-full-epg2-use-same-apn     | https://www.facebook.com/       | facebook |
