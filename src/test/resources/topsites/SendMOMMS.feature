@mobile
Feature: Using Android device Send MO MMS

  Scenario Outline: Using Android device Send MO MMS
    Given Using Android device and serialno "ce10160ac8995b1104" send MO SMS/MMS
    And Send MMS numbers "<numberlist>"
    And wait 5 sec

    Examples: 
      | numberlist  |
      | 07872665210 |
