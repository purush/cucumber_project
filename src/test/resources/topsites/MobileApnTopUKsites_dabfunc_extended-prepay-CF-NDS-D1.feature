@mobile
Feature: Using Android device check mobile DataConnection

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site "<title>".
    And Using Android device serialno "2adbc704fc0d7ece" set apn "<apnname>"
    And Using Android device serialno "2adbc704fc0d7ece" open "chrome" browser
    And open browser and enter url "<url>" and check if page body contains reset "<title>"

    Examples: 
      | apnname                         | url                               | title    |
      | mvne1-func-epg2                 | https://www.drinkiwiki.com/       | RESET    |
      | mvne1-func-epg2-use-same-apn    | http://xhaus.com/headers          | xhaus    |
      | mvne1-func-epg2-use-same-apn    | https://www.mousematrix.com       | RESET    |
      | mvne1-func-epg2-use-same-apn    | https://www.greenmanspage.com/    | RESET    |
      | mvne1-func-epg2-use-same-apn    | https://www.hammerskins.net/      | RESET    |
      | mvne1-func-epg2-use-same-apn    | https://www.radarjammer.com/      | RESET    |
      | mvne1-func-epg2-use-same-apn    | https://smashthestack.org/        | RESET    |
      | mvne1-func-epg2-use-same-apn    | https://www.adultwork.com/        | RESET    |
      | mvne1-func-epg2-use-same-apn    | https://www.icut.livejournal.com/ | RESET    |
      | mvne1-func-epg2-use-same-apn    | https://www.lostallhope.com/      | RESET    |
      | mvne1-func-epg2-use-same-apn    | https://www.hookah-shisha.com/    | RESET    |
      | mvne1-func-epg2-use-same-apn    | https://www.bombshock.com/        | RESET    |
      | mvne1-func-epg2-use-same-apn    | https://www.facebook.com/         | facebook |
      | tesco-func-epg2                 | https://www.drinkiwiki.com/       | RESET    |
      | tesco-func-epg2-use-same-apn    | http://xhaus.com/headers          | xhaus    |
      | tesco-func-epg2-use-same-apn    | https://www.mousematrix.com       | RESET    |
      | tesco-func-epg2-use-same-apn    | https://www.greenmanspage.com/    | RESET    |
      | tesco-func-epg2-use-same-apn    | https://www.hammerskins.net/      | RESET    |
      | tesco-func-epg2-use-same-apn    | https://www.radarjammer.com/      | RESET    |
      | tesco-func-epg2-use-same-apn    | https://smashthestack.org/        | RESET    |
      | tesco-func-epg2-use-same-apn    | https://www.adultwork.com/        | RESET    |
      | tesco-func-epg2-use-same-apn    | https://www.icut.livejournal.com/ | RESET    |
      | tesco-func-epg2-use-same-apn    | https://www.lostallhope.com/      | RESET    |
      | tesco-func-epg2-use-same-apn    | https://www.hookah-shisha.com/    | RESET    |
      | tesco-func-epg2-use-same-apn    | https://www.bombshock.com/        | RESET    |
      | tesco-func-epg2-use-same-apn    | https://www.facebook.com/         | facebook |
      | payandgo-func-epg2              | https://www.drinkiwiki.com/       | RESET    |
      | payandgo-func-epg2-use-same-apn | http://xhaus.com/headers          | xhaus    |
      | payandgo-func-epg2-use-same-apn | https://www.mousematrix.com       | RESET    |
      | payandgo-func-epg2-use-same-apn | https://www.greenmanspage.com/    | RESET    |
      | payandgo-func-epg2-use-same-apn | https://www.hammerskins.net/      | RESET    |
      | payandgo-func-epg2-use-same-apn | https://www.radarjammer.com/      | RESET    |
      | payandgo-func-epg2-use-same-apn | https://smashthestack.org/        | RESET    |
      | payandgo-func-epg2-use-same-apn | https://www.adultwork.com/        | RESET    |
      | payandgo-func-epg2-use-same-apn | https://www.icut.livejournal.com/ | RESET    |
      | payandgo-func-epg2-use-same-apn | https://www.lostallhope.com/      | RESET    |
      | payandgo-func-epg2-use-same-apn | https://www.hookah-shisha.com/    | RESET    |
      | payandgo-func-epg2-use-same-apn | https://www.bombshock.com/        | RESET    |
      | payandgo-func-epg2-use-same-apn | https://www.facebook.com/         | facebook |
