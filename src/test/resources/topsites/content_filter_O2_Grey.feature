@nonmobile
Feature: Using Android Devices Check Top UK Sites and domains

  Scenario Outline: Using Android Browse top UK sites
    Given open chrome "<url>" and check http status "<bool>"

    Examples: 
      | url                                 | bool  |
      | https://ffffound.com/               | false |
      | https://thereligionofpeace.com/     | false |
      | https://chatrecruit.com/            | false |
      | https://velvetaffair.co.uk/         | false |
      | https://jihadwatch.org/             | false |
      | https://backpage.com/               | false |
      | https://annsummers.com/             | false |
      | https://deviantart.com/             | false |
      | https://oswaldmosley.com/           | false |
      | https://urbandictionary.com/        | false |
      | https://israpundit.com/             | false |
      | https://hg-hydroponics.co.uk/       | false |
      | https://sigmaspy.com/               | false |
      | https://9gag.com/                   | false |
      | https://adoniscabaret.co.uk/        | false |
      | https://2saucydating.co.uk/         | false |
      | https://clear-uk.org/               | false |
      | https://plantphotonics.com/         | false |
      | https://web.archive.org/web         | false |
      | https://britainfirst.org/           | false |
      | https://barenakedislam.com/         | false |
      | https://pamelageller.com/           | false |
      | https://studio66tv.com/             | false |
      | https://cyndidarnell.com/           | false |
      | https://sultanknish.blogspot.co.uk/ | false |
      | https://hydrodaze.co.uk/            | false |
      | https://christianvoice.org.uk/      | false |
      | https://stripamob.co.uk/            | false |
      | https://web.archive.org/            | false |
      | https://plantphotonics.co.uk/       | false |
