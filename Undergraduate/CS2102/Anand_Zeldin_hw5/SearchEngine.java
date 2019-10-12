//Vandana Anand and Ilana Zeldin
//vanand and izeldin

/* Starter file for homework 5 
 * 
 * The file is marked throughout with what you can, cannot, and should not need to edit.
 */

import java.util.LinkedList;
import java.util.Arrays;
import java.util.Scanner;
import java.util.HashMap;
import java.io.*;

class SearchEngine implements ISearchEngine {
  // leave these first two variables alone
  Scanner keyboard = new Scanner(System.in);
  SimpleMarkdownReader m = new SimpleMarkdownReader();
  
  // you are welcome to replace the pages variable with your own data structures.
  // the specific name "pages" will not be referenced in any of our tests/autograding
 // LinkedList<Webpage> pages;
  private HashMap<String, LinkedList<Webpage>> queries = new HashMap< String, LinkedList<Webpage>>(); 
  //hashmap ^
  private LinkedList<Webpage> pages = new LinkedList<Webpage>();
  //Cache theCache = new Cache();
  //HashMap<String, Webpage> knownPage = new HashMap<String, Webpage>();
  // constructor
  // you are welcome to change what the constructor does, as long as you leave the header intact
  SearchEngine(LinkedList<String> initPages) throws FileNotFoundException, UnsupportedFileExn {
    for (String pageLoc : initPages) {
      pages.add(addSite(pageLoc));
    }
  };
 
  // ****** THE SEARCH ENGINE METHODS YOU NEED TO PROVIDE ***********
  // Even if you encapuslate (full version), leave methods with these headers
  //   in the SearchEngine class (our tests/autograding expect to find them here)
 
  // given query string, produce webpages that meet query
  // you will need to edit this, but do not edit the header (autograding expects this)
  public LinkedList<Webpage> runQuery(String query) {
    
    LinkedList<Webpage> newPages = new LinkedList<Webpage>(); //list to store new pages
    
      
    query = stripFillers(query); //gets rid of unnecessary words and makes all letters in the word
    query = query.toLowerCase(); //lowercase
    
    
    if(alreadySawQuery(query)){    //if query is seen
      
      return queries.get(query);  //return the list 
    }
    
    else  { 
     
      for (Webpage p : this.pages) {    //if not, go through list
        
        if((p.getTitle().contains(query)) || (p.getBody().contains(query))) { //check if title or body
    	//has query
          
          newPages.add(p);   //add to list created above   
        }
          
      }
      queries.put(query, newPages); //put into hashmap
      return newPages;   //return list 
    }
  }
               
  
  
  // given a page location, return the corresponding page after updating queries
  // you will need to edit this, but do not edit the header (autograding expects this)
  public Webpage visitPage(String location) throws UnsupportedFileExn, FileNotFoundException {  
	  for(Webpage p: this.pages) {
		  if(p.url.equals(location)){  //if url and location match, 
			  return p; //return the webpage
		  }
	  }	  
	  Webpage page = addSite(location);  //if not, 
	  for(String q: queries.keySet()) { //look through keys of hashmap
		  if((page.getTitle().contains(q)) || (page.getBody().contains(q))) { //check title or body 
			  //is present
			  queries.get(q).add(page);	   		  
		  }
	  }	  
	  pages.add(page);
	  return page; //return webpage
 }

  
  
  // produce the number of web pages known in the system
  // you are welcome to edit this method as long as you leave the header intact (autograding expects this)
  public int knownPageCount() {
    return pages.size();
  }
  
  // determine whether given query has been seen in the search engine
  // you will need to edit this, but do not edit the header (autograding expects this)
  public boolean alreadySawQuery(String query) {
    //return this.theCache.theQuery(query);
	  return queries.containsKey(query);
  }
  
  // ***** THE SCREEN/USER INTERFACE *******************
  // You should NOT need to edit this method
  void screen() {
    System.out.println("-------------------------------------");
    System.out.println("Enter a number to select an option");
    System.out.println("1. Search for pages");
    System.out.println("2. Visit a page");
    System.out.println("3. Exit the system (and lose all index data)");
    String choice = keyboard.next();
    // eat up the rest of the line
    keyboard.nextLine();
    
    try {
      if (choice.equals("1")) {
        System.out.println("Enter your query:");
        String query = keyboard.nextLine();
        System.out.println("Search results: ");
        System.out.println(runQuery(query));
        screen();
      }
      else if (choice.equals("2")) {
        System.out.println("Which page (filename) do you want to visit?:");
        String filename = keyboard.next();
        System.out.println(visitPage(filename));
        screen();
      }
      else if (choice.equals("3"))
        System.out.println("Thanks for searching with us");
      else 
        System.out.println("ERROR *** Unrecognized option " + choice + ". Try again");
    } catch (UnsupportedFileExn e) {
      System.out.println("ERROR *** Filetype not supported: " + e.filename);
      screen();
    } catch (FileNotFoundException e) {
      System.out.println("ERROR *** No page found at address " + e);
      screen();
    }
  }

  // ****** ADDING SITES TO THE ENGINE ***************
  // parses given file into a webpage
  // you are welcome to edit this method as long as you leave the header intact.
  // you should NOT need to edit the call to readPage (you may want to add statements around it though)
  Webpage addSite(String locationName) throws UnsupportedFileExn, FileNotFoundException {
    Webpage newWP;
    if (locationName.endsWith(".md")) {
      return(m.readPage(locationName));
    } else {
      throw new UnsupportedFileExn(locationName);
    }
  }
  
  // ****** REMOVING FILLER WORDS FROM QUERIES *****************
  // Don't edit either the list of fillerWords or the stripFillers method
  private LinkedList<String> fillerWords = 
    new LinkedList<String>(Arrays.asList("a", "an", "the", "of", "on", "in", 
                                         "to", "by", "about", "how", "is",
                                         "what", "when"
                                        ));
  
  // remove the filler words from a string
  // assume string has no punctuation
  private String stripFillers(String query) {
    String[] wordArray = query.toLowerCase().split(" ");
    String resultStr = "";
    for (int i = 0 ; i < wordArray.length ; i++) {
      if (!(fillerWords.contains(wordArray[i])))
        resultStr = resultStr + wordArray[i];
    }
    return resultStr;
  }
 
}


