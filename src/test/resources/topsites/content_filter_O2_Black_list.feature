@nonmobile
Feature: Using Android Devices Check Top UK Sites and domains

  Scenario Outline: Using Android Browse top UK sites
    Given open chrome "<url>" and check http status "<bool>"

    Examples: 
      | url                            | bool  |
      | https://mobile.aabackup.info/  | false |
      | https://djp.cc/                | false |
      | https://www.djp.cc/            | false |
      | https://217.162.3.32/          | false |
      | https://216.239.138.236/       | false |
      | https://www.mobile-spy.com/    | false |
      | https://mobile-spy.com/        | false |
      | https://72.167.141.163/        | false |
      | https://www.mobilespylogs.com/ | false |
      | https://mobilespylogs.com/     | false |
      | https://hotvideo.wister.biz/   | false |
