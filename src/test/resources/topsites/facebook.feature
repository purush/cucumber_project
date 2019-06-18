@mobile
Feature: Using Android device test facebook login

  Scenario Outline: Using Android device test facebook login
    Given With Android serialno "8a936b38" update status on facebook app with "<apppackage>" and "<appactivity>" do "<action>"
    And wait 5 sec

    Examples: 
      | apppackage          | appactivity                                            | action |
      | com.facebook.katana | com.facebook.katana.dbl.activity.FacebookLoginActivity | login  |
