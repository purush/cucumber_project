@mobile
Feature: Using Android device Dial MO Voice Call

  Scenario Outline: Using Android device Dial MO Voice Call
    Given Using Android device and serialno "ce10160ac8995b1104" dial MO Call
    And Dial numbers "<numberlist>"
    And wait 15 sec
    And Answer Voice Call "8a936b38"
    And wait 5 sec
    And Close Voice Call "ce10160ac8995b1104"

    Examples: 
      | numberlist  |
      | 07434263007 |
