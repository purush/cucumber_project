package topsites;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertFalse;

import java.awt.image.BufferedImage;
import java.awt.image.DataBufferByte;
import java.awt.image.WritableRaster;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

import javax.imageio.ImageIO;

import org.apache.commons.io.FileUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.junit.BeforeClass;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.logging.LogEntries;
import org.openqa.selenium.logging.LogEntry;
import org.openqa.selenium.logging.LogType;
import org.openqa.selenium.logging.LoggingPreferences;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.appium.java_client.MobileElement;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidKeyCode;
import io.appium.java_client.remote.MobileBrowserType;
import io.appium.java_client.remote.MobileCapabilityType;
import io.appium.java_client.service.local.AppiumDriverLocalService;
import io.appium.java_client.service.local.AppiumServiceBuilder;
import io.appium.java_client.service.local.flags.GeneralServerFlag;
import ru.yandex.qatools.ashot.AShot;
import ru.yandex.qatools.ashot.Screenshot;
import ru.yandex.qatools.ashot.shooting.ShootingStrategies;


public class TopUKsites_Android {
	int try_again = 1;


	String[] stringArrayFirst = { "Stephen", "John", "Joseph", "Mark", "Justin", "Christopher", "Adelle", "Nancy",
			"Martin", "Erwin", "BillyBowden", "Pieterson", "Alaister", "Stuart" };

	String[] stringArrayLast = { "Good Luck", "Have a nice day", "Sleep well", "Have a fantastic day ahead",
			"Good Morning", "God bless you", "Good Evening", "Have a great day ahead", "Happy Birthday", "Good Night" };
	String[] stringArrayMiddle = { "Hello welcome to software testing", "Hi welcome to automation testing",
			"Welcome to Axion", "Here we going to learn about Selenium Webdriver", "Environmental set up for TestNG",
			"This is introduction class about Maven ", "Know something about Selenium Standalone Server",
			"Create first program using class", "Learn and Execute Test Method", "Learn about UI automator", "a",
			"Appium works fine", "Android latest version is marshmellow", "Like to play football",
			"Listening to ladygaga", "Playing wordrush", "Going to movie with friends", "Listening to adelle",
			"Software testers succeed where others fail", " First do it then do it right then do it better",
			"Dont get overwhelmed by your goal if it seems to big. Focus on that one small step you can take first",
			" Success isnt about not failing its about bouncing back after you fail",
			"Dont Let Yesterday Take Up Too Much Of Today",
			"You Learn More From Failure Than From Success Dont Let It Stop You,Failure Builds Character",
			"Its Not Whether You Get Knocked Down Its Whether You Get Up",
			"If You Are Working On Something That You Really Care About, You Dont Have To Be Pushed. The Vision Pulls You",
			"People Who Are Crazy Enough To Think They Can Change The World, Are The Ones Who Do",
			"Failure Will Never Overtake Me If My Determination To Succeed Is Strong Enough",
			"Entrepreneurs Are Great At Dealing With Uncertainty And Also Very Good At Minimizing Risk. Thats The Classic Entrepreneur",
			"Knowing Is Not Enough We Must Apply Wishing Is Not Enough We Must Do",
			"Imagine Your Life Is Perfect In Every Respect What Would It Look Like ",
			"We Generate Fears While We Sit We Overcome Them By Action",
			"In order to succeed we must first believe that we can",
			"The Pessimist Sees Difficulty In Every Opportunity The Optimist Sees The Opportunity In Every Difficulty",
			"Whether You Think You Can Or Think You Cant Youre Right" };

	AppiumDriverLocalService Appiumservice;
	String deviceno = null;
	private static String Appium_Path = "/usr/local/lib/node_modules/appium/build/lib/main.js";
	private static String Node_Path = "/usr/local/bin/node";
	@SuppressWarnings("rawtypes")
	AndroidDriver androiddriver;
	int pageLoadTimeOut = 15;
	WebDriverWait wait;
	ChromeDriver driver = null;
	int countrow = 0;

	@Before("@mobile")
	public void test_start_up() {

		Appiumservice = AppiumDriverLocalService.buildService(new AppiumServiceBuilder()
				.usingDriverExecutable(new File(Node_Path)).withArgument(GeneralServerFlag.SESSION_OVERRIDE)
				.withAppiumJS(new File(Appium_Path)).withIPAddress("127.0.0.1").usingAnyFreePort());

		Appiumservice.start();
		System.out.println(Appiumservice.getUrl());
	}
	
	@Before("@nonmobile")
	public void test_start_up_non_mobile() {

	

	}


	
	@SuppressWarnings("rawtypes")
	@Given("^Dismiss Alerts Android device serialno \"(.*?)\"$")
	public void dismiss_alerts_android_Device(String deviceSerialNoToUse) {

		String button_ok = "//android.widget.Button[@text='OK']";		

		DesiredCapabilities capabilities = new DesiredCapabilities();

		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.android.phone");
		capabilities.setCapability("appActivity", "com.android.phone.MobileNetworkSettings");

		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			System.out.println(" Error Exception = " + e.getMessage());
		}
	
		// androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut,
		// TimeUnit.SECONDS);

		// Click OK button on Message 
		
		try 
		{
		
		WebElement button_ok_click = explicitWait_5sec(By.xpath(button_ok), androiddriver);
		button_ok_click.click();

		} catch( Exception e)
		{
		
		}
		
	

	}

	@SuppressWarnings("rawtypes")
	@Given("^Using Android device serialno \"(.*?)\" set apn \"(.*?)\"$")
	public void using_Android_device_serialno_set_apn(String deviceSerialNoToUse, String apnname) {
if(!apnname.contains("same"))
		{
    	deviceno = deviceSerialNoToUse;
    	//dismiss_alerts_android_Device(deviceno);
		String access_point_xpath = "//android.widget.TextView[@text='Access Point Names']";
		String choose_apn_xpath = "//android.widget.TextView[contains(@text,'" + apnname
				+ "')]/../../android.widget.RadioButton";

		DesiredCapabilities capabilities = new DesiredCapabilities();

		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.samsung.networkui");
		//capabilities.setCapability("appActivity", "com.android.phone.MobileNetworkSettings");
		capabilities.setCapability("appActivity", "com.samsung.networkui.MobileNetworkSettings");
		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			System.out.println(" Error Exception = " + e.getMessage());
		}
		 androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut,
		 TimeUnit.SECONDS);

		// To select Access point name
		WebElement apn_access_point = explicitWait(By.xpath(access_point_xpath), androiddriver);
		apn_access_point.click();

		// scroll to access point name
		scrollToExactElement(apnname, androiddriver);

		// select that element
		WebElement apn_select_radio_button = explicitWait(By.xpath(choose_apn_xpath), androiddriver);
		apn_select_radio_button.click();
		wait_sec(5);
		}
else
{
	//dismiss_alerts_android_Device(deviceno);

}
	}
	
	
	@SuppressWarnings("rawtypes")
	@Given("^open chrome \"(.*?)\" and check http status \"(.*?)\"$")
	public void use_Android_device_with_serialno(String weburl , Boolean  flag) {
	
	
	
	

        try
        {
            ChromeOptions options = new ChromeOptions();
          
            System.setProperty("webdriver.chrome.driver", "/Users/purush/cukes/cucumber-project/chromedriver");
            DesiredCapabilities cap = DesiredCapabilities.chrome();
            cap.setCapability(ChromeOptions.CAPABILITY, options);

         
            LoggingPreferences logPrefs = new LoggingPreferences();
            logPrefs.enable(LogType.PERFORMANCE, Level.ALL);
            cap.setCapability(CapabilityType.LOGGING_PREFS, logPrefs);

            driver = new ChromeDriver(cap);
            driver.manage().timeouts().pageLoadTimeout(10, TimeUnit.SECONDS);
            // navigate to the page
            System.out.println("Navigate to " + weburl);
            String currentURL = driver.getCurrentUrl();

            try
            {
            driver.navigate().to(weburl);
            }

            catch (TimeoutException e) {
            	
        			 Writer w = null;
        		   		try {
        		   			w = new BufferedWriter(new FileWriter("/Users/purush/cukes/cucumber-project/output/page_not_load_out.txt",true));
        		   			w.write("|"+weburl+"|" + currentURL + "|"+ "Page Timeout"  + "|" +"\n");
        		   			w.flush();
        		   			w.close();
        		   		
        		   		} catch (IOException e1) {
        		   			// TODO Auto-generated catch block
        		   			e1.printStackTrace();
        		   		}
        		   		System.out.println("###########################################");
        				System.out.println("##############  Page Not loaded and Timeout");
        				System.out.println("###########################################");
        		
            
            }
            
            if(!linkExists(weburl))
            {
            
            	 Writer w = null;
 		   		try {
 		   			w = new BufferedWriter(new FileWriter("/Users/purush/cukes/cucumber-project/output/no_link_out.txt",true));
 		   			w.write("|"+weburl+"|" + currentURL + "|"+ "No Link"  + "|" +"\n");
 		   			w.flush();
 		   			w.close();
 		   		
 		   		} catch (IOException e1) {
 		   			// TODO Auto-generated catch block
 		   			e1.printStackTrace();
 		   		}
        		System.out.println("###########################################");
				System.out.println("##############  Link Not Exist");
				System.out.println("###########################################");
		
            }
            
            
        
            if (flag)
            {

         
            LogEntries logs = driver.manage().logs().get("performance");

            int status = -1;
            String messageUrl = null;

            System.out.println("\nList of log entries:\n");

            for (Iterator<LogEntry> it = logs.iterator(); it.hasNext();)
            {
                LogEntry entry = it.next();

                try
                {
                    JSONObject json = new JSONObject(entry.getMessage());

           //        System.out.println(json.toString());

                    JSONObject message = json.getJSONObject("message");
                    String method = message.getString("method");

                    if (method != null
                            && "Network.responseReceived".equals(method))
                    {
                        JSONObject params = message.getJSONObject("params");

                        JSONObject response = params.getJSONObject("response");
                         messageUrl = response.getString("url");

                        if (currentURL.equals(messageUrl))
                        {
                            status = response.getInt("status");

                            System.out.println(
                                    "############### URL "
                                            + messageUrl + ": " + status);

                      
                            System.out.println("\n ######## STATUS CODE : " + status);
                            if (status == 200)
                            {
                               if(messageUrl.contains("https") )
                               {
                            	 Writer w = null;
                         		try {
                         			w = new BufferedWriter(new FileWriter("/Users/purush/cukes/cucumber-project/output/200_rep_out.txt",true));
                         			w.write("|"+weburl+"|" + messageUrl + "|"+ status + "|" +"\n");
                         			w.flush();
                         			w.close();
                         		
                         		} catch (IOException e1) {
                         			// TODO Auto-generated catch block
                         			e1.printStackTrace();
                         		}
                         		
                              }
                         		
                            }
                            else
                            {
                            	 Writer w = null;
                         		try {
                         			w = new BufferedWriter(new FileWriter("/Users/purush/cukes/cucumber-project/output/no_200_response.txt",true));
                         			w.write("|"+weburl+"|" + messageUrl + "|"+ status + "|" +"\n");
                         			w.flush();
                         			w.close();
                         		} catch (IOException e1) {
                         			// TODO Auto-generated catch block
                         			e1.printStackTrace();
                         		}
                            
                            }
                      
                      
                      
                      
                      
                       }
                    }
                } catch (JSONException e)
                {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }

          
            
        } 
        
        }finally
        {
            if (driver != null)
            {
              //  driver.quit();
            }
        }

       
      

		
	}
	

public static boolean linkExists(String URLName){
    try {
      HttpURLConnection.setFollowRedirects(false);
      HttpURLConnection con =
         (HttpURLConnection) new URL(URLName).openConnection();
      con.setRequestMethod("HEAD");
      return (con.getResponseCode() == HttpURLConnection.HTTP_OK);
    }
    catch (Exception e) {
       e.printStackTrace();
       return false;
    }
  }

	public void scrollToExactElement(String str) {
		((AndroidDriver<MobileElement>) androiddriver).findElementByAndroidUIAutomator(
				"new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().descriptionStartsWith(\""
						+ str + "\").instance(0))");
	}

	@Given("^With Android serialno \"(.*?)\" update status on facebook app with \"(.*?)\" and \"(.*?)\" do \"(.*?)\"$")
	public void with_Android_serialno_login_facebook_app_with_and(String deviceSerialNoToUse, String appPackage,
			String appActivity, String action) throws Throwable {
		// Write code here that turns the phrase above into concrete actions

		String username = "axiondemo";
		String password = "axion12345";

		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", appPackage);
		capabilities.setCapability("appActivity", appActivity);

		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			System.out.println(" Error Exception = " + e.getMessage());
		}

		System.out.println("################# " + action + "### " + action.contains("in"));
		System.out.println("################# " + action + "### " + action.contains("in"));
		System.out.println("################# " + action + "### " + action.contains("in"));

		if (action.contains("in")) {

			wait = new WebDriverWait(androiddriver, 60);
			wait.until(ExpectedConditions.elementToBeClickable(By.xpath(
					"//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.EditText[1]")));

			androiddriver
					.findElement(By
							.xpath("//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.EditText[1]"))
					.click();

			// Clear old data
			androiddriver
					.findElement(By
							.xpath("//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.EditText[1]"))
					.clear();

			// Enter new data Username
			androiddriver
					.findElement(By
							.xpath("//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.EditText[1]"))
					.sendKeys(username);

			// First click
			androiddriver
					.findElement(By
							.xpath("//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.RelativeLayout[1]/android.widget.EditText[1]"))
					.click();

			// Clear old data

			androiddriver
					.findElement(By
							.xpath("//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.RelativeLayout[1]/android.widget.EditText[1]"))
					.clear();

			// Enter new data Password
			androiddriver
					.findElement(By
							.xpath("//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.RelativeLayout[1]/android.widget.EditText[1]"))
					.sendKeys(password);

			// Click login button
			androiddriver
					.findElement(By
							.xpath("//android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.Button[1]"))
					.click();

			// Deny location

			wait = new WebDriverWait(androiddriver, 30);

			wait.until(ExpectedConditions.elementToBeClickable(By.id("com.facebook.katana:id/dbl_on")));

			androiddriver.findElement(By.id("com.facebook.katana:id/dbl_on")).click();

			wait = new WebDriverWait(androiddriver, 30);

			wait.until(ExpectedConditions
					.elementToBeClickable(By.id("com.android.packageinstaller:id/permission_deny_button")));

			androiddriver.findElement(By.id("com.android.packageinstaller:id/permission_deny_button")).click();

			// To locate on the status box

			wait = new WebDriverWait(androiddriver, 60);
			wait.until(ExpectedConditions.elementToBeClickable(By.id("com.facebook.katana:id/feed_composer_hint")));
			androiddriver.findElement(By.id("com.facebook.katana:id/feed_composer_hint")).click();

			// To click on the status entry

			wait = new WebDriverWait(androiddriver, 60);
			wait.until(ExpectedConditions.elementToBeClickable(By.id("com.facebook.katana:id/status_text")));

			androiddriver.findElement(By.id("com.facebook.katana:id/status_text")).click();
			androiddriver.findElement(By.id("com.facebook.katana:id/status_text")).clear();

			// Randomize the string value
			int randomIndexFirst = new Random().nextInt(stringArrayFirst.length);
			int randomIndexMiddle = new Random().nextInt(stringArrayMiddle.length);
			int randomIndexLast = new Random().nextInt(stringArrayLast.length);

			String toPrint = "status update Text " + stringArrayFirst[randomIndexFirst] + " says "
					+ stringArrayMiddle[randomIndexMiddle] + " and " + stringArrayLast[randomIndexLast] + " ";

			androiddriver.findElement(By.id("status_text")).sendKeys(toPrint);

			wait = new WebDriverWait(androiddriver, 60);

			wait.until(ExpectedConditions.elementToBeClickable(By.id("com.facebook.katana:id/primary_named_button")));

			androiddriver.findElement(By.id("com.facebook.katana:id/primary_named_button")).click();

			Thread.sleep(10000);
		}

		if (action.contains("out")) {

			wait = new WebDriverWait(androiddriver, 60);
			wait.until(ExpectedConditions.elementToBeClickable(By.name("More")));
			androiddriver.findElement(By.name("More")).click();

			scrollToExactElement("Log");

			wait = new WebDriverWait(androiddriver, 60);
			wait.until(ExpectedConditions.elementToBeClickable(By.name("Log Out")));
			androiddriver.findElement(By.name("Log Out")).click();

			androiddriver
					.findElement(By
							.xpath("//android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.LinearLayout[1]/android.widget.Button[2]"))
					.click();
		}

	}

	@Given("^Check mobile data connection for serialno \"(.*?)\"$")
	public void check_mobile_data_connection_for_serialno(String deviceSerialNoToUse) throws Throwable {

		Process p = null;

        String adb_reboot = " /Users/purush/Library/Android/sdk/platform-tools/adb -s " + deviceSerialNoToUse + " reboot";
		String checkDataState = "/Users/purush/Library/Android/sdk/platform-tools/adb -s " + deviceSerialNoToUse
				+ " shell am start -n com.saschahuth.imeigetter/.MainActivity";
	
		p = Runtime.getRuntime().exec(checkDataState);
		p.waitFor();
		String checkDataState_datastate = "/Users/purush/Library/Android/sdk/platform-tools/adb -s "
				+ deviceSerialNoToUse + " shell am broadcast -a com.saschahuth.imeigetter.GET_DATA_STATE";

		p = Runtime.getRuntime().exec(checkDataState_datastate);
		p.waitFor();

		StringBuffer output = new StringBuffer();

		BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));

		String line = "";

		while ((line = reader.readLine()) != null) {
			output.append(line + "\n");
		}


		try {
		
			assertTrue(output.toString().contains("DATA_CONNECTED"));
		
		} catch (AssertionError e) {

			if(try_again == 1)
			{			
			System.out.println(" ******* Try checking Mobile data connection again ");
			try_again =2;
			check_mobile_data_connection_for_serialno( deviceSerialNoToUse);
			}
			
			

		}
		

		String checkDataState_datastate_stop = "/Users/purush/Library/Android/sdk/platform-tools/adb -s "
				+ deviceSerialNoToUse + " shell am force-stop com.saschahuth.imeigetter";

		p = Runtime.getRuntime().exec(checkDataState_datastate_stop);

	}

	@Given("^wait (\\d+) sec$")
	public void wait_sec(int sec) {
		try {
			Thread.sleep((sec * 1000));
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@SuppressWarnings("rawtypes")
	@Given("^Using Android device serialno \"(.*?)\" open \"(.*?)\" browser$")
	public void using_Android_device_serial_no_open_browser(String deviceSerialNoToUse, String Browsertype) {
    	deviceno = deviceSerialNoToUse;

		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("browserName", MobileBrowserType.CHROME);
		// MobileBrowserType

		try {

			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			try { // Try again ......
				androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
			} catch (MalformedURLException e1) {
				// TODO Auto-generated catch block
				//e1.printStackTrace();
			}
		}
		androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

	}

	@Given("^Using Android device and serialno \"(.*?)\" dial MO Call$")
	public void Using_android_device_dial_mo_call(String deviceSerialNoToUse) {

		DesiredCapabilities capabilities = new DesiredCapabilities();

		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.samsung.android.contacts");
		capabilities.setCapability("appActivity", "com.android.dialer.DialtactsActivity");

		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			System.out.println(" Error Exception = " + e.getMessage());
		}

	}

	@Given("^Using Android device and serialno \"(.*?)\" send MO SMS/MMS$")
	public void Using_android_device_dial_send_mo_sms(String deviceSerialNoToUse) {

		DesiredCapabilities capabilities = new DesiredCapabilities();

		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.samsung.android.messaging");
		capabilities.setCapability("appActivity", "com.android.mms.ui.ConversationComposer");

		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			System.out.println(" Error Exception = " + e.getMessage());
		}

	}

	@Given("^Send SMS numbers \"(.*?)\" and \"(.*?)\"$")
	public void send_mo_sms(String testPhoneNumber, String message) {

		String click_message = "com.samsung.android.messaging:id/floating_action_button";
		String set_to_field = "com.samsung.android.messaging:id/recipients_editor_to";
		String sms_body = "com.samsung.android.messaging:id/editor_body";
		String send_button = "com.samsung.android.messaging:id/send_button";
		String compose_button = "com.samsung.android.messaging:id/btn_menu_compose";

		try {

			WebElement WE_option1 = explicitWait(By.id(click_message), androiddriver);
			WE_option1.click();
			// set to number

			WebElement WE_0 = explicitWait(By.id(compose_button), androiddriver);
			WE_0.click();

			WebElement WE_option2 = explicitWait(By.id(set_to_field), androiddriver);
			WE_option2.sendKeys(testPhoneNumber);

			// fill message body

			WebElement WE_option3 = explicitWait(By.id(sms_body), androiddriver);
			WE_option3.sendKeys(message);

			// Click on send button
			WebElement WE_option4 = explicitWait(By.id(send_button), androiddriver);
			WE_option4.click();
		} catch (Exception ex) {
			System.out.println(" Error sending SMS = " + ex.getMessage());

		}

	}

	@Given("^Send MMS numbers \"(.*?)\"$")
	public void send_mo_mms(String testPhoneNumber) {

		String click_message = "com.samsung.android.messaging:id/floating_action_button";
		String set_to_field = "com.samsung.android.messaging:id/recipients_editor_to";
		String mms_body = "com.samsung.android.messaging:id/editor_body";
		String send_button = "com.samsung.android.messaging.mms:id/send_button";
		String compose_button = "com.samsung.android.messaging:id/btn_menu_compose";

		String click_attach_img_btn = "com.samsung.android.messaging:id/attach_button";
		String click_image_xpath = "com.samsung.android.messaging:id/checkbox";
		String click_choose_image_from_camera = "//android.view.View[@resource-id='com.sec.android.gallery3d:id/gl_root_view']/com.sec.samsung.gallery.glview.composeView.PositionControllerBase.ThumbObject[@index='0']";
		String click_choose_first_image = "//android.view.View[@resource-id='com.sec.android.gallery3d:id/gl_root_view']/com.sec.samsung.gallery.glview.composeView.PositionControllerBase.ThumbObject[@index='0']";
		String click_done = "com.sec.android.gallery3d:id/action_done";
		String click_send_btn = "com.samsung.android.messaging:id/send_button";

		try {

			WebElement WE_1 = explicitWait(By.id(click_message), androiddriver);
			WE_1.click();
			WebElement WE_0 = explicitWait(By.id(compose_button), androiddriver);
			WE_0.click();

			// set to number

			WebElement WE_2 = explicitWait(By.id(set_to_field), androiddriver);
			WE_2.sendKeys(testPhoneNumber);

			// fill message body

			WebElement WE_3 = explicitWait(By.id(mms_body), androiddriver);
			WE_3.sendKeys("MMS Message sample");

			// click attach image button
			WebElement WE_option1 = explicitWait(By.id(click_attach_img_btn), androiddriver);
			WE_option1.click();

			// set to number

			WebElement WE_option2 = explicitWait(By.id(click_image_xpath), androiddriver);
			WE_option2.click();

			// Click on send button
			WebElement WE_option6 = explicitWait(By.id(click_send_btn), androiddriver);
			WE_option6.click();

		} catch (Exception ex) {
			System.out.println(" Error sending SMS = " + ex.getMessage());

		}

	}

	@Given("^Dial numbers \"(.*?)\"$")
	public void Dial_mo_numbers(String testPhoneNumber) {

		String android_id_dialer_screen_enter_number = "com.samsung.android.contacts:id/dialpad_spacer_view";
		String android_call_dial_button = "com.samsung.android.contacts:id/dialButtonImage";

		WebElement WE_option1 = explicitWait(By.id(android_id_dialer_screen_enter_number), androiddriver);
		WE_option1.click();

		WebElement WE_option2 = explicitWait(By.id(android_id_dialer_screen_enter_number), androiddriver);
		WE_option2.sendKeys(testPhoneNumber);

		// Click on call button
		WebElement WE_option3 = explicitWait(By.id(android_call_dial_button), androiddriver);
		WE_option3.click();

	}

	@Given("^Close Voice Call \"(.*?)\"$")
	public void Close_mo_call(String deviceSerialNoToUse) {
		String end_call = "/Users/purush/Library/Android/sdk/platform-tools/adb  -s " + deviceSerialNoToUse
				+ "  shell input keyevent " + "6";
		Process p = null;
		System.out.println("  EVENT KEYCODE_ENDCALL");

		try {
			p = Runtime.getRuntime().exec(end_call);
			p.waitFor();
			p = Runtime.getRuntime().exec(end_call);
			p.waitFor();

		} catch (IOException | InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Given("^Answer Voice Call \"(.*?)\"$")
	public void Answer_mo_call(String deviceSerialNoToUse) {
		String end_call = "/Users/purush/Library/Android/sdk/platform-tools/adb  -s " + deviceSerialNoToUse
				+ "  shell input keyevent " + "5";
		Process p = null;
		System.out.println("  EVENT KEYCODE_CALL");

		try {
			p = Runtime.getRuntime().exec(end_call);
			p.waitFor();
			p = Runtime.getRuntime().exec(end_call);
			p.waitFor();

		} catch (IOException | InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Given("^browse url \"(.*?)\" and check if page is https \"(.*?)\"$")
	public void open_browser_and_enter_url_and_check_if_page_is_https(String weburl,
			String title) {

		androiddriver.get(weburl);

		checkPageIsReady();
		

		System.out.println("######### CHECK HTTPS ########\n");
		System.out.println("######### URL = " + androiddriver.getCurrentUrl() + "\n");

		try {
			assertTrue(androiddriver.getCurrentUrl().toString().toLowerCase().contains(title.toLowerCase()));
		} catch (Exception e) {
			System.out.println(" Assertion Error when checking Page Title " + e.getMessage());

		}
		
		   //Whatever the file path is.
		   

        Writer w = null;
		try {
			w = new BufferedWriter(new FileWriter("/Users/purush/cukes/cucumber-project/output/out.txt",true));
			w.write(androiddriver.getCurrentUrl() + "\n");
			w.flush();
			w.close();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
      
 
		

	}


	@Given("^open browser and enter url \"(.*?)\" and check if page loaded and contains page title \"(.*?)\"$")
	public void open_browser_and_enter_url_and_check_if_page_loaded_and_contains_page_title(String weburl,String title)
	{
				//String pageBodyHTML = null;
				
				String screencap = null;
				Process p = null;

			try
			{
					androiddriver.manage().timeouts().pageLoadTimeout(pageLoadTimeOut, TimeUnit.SECONDS );
					androiddriver.get(weburl);
			}
			catch ( Exception e)
			{
				System.out.println("####### Page Load Timeout ###### " + e.getMessage());
				//pageBodyHTML = androiddriver.findElement(By.tagName("body")).getText();
		    	String failed = "failed scenario ";
				assertFalse(failed.contains("failed"));
				return;
		
			}
			//checkPageIsReady();
			//pageBodyHTML = androiddriver.findElement(By.tagName("body")).getText();

            String title_s = null;
            title_s = androiddriver.getTitle().toString();
         	System.out.println("/n");
         	System.out.println(" ########### Page Title ######## =  "+ androiddriver.getTitle().toString());

		
			try {
				assertTrue(title_s.toLowerCase().contains(title.toLowerCase()));
			} catch (Exception e) {
				System.out.println(" Assertion Error when checking Page Title " + e.getMessage());
	
			}
			screencap = "/Users/purush/Library/Android/sdk/platform-tools/adb -s " +  deviceno + " shell screencap -p /sdcard/screen.png ";
	        System.out.println(" ##### screen cap comand  ##### "+ screencap);
	       // dismiss_alerts_android_Device(deviceno);
	        
	        try
	        {
	        p = Runtime.getRuntime().exec(screencap);
			p.waitFor();	
			p.destroy();
	        }
	        catch ( Exception e)
	    	{
	    		if (p != null)
	            {
	                p.destroy();
	                p = null;
	            }
	    	}	 
	    	
	    	  
		     /*
				try {
					assertTrue(pageBodyHTML.toLowerCase().contains(title.toLowerCase()));
				} catch (Exception e) {
					System.out.println(" Assertion Error when checking Page contents contains " + title + " " + e.getMessage());
		
				}
			*/

	}
	
	

	@Given("^open browser and enter url \"(.*?)\" and check if page body contains reset \"(.*?)\"$")
	public void open_browser_and_enter_url_and_check_if_page_body_contains_page_reset(String weburl,
			String pagebody) {
		String pageBodyHTML = null;

			try
			{
					androiddriver.manage().timeouts().pageLoadTimeout(5, TimeUnit.SECONDS );
					androiddriver.get(weburl);
			}
			catch ( Exception e)
			{
				System.out.println("####### Page Load Timeout ###### ");
				
			}
		
			pageBodyHTML = androiddriver.findElement(By.tagName("body")).getText();
         	System.out.println("/n");
         	System.out.println(" ########### Page Body ######## =  "+ pageBodyHTML);
         	System.out.println("/n");
         	System.out.println("/n");

		try {
			assertTrue(pageBodyHTML.toLowerCase().contains(pagebody.toLowerCase()));
		} catch (Exception e) {
			System.out.println(" Assertion Error when checking Page Reset Not the case " + pageBodyHTML + e.getMessage());

		}
     /*
		try {
			assertTrue(pageBodyHTML.toLowerCase().contains(title.toLowerCase()));
		} catch (Exception e) {
			System.out.println(" Assertion Error when checking Page contents contains " + title + " " + e.getMessage());

		}
	*/

	}
	
	@Given("^open browser and enter url \"(.*?)\" and check iwf page loaded and contains page title \"(.*?)\"$")
	public void open_browser_and_enter_url_and_check_iwf_page_loaded_and_contains_page_title(String weburl,
			String title) {

		androiddriver.get(weburl);

	}
	
	public boolean  checkPageLoadschrome(String weburl, String currentURL )
 {
		JavascriptExecutor js = (JavascriptExecutor) driver;

		boolean flag  = false;
		
		// This loop will rotate for 30 times to check If page Is ready after
		// every 1 second.

		for (int i = 0; i < 30; i++) {
			try {
				Thread.sleep(1000);
			} catch (Exception e) {

			}
			// To check page ready state.
			if (js.executeScript("return document.readyState").toString().equals("complete")) {

				flag = true;
				break;
			}

		}
		
		if(flag)
		{
		
		 Writer w = null;
   		try {
   			w = new BufferedWriter(new FileWriter("/Users/purush/cukes/cucumber-project/output/page_load_out.txt",true));
   			w.write("|"+weburl+"|" + currentURL + "|"+ "Page Loaded"  + "|" +"\n");
   			w.flush();
   			w.close();
   		
   		} catch (IOException e1) {
   			// TODO Auto-generated catch block
   			e1.printStackTrace();
   		}
   		
   		System.out.println("###########################################");
		System.out.println("##############  Page Is loaded = "+ js.executeScript("return document.readyState").toString());
		System.out.println("###########################################");
		return true;
		}
		return false;
		
	}

	public boolean checkPageIsReady() {
		JavascriptExecutor js = (JavascriptExecutor) androiddriver;

		// Initially bellow given if condition will check ready state of page.

		if (js.executeScript("return document.readyState").toString().equals("complete")) {
			System.out.println("###########################################");

			System.out.println("##############  Page Is loaded.#############" + js.executeScript("return document.readyState").toString());
			
			System.out.println("###########################################");

			return true;

		}

		// This loop will rotate for 30 times to check If page Is ready after
		// every 1 second.

		for (int i = 0; i < 30; i++) {
			try {
				Thread.sleep(1000);
			} catch (Exception e) {

			}
			// To check page ready state.
			if (js.executeScript("return document.readyState").toString().equals("complete")) {
			
				System.out.println("###########################################");

				System.out.println("##############  Page Is loaded after "+ i + " sec  #############" + js.executeScript("return document.readyState").toString());
				
				System.out.println("###########################################");

			
				break;
			}

		}
		return true;
	}

	@Given("^Click any (\\d+) random links from the site$")
	public void click_any_links(int clickNtimes) {

		Random r = new Random();
		int randomNumber;
		int linksCount = 0;
		List<WebElement> anchorTagsList = null;
		// find a random link on the page and click
		
		try {
		//	@SuppressWarnings("unchecked")
	    	anchorTagsList = androiddriver.findElements(By.tagName("a"));
			linksCount	 = anchorTagsList.size();
		} catch (Exception e) {

		}
		// To
		

		try {
			assertTrue(linksCount > 0);

		} catch (Exception e) {

			System.out.println("  No links in the page " + e.getMessage());

		}

		String[] links = new String[linksCount];
		int startcount = 1;
		for (int i = 0; i < linksCount; i++) {
			links[i] = anchorTagsList.get(i).getAttribute("href");
		}

		// navigate to each Link on the web page
		for (int i = 1; i < linksCount; i++) {
			randomNumber = r.nextInt(linksCount - 2);
			String url = links[randomNumber];

			if (!url.contains("javascript") && url != "") {

				linksCount++;
				if (startcount <= clickNtimes) {
					androiddriver.navigate().to(url);
					startcount++;
				} else {
					break;
				}

			}

		}

	}

	@Given("^Using Android device and serialno \"(.*?)\" Launch Camera and Take a Picture$")
	public void launch_camera_and_take_a_picture(String deviceSerialNoToUse) {

		String click_camera = "/Users/purush/Library/Android/sdk/platform-tools/adb  -s " + deviceSerialNoToUse
				+ "  shell input keyevent " + "66";
		Process p = null;

		String camera_Class = "GLButton";
		String switch_camera = "//android.view.View[@content-desc='Shutter']";

		DesiredCapabilities capabilities = new DesiredCapabilities();

		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.sec.android.app.camera");
		capabilities.setCapability("appActivity", "com.sec.android.app.camera.Camera");
		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		androiddriver.findElement(By.id("android:id/button1")).click();

		androiddriver.findElement(By.id("com.sec.android.app.camera:id/interaction_close_button")).click();

		androiddriver.findElement(By.id("com.sec.android.app.camera:id/interaction_close_button")).click();

		androiddriver.findElement(By.id("com.sec.android.app.camera:id/interaction_close_button")).click();

		androiddriver.findElement(By.id("android:id/button1")).click();

		try {
			p = Runtime.getRuntime().exec(click_camera);
			p.waitFor();
			p = Runtime.getRuntime().exec(click_camera);
			p.waitFor();

		} catch (IOException | InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Given("^Using Android device and serialno \"(.*?)\" launch cal and add two numbers$")
	public void launch_calculator_app_and_add_two_numbers(String deviceSerialNoToUse) {

		String four = "//android.widget.Button[@text = '4']";
		String five = "//android.widget.Button[@text = '5']";
		String equals = "//android.widget.Button[@text = '=']";
		String plus = "//android.widget.Button[@text = '+']";

		DesiredCapabilities capabilities = new DesiredCapabilities();

		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.sec.android.app.popupcalculator");
		capabilities.setCapability("appActivity", "com.sec.android.app.popupcalculator.Calculator");
		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

		WebElement four_e = explicitWait(By.xpath(four), androiddriver);
		four_e.click();
		WebElement plus_e = explicitWait(By.xpath(plus), androiddriver);
		plus_e.click();
		WebElement five_e = explicitWait(By.xpath(five), androiddriver);
		five_e.click();
		WebElement equals_e = explicitWait(By.xpath(equals), androiddriver);
		equals_e.click();

	}

	@Given("^Using Android device and serialno \"(.*?)\" Launch Calendar app and create new event$")
	public void launch_calendar_and_create_event(String deviceSerialNoToUse) {

		String click_new_event = "com.samsung.android.calendar:id/floating_action_button";

		String title = "//android.widget.EditText[@text='Title']";

		String click_save = "com.samsung.android.calendar:id/action_done";

		DesiredCapabilities capabilities = new DesiredCapabilities();

		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.samsung.android.calendar");
		capabilities.setCapability("appActivity", "com.android.calendar.AllInOneActivity");
		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

		WebElement new_event = explicitWait(By.id(click_new_event), androiddriver);
		new_event.click();
		WebElement title_click = explicitWait(By.xpath(title), androiddriver);
		title_click.sendKeys("Automation event");
		WebElement click_save_e = explicitWait(By.id(click_save), androiddriver);
		click_save_e.click();

	}

	@Given("^Using Android device and serialno \"(.*?)\" switch off WiFi$")
	public void switchoffWifi(String deviceSerialNoToUse) {

		String connection_xpath = "//android.widget.TextView[@text='Connections']";
		String wifi_xpath = "//android.widget.TextView[@text='Wi-Fi']";
		String wifi_switch_id = "com.android.settings:id/switch_widget";
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.android.settings");
		capabilities.setCapability("appActivity", "com.android.settings.Settings");
		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

		// Click Connections
		// String connection_xpath =
		// "//android.widget.TextView[@text='Connections']";
		WebElement wifi_connection = explicitWait(By.xpath(connection_xpath), androiddriver);
		wifi_connection.click();

		// To select enable bluetooth point name
		WebElement wifi_menu = explicitWait(By.xpath(wifi_xpath), androiddriver);
		wifi_menu.click();

		WebElement wifi_switch = explicitWait(By.id(wifi_switch_id), androiddriver);

		if (wifi_switch.getText().contains("ON")) {

			wifi_switch.click();
		}

	}

	@Given("^Using Android device and serialno \"(.*?)\" switch off airplane mode$")
	public void switchoffairplanemode(String deviceSerialNoToUse) {

		String connection_xpath = "//android.widget.TextView[@text='Connections']";
		String aeroplane_xpath = "//android.widget.TextView[@text='Flight mode']";
		String aer_id = "com.android.settings:id/switch_widget";
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.android.settings");
		capabilities.setCapability("appActivity", "com.android.settings.Settings");
		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

		// Click Connections
		// String connection_xpath =
		// "//android.widget.TextView[@text='Connections']";
		WebElement a_connection = explicitWait(By.xpath(connection_xpath), androiddriver);
		a_connection.click();

		// To select enable blue tooth point name
		WebElement a_menu = explicitWait(By.xpath(aeroplane_xpath), androiddriver);
		a_menu.click();

		WebElement aero_switch = explicitWait(By.id(aer_id), androiddriver);

		if (aero_switch.getText().contains("ON")) {

			aero_switch.click();
		}

	}

	@Given("^Using Android device and serialno \"(.*?)\" switch on airplane mode$")
	public void switchonairplanemode(String deviceSerialNoToUse) {

		String connection_xpath = "//android.widget.TextView[@text='Connections']";
		String aeroplane_xpath = "//android.widget.TextView[@text='Flight mode']";
		String aer_id = "com.android.settings:id/switch_widget";
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.android.settings");
		capabilities.setCapability("appActivity", "com.android.settings.Settings");
		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

		// Click Connections
		// String connection_xpath =
		// "//android.widget.TextView[@text='Connections']";
		WebElement a_connection = explicitWait(By.xpath(connection_xpath), androiddriver);
		a_connection.click();

		// To select enable blue tooth point name
		WebElement a_menu = explicitWait(By.xpath(aeroplane_xpath), androiddriver);
		a_menu.click();

		WebElement aero_switch = explicitWait(By.id(aer_id), androiddriver);

		if (aero_switch.getText().contains("OFF")) {

			aero_switch.click();
		}

	}

	@Given("^Using Android device and serialno \"(.*?)\" switch on WiFi$")
	public void switchonWifi(String deviceSerialNoToUse) {

		String connection_xpath = "//android.widget.TextView[@text='Connections']";

		String wifi_xpath = "//android.widget.TextView[@text='Wi-Fi']";
		String wifi_switch_id = "com.android.settings:id/switch_widget";
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.android.settings");
		capabilities.setCapability("appActivity", "com.android.settings.Settings");
		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

		// Click Connections
		WebElement wifi_connection = explicitWait(By.xpath(connection_xpath), androiddriver);
		wifi_connection.click();

		// To select enable bluetooth point name
		WebElement wifi_menu = explicitWait(By.xpath(wifi_xpath), androiddriver);
		wifi_menu.click();

		WebElement wifi_switch = explicitWait(By.id(wifi_switch_id), androiddriver);

		if (wifi_switch.getText().contains("ON")) {

			wifi_switch.click();

			try {
				Thread.sleep(2000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			wifi_switch.click();

		}

		if (wifi_switch.getText().contains("OFF")) {

			wifi_switch.click();
		}

		try {
			Thread.sleep(10000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Given("^Using Android device and serialno \"(.*?)\" switch on Bluetooth$")
	public void bluetooth_pair(String deviceSerialNoToUse) {

		String connection_xpath = "//android.widget.TextView[@text='Connections']";

		String bluetooth_xpath = "//android.widget.TextView[@text='Bluetooth']";
		String bluetooth_switch_id = "com.android.settings:id/switch_widget";
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.android.settings");
		capabilities.setCapability("appActivity", "com.android.settings.Settings");
		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

		// To select enable bluetooth point name
		WebElement conn_menu = explicitWait(By.xpath(connection_xpath), androiddriver);
		conn_menu.click();

		// To select enable bluetooth point name
		WebElement bluetooth_menu = explicitWait(By.xpath(bluetooth_xpath), androiddriver);
		bluetooth_menu.click();

		WebElement bluetooth_switch = explicitWait(By.id(bluetooth_switch_id), androiddriver);

		if (bluetooth_switch.getText().contains("ON")) {

			bluetooth_switch.click();

			try {
				Thread.sleep(2000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			bluetooth_switch.click();

		}

		if (bluetooth_switch.getText().contains("OFF")) {

			bluetooth_switch.click();
		}

		try {
			Thread.sleep(10000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Given("^Using Android device and serialno \"(.*?)\" add new apn using following values \"(.*?)\",\"(.*?)\",\"(.*?)\",\"(.*?)\",\"(.*?)\",\"(.*?)\",\"(.*?)\",\"(.*?)\" and \"(.*?)\"$")
	public void add_apn(String deviceSerialNoToUse, String name, String apn, String username, String password,
			String mmsc, String mmsc_proxy, String mms_port, String proxy, String port) {
		String connection_xpath = "//android.widget.TextView[@text='Connections']";
		String access_point_xpath = "//android.widget.TextView[@text='Access Point Names']";
		String add_button_xpath = "//android.widget.Button[@text = 'ADD']";
		String apn_name_xpath = "//android.widget.TextView[@text='Name']";
		String edit_text_xpath = "//android.widget.EditText";
		String ok_button_xpath = "//android.widget.Button[@text='OK']";
		String select_apn_xpath = "//android.widget.TextView[@text='APN']";
		String apn_xpath = "//android.widget.TextView[@text='APN']";
		String user_name_xpath = "//android.widget.TextView[@text='Username']";
		String pswd_xpath = "//android.widget.TextView[@text='Password']";
		String click_options_xpath = "//android.widget.Button[@content-desc='More options']";
		String save_xpath = "//android.widget.TextView[@text='Save']";
		String mmsc_xpath = "//android.widget.TextView[@text='MMSC']";
		String mms_proxy_xpath = "//android.widget.TextView[@text='MMS proxy']";
		String mms_port_xpath = "//android.widget.TextView[@text='MMS port']";
		// String mms_port_xpath = "//android.widget.TextView[@text='MMS
		// port']";
		String proxy_xpath = "//android.widget.TextView[@text='Proxy']";
		String port_xpath = "//android.widget.TextView[@text='Port']";
		String title = "android:id/title";
		DesiredCapabilities capabilities = new DesiredCapabilities();

		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.samsung.networkui");
		//capabilities.setCapability("appActivity", "com.android.phone.MobileNetworkSettings");
		capabilities.setCapability("appActivity", "com.samsung.networkui.MobileNetworkSettings");
		
		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

		// To select Access point name
		WebElement apn_access_point = explicitWait(By.xpath(access_point_xpath), androiddriver);
		apn_access_point.click();

		// To add new APN
		WebElement WE_Add_Button = explicitWait(By.xpath(add_button_xpath), androiddriver);
		WE_Add_Button.click();

		// To select the name field of apn
		WebElement WE_Apn_Name = explicitWait(By.xpath(apn_name_xpath), androiddriver);
		WE_Apn_Name.click();

		// To sending the name
		explicitWait(By.xpath(edit_text_xpath), androiddriver).sendKeys(name);

		// To Click ok button for APN Name
		WebElement WE_Ok_Button = explicitWait(By.xpath(ok_button_xpath), androiddriver);
		WE_Ok_Button.click();

		// To select On APN field
		WebElement WE_Select_APN = explicitWait(By.xpath(select_apn_xpath), androiddriver);
		WE_Select_APN.click();

		// To Enter the APN
		WebElement WE_Click = explicitWait(By.xpath(apn_xpath), androiddriver);
		WE_Click.click();

		// Sending the apn read from excel
		explicitWait(By.xpath(edit_text_xpath), androiddriver).sendKeys(apn);

		// clicking ok button
		WE_Ok_Button.click();

		// To select the proxy field
		WebElement WE_proxy_xpath = explicitWait(By.xpath(proxy_xpath), androiddriver);
		WE_proxy_xpath.click();

		// To give the password read from excel

		explicitWait(By.xpath(edit_text_xpath), androiddriver).sendKeys(proxy);

		// click ok button
		WE_Ok_Button.click();

		// To select the proxy port field
		WebElement WE_proxy_port_xpath = explicitWait(By.xpath(port_xpath), androiddriver);
		WE_proxy_port_xpath.click();

		// To give the password read from excel

		explicitWait(By.xpath(edit_text_xpath), androiddriver).sendKeys(port);

		// click ok button
		WE_Ok_Button.click();

		// To select the user Name field
		WebElement WE_User_Name = explicitWait(By.xpath(user_name_xpath), androiddriver);
		WE_User_Name.click();

		// To give the user name read from excel
		// String edit_text_xpath="//android.widget.EditText";
		explicitWait(By.xpath(edit_text_xpath), androiddriver).sendKeys(username);

		// To click ok button after giving user Name
		WE_Ok_Button.click();

		// To select the password field
		WebElement WE_Pswd = explicitWait(By.xpath(pswd_xpath), androiddriver);
		WE_Pswd.click();

		// To give the password read from excel

		explicitWait(By.xpath(edit_text_xpath), androiddriver).sendKeys(password);

		// click ok button
		WE_Ok_Button.click();

		// To select the mmsc field
		WebElement WE_mmsc_xpath = explicitWait(By.xpath(mmsc_xpath), androiddriver);
		WE_mmsc_xpath.click();

		// To give the password read from excel

		explicitWait(By.xpath(edit_text_xpath), androiddriver).sendKeys(mmsc);

		// click ok button
		WE_Ok_Button.click();


		/// Swipe to bottom code
		Dimension size = androiddriver.manage().window().getSize();
		int starty = (int) (size.height * 0.80);
		int endy = (int) (size.height * 0.20);
		int startx = size.width / 2;
		System.out.println(" starty = " + starty + " ,endy = " + endy + " , startx = " + startx);
		androiddriver.swipe(startx, starty, startx, endy, 3000);
		/// Swipe to bottom code
		
		// To select the mmsc proxy field
		WebElement WE_mms_proxy_xpath_xpath = explicitWait(By.xpath(mms_proxy_xpath), androiddriver);
		WE_mms_proxy_xpath_xpath.click();

		// To give the password read from excel
		

		explicitWait(By.xpath(edit_text_xpath), androiddriver).sendKeys(mmsc_proxy);

		// click ok button
		WE_Ok_Button.click();

	

	

		// To select the mmsc port field
		try {
			WebElement WE_mms_proxy_port_xpath = explicitWait(By.xpath(mms_port_xpath), androiddriver);
			WE_mms_proxy_port_xpath.click();
		} catch (TimeoutException e) {

			/// Swipe to bottom code
			size = androiddriver.manage().window().getSize();
			starty = (int) (size.height * 0.80);
			endy = (int) (size.height * 0.20);
			startx = size.width / 2;
			System.out.println(" starty = " + starty + " ,endy = " + endy + " , startx = " + startx);

			androiddriver.swipe(startx, starty, startx, endy, 3000);
			/// Swipe to bottom code
			WebElement WE_mms_proxy_port_xpath = explicitWait(By.xpath(mms_port_xpath), androiddriver);
			WE_mms_proxy_port_xpath.click();

		}

		// To give the password read from excel

		explicitWait(By.xpath(edit_text_xpath), androiddriver).sendKeys(mms_port);

		// click ok button
		WE_Ok_Button.click();

		// To click options

		WebElement WE_Options = explicitWait(By.xpath(click_options_xpath), androiddriver);
		WE_Options.click();

		// clicking options to save
		WebElement WE_Save = explicitWait(By.xpath(save_xpath), androiddriver);
		WE_Save.click();

		// System.out.println("Getting Connection Details:" +
		// driver.getConnection());
	}

	@Given("^Using Android device and serialno \"(.*?)\" delete all apns$")
	public void apn_clear_down(String deviceSerialNoToUse) {

		String moreoptions_xpath = "//android.widget.Button[@content-desc='More options']";
		String access_point_xpath = "//android.widget.TextView[@text='Access Point Names']";
		String reset = "//android.widget.Button[@text='RESET']";
		String reset_xpath = "//android.widget.TextView[@text='Reset to default']";

		DesiredCapabilities capabilities = new DesiredCapabilities();

		capabilities.setCapability("platformName", "Android");
		capabilities.setCapability("deviceName", deviceSerialNoToUse);
		capabilities.setCapability("udid", deviceSerialNoToUse);
		capabilities.setCapability("appPackage", "com.samsung.networkui");
		//capabilities.setCapability("appActivity", "com.android.phone.MobileNetworkSettings");
		capabilities.setCapability("appActivity", "com.samsung.networkui.MobileNetworkSettings");
		
		
		try {
			androiddriver = new AndroidDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		androiddriver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

		// To select Access point name
		WebElement apn_access_point = explicitWait(By.xpath(access_point_xpath), androiddriver);
		apn_access_point.click();

		WebElement WE_more_options = explicitWait(By.xpath(moreoptions_xpath), androiddriver);
		WE_more_options.click();

		// Click on Reset to default
		explicitWait(By.xpath(reset_xpath), androiddriver).click();
		explicitWait(By.xpath(reset), androiddriver).click();

		// Confirm Reset
		// explicitWait(
		// By.xpath(
		// "//android.widget.FrameLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[2]/android.widget.Button[2]"),
		// androiddriver).click();

	}

	@After("@mobile")
	public void test_clear_down(Scenario scenario) {

		//byte[] screenshotBytes = ((TakesScreenshot) androiddriver).getScreenshotAs(OutputType.BYTES);
		//scenario.embed(screenshotBytes, "image/png");
		    // Dismiss any Alerts before screenshot
		  
	
			Process p = null;
			//String screencap = null;
			String copyfile = null;
			String removefile = null;
			
	        String remove_filefrom_system = null;
	   
	        long timestamp = System.currentTimeMillis() / 1000L;

	        String filename =null;
	        // filename = "/Users/purush/cukes/cucumber-project/output/screendumpfile-"+timestamp;
	        filename = "./output/screendumpfile-"+timestamp;
	        System.out.println(" ##### Image file name ##### "+ filename);

			//screencap = "/Users/purush/Library/Android/sdk/platform-tools/adb -s " +  deviceno + " shell screencap -p /sdcard/screen.png ";
	        //System.out.println(" ##### screen cap comand  ##### "+ screencap);

			copyfile = "/Users/purush/Library/Android/sdk/platform-tools/adb -s " + deviceno +  " pull /sdcard/screen.png "+filename;
	        System.out.println(" ##### screen copy comand  ##### "+ copyfile);

			removefile = "/Users/purush/Library/Android/sdk/platform-tools/adb -s " + deviceno + "shell rm /sdcard/screen.png";
	        System.out.println(" ##### remove comand  ##### "+ removefile);
	        
	        remove_filefrom_system = "/bin/rm -f "+ filename;
	        System.out.println(" ##### remove file from system  ##### "+ remove_filefrom_system);


	
	try
	{
			
	
			p = Runtime.getRuntime().exec(copyfile);
			p.waitFor();
			p.destroy();

			p = Runtime.getRuntime().exec(removefile);
			p.waitFor();
			p.destroy();

		//	p = Runtime.getRuntime().exec(remove_filefrom_system);
		//	p.waitFor();
		//	p.destroy();

			
	      BufferedImage bImage = ImageIO.read(new File(filename));
	      ByteArrayOutputStream bos = new ByteArrayOutputStream();
	      ImageIO.write(bImage, "png", bos );
	      byte [] data = bos.toByteArray();
	      scenario.embed(data, "image/png");
	      
	      //p = Runtime.getRuntime().exec(remove_filefrom_system);
		 // p.waitFor();
		 // p.destroy();

	
	}
	catch ( Exception e)
	{
		if (p != null)
        {
            p.destroy();
            p = null;
        }
	}	 
		 
		// androiddriver.close();
		// androiddriver.closeApp();
		// System.out.println("IAM HERE #########################" );
		 try {
			Thread.sleep(30);
			Appiumservice.stop();

		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		

	}
	
	

	@After("@nonmobile")
	public void test_clear_down_non_mobile(Scenario scenario) {
	System.out.println(" URL #### : " + driver.getCurrentUrl());
		 TakesScreenshot screen = (TakesScreenshot) driver;
		 byte[] screenshotBytes= screen.getScreenshotAs(OutputType.BYTES);
 		scenario.embed(screenshotBytes, "image/png");
		 driver.quit();
		 

	}


	@SuppressWarnings("unchecked")
	public void scrollToExactElement(String str, @SuppressWarnings("rawtypes") AndroidDriver driver) {
		((AndroidDriver<MobileElement>) driver).findElementByAndroidUIAutomator(
				"new UiScrollable(new UiSelector().scrollable(true).instance(0)).scrollIntoView(new UiSelector().text(\""
						+ str + "\").instance(0))");

	}

	public WebElement explicitWait(By Byxpath, AndroidDriver driver) {
		return (new WebDriverWait(driver, pageLoadTimeOut)).until(ExpectedConditions.elementToBeClickable(Byxpath));

	}// wait

	public WebElement explicitWait_5sec(By Byxpath, AndroidDriver driver) {
		return (new WebDriverWait(driver, 5)).until(ExpectedConditions.elementToBeClickable(Byxpath));

	}//

}
