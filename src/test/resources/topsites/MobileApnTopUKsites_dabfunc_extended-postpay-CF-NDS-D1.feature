@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "2adbc704fc0d7ece" set apn "<apnname>"
    And Using Android device serialno "2adbc704fc0d7ece" open "chrome" browser
    And open browser and enter url "<url>" and check if page body contains reset "<title>"

    Examples: 
      | apnname                       | url                               | title    |
      | idata-func-epg2               | https://www.drinkiwiki.com/       | RESET    |
      | idata-func-epg2-use-same-apn  | http://xhaus.com/headers          | xhaus    |
      | idata-func-epg2-use-same-apn  | https://www.mousematrix.com       | RESET    |
      | idata-func-epg2-use-same-apn  | https://www.greenmanspage.com/    | RESET    |
      | idata-func-epg2-use-same-apn  | https://www.hammerskins.net/      | RESET    |
      | idata-func-epg2-use-same-apn  | https://www.radarjammer.com/      | RESET    |
      | idata-func-epg2-use-same-apn  | https://smashthestack.org/        | RESET    |
      | idata-func-epg2-use-same-apn  | https://www.adultwork.com/        | RESET    |
      | idata-func-epg2-use-same-apn  | https://www.icut.livejournal.com/ | RESET    |
      | idata-func-epg2-use-same-apn  | https://www.lostallhope.com/      | RESET    |
      | idata-func-epg2-use-same-apn  | https://www.hookah-shisha.com/    | RESET    |
      | idata-func-epg2-use-same-apn  | https://www.bombshock.com/        | RESET    |
      | idata-func-epg2-use-same-apn  | https://www.facebook.com/         | facebook |
      | mobile-func-epg2              | https://www.drinkiwiki.com/       | RESET    |
      | mobile-func-epg2-use-same-apn | http://xhaus.com/headers          | xhaus    |
      | mobile-func-epg2-use-same-apn | https://www.mousematrix.com       | RESET    |
      | mobile-func-epg2-use-same-apn | https://www.greenmanspage.com/    | RESET    |
      | mobile-func-epg2-use-same-apn | https://www.hammerskins.net/      | RESET    |
      | mobile-func-epg2-use-same-apn | https://www.radarjammer.com/      | RESET    |
      | mobile-func-epg2-use-same-apn | https://smashthestack.org/        | RESET    |
      | mobile-func-epg2-use-same-apn | https://www.adultwork.com/        | RESET    |
      | mobile-func-epg2-use-same-apn | https://www.icut.livejournal.com/ | RESET    |
      | mobile-func-epg2-use-same-apn | https://www.lostallhope.com/      | RESET    |
      | mobile-func-epg2-use-same-apn | https://www.hookah-shisha.com/    | RESET    |
      | mobile-func-epg2-use-same-apn | https://www.bombshock.com/        | RESET    |
      | mobile-func-epg2-use-same-apn | https://www.facebook.com/         | facebook |
