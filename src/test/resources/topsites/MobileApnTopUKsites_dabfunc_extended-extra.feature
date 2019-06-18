@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"

    Examples: 
      | apnname                        | url                             | title    |
      | isetup-func-epg2               | https://www.bbc.co.uk/          | bbc      |
      | isetup-func-epg2-use-same-apn  | https://twitter.com/?lang=en-gb | twitter  |
      | isetup-func-epg2-use-same-apn  | https://www.ebay.co.uk/         | ebay     |
      | isetup-func-epg2-use-same-apn  | https://www.youtube.com/        | youtube  |
      | isetup-func-epg2-use-same-apn  | https://www.amazon.co.uk/       | amazon   |
      | isetup-func-epg2-use-same-apn  | https://www.reddit.com/         | reddit   |
      | isetup-func-epg2-use-same-apn  | http://xhaus.com/headers        | xhaus    |
      | isetup-func-epg2-use-same-apn  | https://google.co.uk            | google   |
      | isetup-func-epg2-use-same-apn  | https://google.com              | google   |
      | isetup-func-epg2-use-same-apn  | http://www.espn.co.uk/          | espn     |
      | isetup-func-epg2-use-same-apn  | https://www.dailymotion.com/    | daily    |
      | isetup-func-epg2-use-same-apn  | https://www.facebook.com/       | facebook |
      | ibrowse-func-epg2              | https://www.bbc.co.uk/          | bbc      |
      | ibrowse-func-epg2-use-same-apn | https://twitter.com/?lang=en-gb | twitter  |
      | ibrowse-func-epg2-use-same-apn | https://www.ebay.co.uk/         | ebay     |
      | ibrowse-func-epg2-use-same-apn | https://www.youtube.com/        | youtube  |
      | ibrowse-func-epg2-use-same-apn | https://www.amazon.co.uk/       | amazon   |
      | ibrowse-func-epg2-use-same-apn | https://www.reddit.com/         | reddit   |
      | ibrowse-func-epg2-use-same-apn | http://xhaus.com/headers        | xhaus    |
      | ibrowse-func-epg2-use-same-apn | https://google.co.uk            | google   |
      | ibrowse-func-epg2-use-same-apn | https://google.com              | google   |
      | ibrowse-func-epg2-use-same-apn | http://www.espn.co.uk/          | espn     |
      | ibrowse-func-epg2-use-same-apn | https://www.dailymotion.com/    | daily    |
      | ibrowse-func-epg2-use-same-apn | https://www.facebook.com/       | facebook |
      | wap-func-epg2                  | https://www.bbc.co.uk/          | bbc      |
      | wap-func-epg2-use-same-apn     | https://twitter.com/?lang=en-gb | twitter  |
      | wap-func-epg2-use-same-apn     | https://www.ebay.co.uk/         | ebay     |
      | wap-func-epg2-use-same-apn     | https://www.youtube.com/        | youtube  |
      | wap-func-epg2-use-same-apn     | https://www.amazon.co.uk/       | amazon   |
      | wap-func-epg2-use-same-apn     | https://www.reddit.com/         | reddit   |
      | wap-func-epg2-use-same-apn     | http://xhaus.com/headers        | xhaus    |
      | wap-func-epg2-use-same-apn     | https://google.co.uk            | google   |
      | wap-func-epg2-use-same-apn     | https://google.com              | google   |
      | wap-func-epg2-use-same-apn     | http://www.espn.co.uk/          | espn     |
      | wap-func-epg2-use-same-apn     | https://www.dailymotion.com/    | daily    |
      | wap-func-epg2-use-same-apn     | https://www.facebook.com/       | facebook |
      | vpn-func-epg2                  | https://www.bbc.co.uk/          | bbc      |
      | vpn-func-epg2-use-same-apn     | https://twitter.com/?lang=en-gb | twitter  |
      | vpn-func-epg2-use-same-apn     | https://www.ebay.co.uk/         | ebay     |
      | vpn-func-epg2-use-same-apn     | https://www.youtube.com/        | youtube  |
      | vpn-func-epg2-use-same-apn     | https://www.amazon.co.uk/       | amazon   |
      | vpn-func-epg2-use-same-apn     | https://www.reddit.com/         | reddit   |
      | vpn-func-epg2-use-same-apn     | https://google.co.uk            | google   |
      | vpn-func-epg2-use-same-apn     | https://google.com              | google   |
      | vpn-func-epg2-use-same-apn     | https://www.dailymotion.com/    | daily    |
      | vpn-func-epg2-use-same-apn     | https://www.facebook.com/       | facebook |
