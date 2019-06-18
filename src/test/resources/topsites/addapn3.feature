@mobile
Feature: Using Android device add list of apn to the device

  Scenario Outline: Using Android device add list of apn to the device
    Given Using Android device and serialno "9885e6455836594c55" add new apn using following values "<apnname>","<apn>","<username>","<password>","<mmsc>","<mmsc_proxy>","<mms_port>","<proxy>" and "<port>"

    Examples: 
      | apnname                     | apn           | username                     | password | mmsc                                            | mmsc_proxy   | mms_port | proxy          | port |
      | idata-full-vepg-vpgw-2      | dab.test.apn3 | dabfull@idata.dabfull.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | mobile-full-vepg-vpgw-2     | dab.test.apn3 | dabfull@mobile.dabfull.ref   | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | ibrowse-full-vepg-vpgw-2    | dab.test.apn3 | dabfull@ibrowse.dabfull.ref  | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | m-bb-full-vepg-vpgw-2       | dab.test.apn3 | dabfull@m-bb.dabfull.ref     | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | isetup-full-vepg-vpgw-2     | dab.test.apn3 | dabfull@isetup.dabfull.ref   | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | modem-full-vepg-vpgw-2      | dab.test.apn3 | dabfull@modem.dabfull.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | mvne1-full-vepg-vpgw-2      | dab.test.apn3 | dabfull@mvne1.dabfull.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | tesco-full-vepg-vpgw-2      | dab.test.apn3 | dabfull@tesco.dabfull.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | payandgo-full-vepg-vpgw-2   | dab.test.apn3 | dabfull@payandgo.dabfull.ref | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | talktalk-full-vepg-vpgw-2   | dab.test.apn3 | dabfull@talktalk.dabfull.ref | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | wap-full-vepg-vpgw-2        | dab.test.apn3 | dabfull@wap.dabfull.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 | 82.132.144.1   | 8080 |
      | wap-full-vepg-vpgw-2-legacy | dab.test.apn3 | dabfull@wap.dabfull.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 | 212.183.137.12 | 8080 |
      | vpn-full-vepg-vpgw-2        | dab.test.apn3 | dabfull@vpn.dabfull.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | idata-func-vepg-vpgw-2      | dab.test.apn3 | dabfunc@idata.dabfunc.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | mobile-func-vepg-vpgw-2     | dab.test.apn3 | dabfunc@mobile.dabfunc.ref   | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | ibrowse-func-vepg-vpgw-2    | dab.test.apn3 | dabfunc@ibrowse.dabfunc.ref  | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | m-bb-func-vepg-vpgw-2       | dab.test.apn3 | dabfunc@m-bb.dabfunc.ref     | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | isetup-func-vepg-vpgw-2     | dab.test.apn3 | dabfunc@isetup.dabfunc.ref   | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | modem-func-vepg-vpgw-2      | dab.test.apn3 | dabfunc@modem.dabfunc.ref    | password | http://mmsc-ac.mms.test.ref.o    2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | mvne1-func-vepg-vpgw-2      | dab.test.apn3 | dabfunc@mvne1.dabfunc.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | tesco-func-vepg-vpgw-2      | dab.test.apn3 | dabfunc@tesco.dabfunc.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | payandgo-func-vepg-vpgw-2   | dab.test.apn3 | dabfunc@payandgo.dabfunc.ref | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | talktalk-func-vepg-vpgw-2   | dab.test.apn3 | dabfunc@talktalk.dabfunc.ref | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | wap-func-vepg-vpgw-2        | dab.test.apn3 | dabfunc@wap.dabfunc.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 | 82.132.144.1   | 8080 |
      | wap-func-vepg-vpgw-2-legacy | dab.test.apn3 | dabfunc@wap.dabfull.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 | 212.183.137.12 | 8080 |
      | vpn-func-vepg-vpgw-2        | dab.test.apn3 | dabfunc@vpn.dabfunc.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | idata-serv-vepg-vpgw-2      | dab.test.apn3 | dabserv@idata.dabserv.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | mobile-serv-vepg-vpgw-2     | dab.test.apn3 | dabserv@mobile.dabserv.ref   | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | ibrowse-serv-vepg-vpgw-2    | dab.test.apn3 | dabserv@ibrowse.dabserv.ref  | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | m-bb-serv-vepg-vpgw-2       | dab.test.apn3 | dabserv@m-bb.dabserv.ref     | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | isetup-serv-vepg-vpgw-2     | dab.test.apn3 | dabserv@isetup.dabserv.ref   | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | modem-serv-vepg-vpgw-2      | dab.test.apn3 | dabserv@modem.dabserv.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | mvne1-serv-vepg-vpgw-2      | dab.test.apn3 | dabserv@mvne1.dabserv.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | tesco-serv-vepg-vpgw-2      | dab.test.apn3 | dabserv@tesco.dabserv.ref    | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | payandgo-serv-vepg-vpgw-2   | dab.test.apn3 | dabserv@payandgo.dabserv.ref | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | talktalk-serv-vepg-vpgw-2   | dab.test.apn3 | dabserv@talktalk.dabserv.ref | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
      | wap-serv-vepg-vpgw-2        | dab.test.apn3 | dabserv@wap.dabserv.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 | 82.132.144.1   | 8080 |
      | wap-serv-vepg-vpgw-2-legacy | dab.test.apn3 | dabserv@wap.dabfull.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 | 212.183.137.12 | 8080 |
      | vpn-serv-vepg-vpgw-2        | dab.test.apn3 | dabserv@vpn.dabserv.ref      | password | http://mmsc-ac.mms.test.ref.o2.co.uk:10021/mmsc | 82.132.144.1 |     8080 |                |      |
