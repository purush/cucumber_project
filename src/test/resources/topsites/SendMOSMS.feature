@mobile
Feature: Using Android device Send MO SMS

  Scenario Outline: Using Android device Send MO SMS
    Given Using Android device and serialno "9885e6455836594c55" send MO SMS/MMS
    And Send SMS numbers "<numberlist>" and "<message>"
    And wait 5 sec

    Examples: 
      | numberlist  | message     |
      | 07872665210 | hello world |
