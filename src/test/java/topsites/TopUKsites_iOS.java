package topsites;

import java.io.File;

import cucumber.api.java.Before;
import io.appium.java_client.service.local.AppiumDriverLocalService;
import io.appium.java_client.service.local.AppiumServiceBuilder;
import io.appium.java_client.service.local.flags.GeneralServerFlag;
import static org.junit.Assert.assertTrue;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.FileUtils;
import org.jboss.netty.handler.codec.base64.Base64Decoder;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.remote.Augmenter;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import biz.source_code.base64Coder.Base64Coder;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import cucumber.deps.com.thoughtworks.xstream.core.util.Base64Encoder;
import io.appium.java_client.MobileElement;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidKeyCode;
import io.appium.java_client.ios.IOSDriver;
import io.appium.java_client.remote.AutomationName;
import io.appium.java_client.remote.MobileBrowserType;
import io.appium.java_client.remote.MobileCapabilityType;
import io.appium.java_client.service.local.AppiumDriverLocalService;
import io.appium.java_client.service.local.AppiumServiceBuilder;
import io.appium.java_client.service.local.flags.GeneralServerFlag;

public class TopUKsites_iOS {

	AppiumDriverLocalService Appiumservice;
	private static String Appium_Path = "/usr/local/lib/node_modules/appium/build/lib/main.js";
	private static String Node_Path = "/usr/local/bin/node";
	@SuppressWarnings("rawtypes")
	WebDriver driver;
	int pageLoadTimeOut = 60;
	WebDriverWait wait;

	@Before("@ios")
	public void test_start_up() {

		Appiumservice = AppiumDriverLocalService.buildService(new AppiumServiceBuilder()
				.usingDriverExecutable(new File(Node_Path)).withArgument(GeneralServerFlag.SESSION_OVERRIDE)
				.withAppiumJS(new File(Appium_Path)).withIPAddress("127.0.0.1").usingPort(4723));

		Appiumservice.start();
		System.out.println("@@@ Appium URL " + Appiumservice.getUrl());

	}

	@SuppressWarnings("rawtypes")
	@Given("^I have a ipad with udid \"(.*?)\" open settings$")
	public void i_have_a_ipad_with_udid_open_settings(String deviceSerialNoToUse) throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		DesiredCapabilities capabilities = new DesiredCapabilities();

		capabilities.setCapability(MobileCapabilityType.PLATFORM_NAME, "iOS");
		capabilities.setCapability(MobileCapabilityType.DEVICE_NAME, deviceSerialNoToUse);
		capabilities.setCapability(MobileCapabilityType.UDID, deviceSerialNoToUse);
		capabilities.setCapability(MobileCapabilityType.BROWSER_NAME, "Settings");
		capabilities.setCapability("bundleId", "com.apple.Preferences");
		capabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, AutomationName.IOS_XCUI_TEST);

		try {

			driver = new IOSDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			System.out.println(" Error Exception = " + e.getMessage());
		}

		driver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

	}

	@SuppressWarnings("rawtypes")
	@Given("^I have a ipad with udid \"(.*?)\" open integration app$")
	public void i_have_a_ipad_with_udid_open_settings_intergation(String deviceSerialNoToUse) throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		DesiredCapabilities capabilities = new DesiredCapabilities();

		capabilities.setCapability(MobileCapabilityType.PLATFORM_NAME, "iOS");
		capabilities.setCapability(MobileCapabilityType.DEVICE_NAME, deviceSerialNoToUse);
		capabilities.setCapability(MobileCapabilityType.UDID, deviceSerialNoToUse);
		capabilities.setCapability(MobileCapabilityType.APP,
				"/Users/purush/cukes/iOS/IntegrationApp/IntegrationApp.ipa");
		capabilities.setCapability("bundleId", "com.facebook.IntegrationApp");
		capabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, AutomationName.IOS_XCUI_TEST);

		try {

			driver = new IOSDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			System.out.println(" Error Exception = " + e.getMessage());
		}

		driver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);

		Thread.sleep(60000);

	}

	@SuppressWarnings("rawtypes")
	@Given("^I have a ipad with udid \"(.*?)\"$")
	public void i_have_a_ipad_with_udid(String deviceSerialNoToUse) throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		DesiredCapabilities capabilities = new DesiredCapabilities();

		capabilities.setCapability(MobileCapabilityType.PLATFORM_NAME, "iOS");
		capabilities.setCapability(MobileCapabilityType.DEVICE_NAME, deviceSerialNoToUse);
		capabilities.setCapability(MobileCapabilityType.UDID, deviceSerialNoToUse);
		capabilities.setCapability(MobileCapabilityType.TAKES_SCREENSHOT, "true");
		capabilities.setCapability(MobileCapabilityType.BROWSER_NAME, MobileBrowserType.SAFARI);
		capabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, AutomationName.IOS_XCUI_TEST);

		try {

			driver = new IOSDriver(new URL(Appiumservice.getUrl().toString()), capabilities);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			System.out.println(" Error Exception = " + e.getMessage());
		}

		driver.manage().timeouts().implicitlyWait(pageLoadTimeOut, TimeUnit.SECONDS);
	}

	@Then("^I should be able to go to all these website \"(.*?)\"$")
	public void i_should_be_able_to_go_to_all_these_website(String url) throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		driver.get(url);

	}

	@Then("^Once I open the URL should be able to click any \"(.*?)\" random links$")
	public void once_I_open_the_URL_should_be_able_to_click_any_random_links(String arg1) throws Throwable {
		// Write code here that turns the phrase above into concrete actions

	}

	@Given("^Click any (\\d+) random links from the site on ios$")
	public void click_any_links(int clickNtimes) {

		// find a random link on the page and click
		@SuppressWarnings("unchecked")
		List<WebElement> anchorTagsList = driver.findElements(By.tagName("a"));
		int linksCount = anchorTagsList.size();
		String[] links = new String[linksCount];
		int startcount = 1;
		for (int i = 0; i < linksCount; i++) {
			links[i] = anchorTagsList.get(i).getAttribute("href");
		}

		// navigate to each Link on the web page
		for (int i = 1; i < linksCount; i++) {
			String url = links[i];

			if (!url.contains("javascript") && url != "") {

				linksCount++;
				if (startcount <= clickNtimes) {
					driver.navigate().to(url);
					startcount++;
				} else {
					break;
				}

			}

		}

	}

	@Given("^switch on WiFi on iOS device$")
	public void switch_on_WiFi_on_iOS_device() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		driver.findElement(By.xpath("//UIATableCell/UIAStaticText[contains(@name, 'Wi-Fi')")).click();
	}

	@After("@ios")
	public void test_clear_down(Scenario scenario) {
		WebDriver aug_driver = new Augmenter().augment(driver);
		String scrFile = ((TakesScreenshot) aug_driver).getScreenshotAs(OutputType.BASE64);
		Base64Encoder decoder = new Base64Encoder();
		byte[] imgBytes = decoder.decode(scrFile);
		scenario.embed(imgBytes, "image/png");
		Appiumservice.stop();
	}

}
