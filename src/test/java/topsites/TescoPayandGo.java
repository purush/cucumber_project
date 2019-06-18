package topsites;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import io.appium.java_client.android.AndroidDriver;

public class TescoPayandGo {

	private static String chrome_path = "/Users/purush/cukes/chromedriver";
	WebDriver driver;
	String url = "http://www.tescomobile.com/";

	@Before("@web")
	public void test_start_up() {
		System.setProperty("webdriver.chrome.driver", chrome_path);
		driver = new ChromeDriver();
		driver.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);
		// driver.get(url);
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Given("^set field \"(.*?)\" with value \"(.*?)\"$")
	public void set_field(String username, String value) throws Throwable {

		driver.findElement(By.name(username)).sendKeys(value);

	}

	@Given("^click button \"(.*?)\"$")
	public void click_button(String name) throws Throwable {

		driver.findElement(By.id(name)).click();

	}

	@Given("^Go to Tesco mobile homepage$")
	public void go_to_Tesco_mobile_homepage() throws Throwable {
		driver.navigate().to(url);

	}

	@Given("^navigate to href \"(.*?)\"$")
	public void click_Link_with_href_like(String href) throws Throwable {
	//	System.out.println(" @@@@@@@@@@@@@@@@@ Begin @@@@@@@@@@@@@@@@@");
	//	System.out.println(" @@@@@@@@@@@@@@@@@ Begin @@@@@@@@@@@@@@@@@");
	//	System.out.println(" @@@@@@@@@@@@@@@@@ Begin @@@@@@@@@@@@@@@@@");

		List<WebElement> anchors = driver.findElements(By.tagName("a"));

		Iterator<WebElement> i = anchors.iterator();

		while (i.hasNext()) {
			WebElement anchor = i.next();

		//	System.out.println(" @@@@@@@@@@@@@@@@@ " + anchor.getAttribute("href").toString());

			if (anchor.getAttribute("href").contains(href)) {
				driver.navigate().to(anchor.getAttribute("href").toString());
				break;
			}
		}

	}

	@Given("^navigate to url \"(.*?)\"$")
	public void navigate_to_url(String url) throws Throwable {

		driver.navigate().to(url);

	}

	@After("@web")
	public void driver_quit(Scenario scenario) {
		byte[] screenshotBytes = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
		scenario.embed(screenshotBytes, "image/png");
		driver.quit();

	}

}
