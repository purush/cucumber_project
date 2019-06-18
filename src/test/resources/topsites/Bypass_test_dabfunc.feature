@mobile
Feature: Using Android device check mobile DataConnection

  Scenario: Using Android device Switch off WiFi for Mobile Data
    #   Given Using Android device and serialno "9885e6455836594c55" switch on airplane mode
    #   And wait 5 sec
    #   Given Using Android device and serialno "9885e6455836594c55" switch off airplane mode
    #   And wait 5 sec
    Given Using Android device and serialno "9885e6455836594c55" switch off WiFi
    And wait 5 sec

  Scenario Outline: Using Android device check mobile apn "<apnname>"  by visting UK site.
    And Dismiss Alerts Android device serialno "9885e6455836594c55"
    And Using Android device serialno "9885e6455836594c55" set apn "<apnname>"
    And wait 15 sec
    And Check mobile data connection for serialno "9885e6455836594c55"
    And Using Android device serialno "9885e6455836594c55" open "chrome" browser
    And open browser and enter url "<url>" and check if page loaded and contains page title "<title>"
    And wait 10 sec
    And Click any 2 random links from the site

    Examples: 
      | apnname            | url                                     | title   |
      | tesco-func-epg1    | https://bbc.co.uk                       | bbc     |
      | payandgo-func-epg1 | https://bbc.co.uk                       | bbc     |
      | tesco-func-epg2    | https://bbc.co.uk                       | bbc     |
      | payandgo-func-epg2 | https://bbc.co.uk                       | bbc     |
      | tesco-func-epg1    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg1 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg2    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg2 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg1    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg1 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg2    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg2 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg1    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg1 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg2    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg2 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg1    | https://bbc.co.uk                       | bbc     |
      | payandgo-func-epg1 | https://bbc.co.uk                       | bbc     |
      | tesco-func-epg2    | https://bbc.co.uk                       | bbc     |
      | payandgo-func-epg2 | https://bbc.co.uk                       | bbc     |
      | tesco-func-epg1    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg1 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg2    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg2 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg1    | https://bbc.co.uk                       | bbc     |
      | payandgo-func-epg1 | https://bbc.co.uk                       | bbc     |
      | tesco-func-epg2    | https://bbc.co.uk                       | bbc     |
      | payandgo-func-epg2 | https://bbc.co.uk                       | bbc     |
      | tesco-func-epg1    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg1 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg2    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg2 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg1    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg1 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg2    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg2 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg1    | https://bbc.co.uk                       | bbc     |
      | payandgo-func-epg1 | https://bbc.co.uk                       | bbc     |
      | tesco-func-epg2    | https://bbc.co.uk                       | bbc     |
      | payandgo-func-epg2 | https://bbc.co.uk                       | bbc     |
      | tesco-func-epg1    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg1 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg2    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg2 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg1    | https://bbc.co.uk                       | bbc     |
      | payandgo-func-epg1 | https://bbc.co.uk                       | bbc     |
      | tesco-func-epg2    | https://bbc.co.uk                       | bbc     |
      | payandgo-func-epg2 | https://bbc.co.uk                       | bbc     |
      | tesco-func-epg1    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg1 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg2    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg2 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg1    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg1 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg2    | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | payandgo-func-epg2 | https://youtu.be/i8mSl03t-Gk?autoplay=1 | YouTube |
      | tesco-func-epg1    | https://bbc.co.uk                       | bbc     |
      | payandgo-func-epg1 | https://bbc.co.uk                       | bbc     |
      | tesco-func-epg2    | https://bbc.co.uk                       | bbc     |
      | payandgo-func-epg2 | https://bbc.co.uk                       | bbc     |
