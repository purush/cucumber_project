@mobile
Feature: Using Android device add list of apn to the device

  Scenario Outline: Using Android device add list of apn to the device
    Given Using Android device and serialno "9885e6455836594c55" add new apn using following values "<apnname>","<apn>","<username>","<password>","<mmsc>","<mmsc_proxy>","<mms_port>","<proxy>" and "<port>"

    Examples: 
      | apnname            | apn           | username                     | password | mmsc                                            | mmsc_proxy   | mms_port | proxy        | port |
      | idata-func-epg1    | dab.test.apn1 | dabfunc@idata.dabfunc.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | mobile-func-epg1   | dab.test.apn1 | dabfunc@mobile.dabfunc.ref   | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | ibrowse-func-epg1  | dab.test.apn1 | dabfunc@ibrowse.dabfunc.ref  | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | m-bb-func-epg1     | dab.test.apn1 | dabfunc@m-bb.dabfunc.ref     | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | isetup-func-epg1   | dab.test.apn1 | dabfunc@isetup.dabfunc.ref   | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | modem-func-epg1    | dab.test.apn1 | dabfunc@modem.dabfunc.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | mvne1-func-epg1    | dab.test.apn1 | dabfunc@mvne1.dabfunc.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | tesco-func-epg1    | dab.test.apn1 | dabfunc@tesco.dabfunc.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | payandgo-func-epg1 | dab.test.apn1 | dabfunc@payandgo.dabfunc.ref | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | talktalk-func-epg1 | dab.test.apn1 | dabfunc@talktalk.dabfunc.ref | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | wap-func-epg1      | dab.test.apn1 | dabfull@wap.dabfunc.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 | 82.132.144.1 | 8080 |
      | vpn-func-epg1      | dab.test.apn1 | dabfull@vpn.dabfunc.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | idata-func-epg2    | dab.test.apn2 | dabfunc@idata.dabfunc.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | mobile-func-epg2   | dab.test.apn2 | dabfunc@mobile.dabfunc.ref   | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | ibrowse-func-epg2  | dab.test.apn2 | dabfunc@ibrowse.dabfunc.ref  | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | m-bb-func-epg2     | dab.test.apn2 | dabfunc@m-bb.dabfunc.ref     | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | isetup-func-epg2   | dab.test.apn2 | dabfunc@isetup.dabfunc.ref   | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | modem-func-epg2    | dab.test.apn2 | dabfunc@modem.dabfunc.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | mvne1-func-epg2    | dab.test.apn2 | dabfunc@mvne1.dabfunc.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | tesco-func-epg2    | dab.test.apn2 | dabfunc@tesco.dabfunc.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | payandgo-func-epg2 | dab.test.apn2 | dabfunc@payandgo.dabfunc.ref | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | talktalk-func-epg2 | dab.test.apn2 | dabfunc@talktalk.dabfunc.ref | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
      | wap-func-epg2      | dab.test.apn2 | dabfull@wap.dabfunc.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 | 82.132.144.1 | 8080 |
      | vpn-func-epg2      | dab.test.apn2 | dabfull@vpn.dabfunc.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |              |      |
    