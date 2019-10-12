/*
 * If you are looking at this file before Thurs/Fri, the try/catch
 * statements won't make sense (unless you already know exceptions).
 * By Friday, we will cover those.  In the meantime, you can write
 * tests by creating your search engine classes in the Examples
 * constructor, as indicated by the comments.
 */

import static org.junit.Assert.*;

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

      s.updateSponsor("wpi", 0.05);
//	  for(Webpage wp: s.runQuery("goat")){
//		  System.out.println(wp.url);
//	  }
    } catch (FileNotFoundException e) {
      System.out.println("Aborting Example setup -- file not found: " + e);
    } catch (UnsupportedFileExn e) {
      System.out.println("Aborting Examples setup -- unsupported file extension: " + e);
    } catch (LowerRateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (InvalidRateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
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
  
  //Tests for HW6
  
//Testing an update that is too high and should throw an exception
 @Test(expected = InvalidRateException.class)
 public void invalidRateTest() throws LowerRateException,
                                       InvalidRateException {
   s.updateSponsor("WPI", 2.0);
 }
 
 //Testing an update that is too low and should throw an exception
 @Test(expected = InvalidRateException.class)
 public void invalidRateTest2() throws LowerRateException,
                                       InvalidRateException {
   s.updateSponsor("WPI", -2.0);
 }
 
//Testing new rate is lower than old rate and should throw an exception
 @Test(expected = LowerRateException.class)
 public void lowerRateTest() throws LowerRateException,InvalidRateException {
   s.updateSponsor("Hello", 0.05);
   s.updateSponsor("Hello", 0.04);
 }
 
//test update sponsor with no exception expected
@Test
public void validRateTest() throws LowerRateException, InvalidRateException {
  s.updateSponsor("WPI", 0.05);
 }

//test update sponsor with no exception expected, with numbers increasing 
@Test
public void validRateTest2() throws LowerRateException, InvalidRateException {
s.updateSponsor("WPI", 0.05);
s.updateSponsor("WPI", 0.06);
}

//Checking is the sort order is going from decreasing order
@Test
public void runQueryTest1() throws LowerRateException, InvalidRateException {
  LinkedList<Webpage> results = s.runQuery("goat");
  assertEquals(results.get(0).url, "./src/PageFiles/aboutWPI.md");
  assertEquals(results.get(1).url, "./src/PageFiles/goats.md");
 }

//checking the correct sort order with more pagefiles
@Test
public void runQueryTest2() throws LowerRateException, InvalidRateException {
	addPage(s, "./src/PageFiles/goats.md");
    addPage(s, "./src/PageFiles/aboutWPI.md");
    addPage(s, "./src/PageFiles/hello.md");
    addPage(s, "./src/PageFiles/worcester.md");
    
    
  LinkedList<Webpage> results = s.runQuery("worcester");
  
  assertEquals(results.get(0).url, "./src/PageFiles/aboutWPI.md");
  assertEquals(results.get(1).url, "./src/PageFiles/worcester.md");
 }

//Checking the sort order from decreasing order with 4 pagefiles with a common query
@Test
public void runQueryTest3() throws LowerRateException, InvalidRateException {
	addPage(s, "./src/PageFiles/bye.md");
    addPage(s, "./src/PageFiles/world.md");
    addPage(s, "./src/PageFiles/globe.md");
    addPage(s, "./src/PageFiles/hello.md");
    
    
  LinkedList<Webpage> results = s.runQuery("languages");
  
  assertEquals(results.get(0).url, "./src/PageFiles/hello.md");
  assertEquals(results.get(1).url, "./src/PageFiles/globe.md");
  assertEquals(results.get(2).url, "./src/PageFiles/world.md");
  assertEquals(results.get(3).url, "./src/PageFiles/bye.md");
 }

//checks that the pages with no page links have zero as credits 
@Test
public void runQueryTest4() throws LowerRateException, InvalidRateException {
	addPage(s, "./src/PageFiles/globe.md");
    addPage(s, "./src/PageFiles/aboutWPI.md");
    addPage(s, "./src/PageFiles/hello.md");
    addPage(s, "./src/PageFiles/bye.md");
    
    s.updateSponsor("languages", 0.05);
    
    
    LinkedList<Webpage> queryResult = s.runQuery("languages");
    assertEquals(3, queryResult.size());
    

    assertEquals(0, s.runQuery("lanGuages").get(0).rank, 0.001);
    assertEquals(0, s.runQuery("lanGuages").get(1).rank, 0.001);
    assertEquals(0, s.runQuery("lanGuaGes").get(2).rank, 0.001);
   
  
 }

//checks that the page files with links distribute the right credits
@Test
public void runQueryTest5() throws LowerRateException, InvalidRateException {
    addPage(s, "./src/PageFiles/aboutWPI.md");
    addPage(s, "./src/PageFiles/worcester.md");
    
    s.updateSponsor("worcester", 0.05);
    
 
    
    LinkedList<Webpage> queryResult = s.runQuery("worcester");
    assertEquals(2, queryResult.size());
    
    
    assertEquals(1.05, s.runQuery("worcester").get(0).rank, 0.001);
    assertEquals(0.05, s.runQuery("worcester").get(1).rank, 0.001);
    
   
  
 }
 
}
