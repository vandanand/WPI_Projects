import java.util.LinkedList;
import java.util.Arrays;
import static org.junit.Assert.*;
import org.junit.Test;

public class Examples {
  // customize here, or create multiple monitors with different parameter lists
  SecurityMonitor SM = 
    new SecurityMonitor(new LinkedList<IPattern>(Arrays.asList(new SuspiciousWebPattern(), new LargeFilePattern(), 
                                                               new FailedLoginPattern())));
  //examples for equals and compareTo method
  Alert Alert1 = new Alert("Vandana", 5, 5);
  Alert Alert2 = new Alert("Vandana", 5, 5);
  Alert Alert3 = new Alert("Ilana", 7, 3);
  
  //example for topAlert and handle alert
  Alert Alert4 = new Alert("kathi", 1, 5);
  
  //LargeFilePattern FLP = new LargeFilePattern ();
  // use this fixed set of usernames -- it is what we have in all the logs
  LinkedList<String> usernames = new LinkedList<String>(Arrays.asList("root","kathi", "simmon", "jordan"));
  
  public Examples() {
    //SM.clearQueue();
  }
  
  // check whether webrequest yields a single alert (as it should)
  @Test
  public void checkWebRequestAlerts() {
    SM.clearQueue();
    SM.runLogFile("webrequestlog.txt", usernames);
    assertEquals(1, SM.numAlerts());
  }
  
  // check whether saveLog yields a single alert (as it should)
  @Test
  public void checkSaveLogAlerts() {
    SM.clearQueue();
    SM.runLogFile("saveLog.txt", usernames);
    assertEquals(1, SM.numAlerts());
  }
  
  // check whether saveLog2 yields two alerts (as it should)
  @Test
  public void checkSaveLog2Alerts() {
    SM.clearQueue();
    SM.runLogFile("saveLog2.txt", usernames);
    assertEquals(2, SM.numAlerts());
  }
  
  // check whether loginLog yields a single alert (as it should)
  @Test
  public void checkLoginLogAlerts() {
    SM.clearQueue();
    SM.runLogFile("loginLog.txt", usernames);
    assertEquals(1, SM.numAlerts());
  }
  
  // check whether loginLog2 does not yield an alert (as it should)
  @Test
  public void checkLoginLog2Alerts() {
    SM.clearQueue();
    SM.runLogFile("loginLog2.txt", usernames);
    assertEquals(0, SM.numAlerts());
  }
  
  // check whether largeLog1 yields 3 alerts (as it should)
  @Test
  public void checkLargeLog1Alerts() {
    SM.clearQueue();
    SM.runLogFile("largeLog1.txt", usernames);
    assertEquals(3, SM.numAlerts());
  }
  
  // check whether eventLog yields 4 alerts (as it should)
  @Test
  public void checkEventLogAlerts() {
    SM.clearQueue();
    SM.runLogFile("eventlog1.txt", usernames);
    assertEquals(4, SM.numAlerts());
  }
  
 // check whether eventLog2 yields 4 alerts (as it should) 
  @Test
  public void checkEventLog2Alerts() {
    SM.clearQueue();
    SM.runLogFile("eventlog2.txt", usernames);
    assertEquals(4, SM.numAlerts());
  }
  
  // check whether largestLog yields 3 alerts (as it should)
  @Test
  public void checkLargestLogAlerts() {
    SM.clearQueue();
    SM.runLogFile("largestLog.txt", usernames);
    assertEquals(3, SM.numAlerts());
  }
  
  //check the equals method 
  @Test
  public void checkEquals1() {
    assertTrue(Alert1.equals(Alert2)); //compare the same object to get true
    assertFalse(Alert1.equals(Alert3)); //compare different objects to get false
  }
  
  //check the compareTo method
  @Test
  public void checkCompareTo() {
    assertEquals(Alert1.compareTo(Alert2), 0, .001); //check each possible outcome of 0, 1, -1
    assertEquals(Alert3.compareTo(Alert2), 1, .001);
    assertEquals(Alert2.compareTo(Alert3), -1, .001);
  }
  
  //check the topAlert method
  @Test
  public void checkTopAlert() {
    SM.runLogFile("webrequestlog.txt", usernames);
    assertTrue(SM.topAlert().equals(Alert4));
  }
  
  //check the handleAlert method
  @Test
  public void checkHandleAlert() {
    SM.runLogFile("webrequestlog.txt", usernames);
    assertTrue(SM.handleAlert().equals(Alert4));
    assertEquals(0, SM.numAlerts());
    assertEquals(null, SM.topAlert());
  }
}

