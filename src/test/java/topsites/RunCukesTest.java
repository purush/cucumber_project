package topsites;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import org.junit.BeforeClass;
import org.junit.runner.RunWith;
//import com.vimalselvam.cucumber.listener.ExtentCucumberFormatter;
import com.cucumber.listener.ExtentCucumberFormatter;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources/topsites/", strict = true, plugin = { "pretty", "html:target/HTML/",
		"json:target/JSON/", "com.cucumber.listener.ExtentCucumberFormatter:output/report.html", "rerun:target/rerun.txt" })
public class RunCukesTest {

	@BeforeClass
	public static void setup() {
		// Initiates the extent report and generates the output in the
		// output/Run_<unique timestamp>/report.html file by default.
	   // ExtentProperties extentProperties = ExtentProperties.INSTANCE;
	    //extentProperties.setReportPath("output/myreport.html");

		ExtentCucumberFormatter.initiateExtentCucumberFormatter();

		// Loads the extent config xml to customize on the report.
		ExtentCucumberFormatter.loadConfig(new File("src/test/resources/extent-config.xml"));

		// User can add the system information as follows
		ExtentCucumberFormatter.addSystemInfo("Browser Name", "Firefox");
		ExtentCucumberFormatter.addSystemInfo("Browser version", "v31.0");
		ExtentCucumberFormatter.addSystemInfo("Selenium version", "v2.53.0");

		// Also you can add system information using a hash map
		Map systemInfo = new HashMap();
	//	SystemInfo.put("Cucumber version", "v1.2.3");
		systemInfo.put("Extent Cucumber Reporter version", "v1.1.1");
		ExtentCucumberFormatter.addSystemInfo(systemInfo);
	}
	
}
