/*
 * If you are looking at this file before Thurs/Fri, the try/catch
 * statements won't make sense (unless you already know exceptions).
 * By Friday, we will cover those.  In the meantime, you can write
 * tests by creating your search engine classes in the Examples
 * constructor, as indicated by the comments.
 */

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.io.FileNotFoundException;
import java.util.LinkedList;

import org.junit.Test;

public class Examples {
  // declare variables for all of your search engines here
  SearchEngine s; 
  
  // local method to add a page to a search engine.  Created a
  //   helper so that we can isolate the exception handling here,
  //   rather than clutter up each test case with the exceptions
  private void addPage(SearchEngine s, String p) {
    try {
      s.visitPage(p);
    } catch (FileNotFoundException e) {
      fail("Aborting Example setup -- file not found: " + e);
    } catch (UnsupportedFileExn e) {
      fail("Aborting Examples setup -- unsupported file extension: " + e);
    }
  }
  
  public Examples(){
    try {
      // set up all of your search engines with pages here
      // rather than in the individual tests (or you will have
      // to copy the exceptions code into the test classes)
      s = new SearchEngine(new LinkedList<String>());
      ///Users/vandanaanand/Desktop/WorkSpace/HW5/src/PageFiles
      addPage(s, "./src/PageFiles/goats.md");
      addPage(s, "./src/PageFiles/aboutWPI.md");
    } catch (FileNotFoundException e) {
      System.out.println("Aborting Example setup -- file not found: " + e);
    } catch (UnsupportedFileExn e) {
      System.out.println("Aborting Examples setup -- unsupported file extension: " + e);
    }
  }
  
  //tests goat query
  @Test
  public void testGoatsQuery() {
    assertEquals(s.runQuery("goat").size(), 2);
  }
  
  //tests WPI query
  @Test
  public void testWPIQuery() {
    assertEquals(s.runQuery("WPI").size(), 1);
    addPage(s, "./src/PageFiles/worcester.md");
    assertEquals(s.runQuery("WPI").size(), 2);
  }
  
  //tests another WPI query of water
  @Test
  public void testAnotherWPIQuery() {
	  assertEquals(s.runQuery("water").size(), 0);
	  addPage(s,"./src/PageFiles/aboutWPI.md");
	  assertEquals(s.runQuery("water").size(), 0);
  }
  
  //tests Hello (new file that was made) query of the people
  @Test
  public void testHelloQuery() {
	  assertEquals(s.runQuery("the People").size(), 0);
	  addPage(s,"./src/PageFiles/hello.md");
	  assertEquals(s.runQuery("the People").size(), 1);
  }
  
  //tests visitPage
  @Test
  public void testVisitPage() throws FileNotFoundException, UnsupportedFileExn {
	  assertEquals(s.runQuery("WPI").size(), 1);
	  addPage(s, "./src/PageFiles/worcester.md");
	  assertTrue(s.runQuery("WPI").contains(s.visitPage("./src/PageFiles/aboutWPI.md")));
	  assertEquals(s.runQuery("WPI").size(), 2);
	  assertTrue(s.runQuery("worcester").contains(s.visitPage("./src/PageFiles/aboutWPI.md")));
  }
  
  //tests visitPage
  @Test
  public void testVisitPage2() {
	  s.runQuery("WPI");
	  s.runQuery("goat");
	  s.runQuery("about wpi");
	  s.runQuery("tv");
	  assertEquals(s.runQuery("WPI").size(), 1);
	  assertEquals(s.runQuery("goat").size(), 2);
	  assertEquals(s.runQuery("about wpi").size(), 1);
	  assertEquals(s.runQuery("tv").size(), 0);
	  assertEquals(s.knownPageCount(), 2);
	  
	  try {
		  s.visitPage("./src/PageFiles/worcester.md");
	  } catch (UnsupportedFileExn unsupportedFileExn) {
		  unsupportedFileExn.printStackTrace();
	  } catch (FileNotFoundException e) {
		  e.printStackTrace();
	  }
	  
	  try {
		  s.visitPage("./src/PageFiles/goats.md");
	  } catch (UnsupportedFileExn unsupportedFileExn) {
		  unsupportedFileExn.printStackTrace();
	  } catch (FileNotFoundException e) {
		  e.printStackTrace();
	  }
	  
	  try {
		  s.visitPage("./src/PageFiles/aboutWPI.md");
	  } catch (UnsupportedFileExn unsupportedFileExn) {
		  unsupportedFileExn.printStackTrace();
	  } catch (FileNotFoundException e) {
		  e.printStackTrace();
	  }
	  
	  try {
		  s.visitPage("./src/PageFiles/hello.md");
	  } catch (UnsupportedFileExn unsupportedFileExn) {
		  unsupportedFileExn.printStackTrace();
	  } catch (FileNotFoundException e) {
		  e.printStackTrace();
	  }
	  
	  assertEquals(s.knownPageCount(), 4);
	  assertEquals(s.runQuery("WPI").size(), 2);
	  assertEquals(s.runQuery("goat").size(), 2);
	  assertEquals(s.runQuery("about wpi").size(), 2);
	  assertEquals(s.runQuery("tv").size(), 0);
  }
  
  //tests already saw query
  @Test
  public void testAlreadySawQuery() {
	  assertEquals(s.alreadySawQuery("goat"), false);
  }
  
  @Test
  public void testAlreadySawQuery2() {
	  assertEquals(s.alreadySawQuery("bubbles"), false);
  }
 
  
}
