//import java.util.regex.*;
//import java.io.*;
//import java.util.LinkedList;
//
//class SimpleMarkdownReader implements IWebReader {
//  SimpleMarkdownReader(){}
//  static Pattern linkPattern = Pattern.compile("\\[(?<text>[^\\]]*)\\]\\((?<link>[^\\)]*)\\)");
//  int linkgroup = 2;  
//  
//   /**
//   * check that line starts with expected prefix, also accepting prefix in lowercase.
//   * returns the read-in line without prefix, all in lowercase
//   * Throws a runtime exception if the file fails the expected format
//   * 
//   * @param theLine is the string read in from the buffer (may be null)
//   * @param prefix is the expected line prefix
//   * @param linePos describes which line is being checked (first, etc) for use in error message
//   * @param locator is the source filename, used when reporting an error
//   * @return String of line contents without prefix, all in lowercase
//   */ 
//  String checkLinePrefix(String theLine, String prefix, String linePos, String locator) {
//    if (null == theLine) 
//      throw new RuntimeException("File " + locator + " ended before " + prefix + " line");
//    if (theLine.startsWith(prefix) || theLine.startsWith(prefix.toLowerCase())) {
//      // strip the prefix off the line before returning it
//      return theLine.substring(prefix.length(), theLine.length()).trim();
//    } else {
//      // formatting error, since first line should start with the title.
//      // if this happens, halt the program
//      throw new RuntimeException("File format error: " + linePos + 
//                                 " line should begin with " + prefix + " or " +
//                                   prefix.toLowerCase());
//    }
//  }
//  
//  // returns string with the urls removed. Adds urls to the foundURLs list
//  String filterLinks(String fromString, LinkedList<String> foundURLs) {
//    Matcher matcher = linkPattern.matcher(fromString);
//    while (matcher.find()) {
//      String theLink = matcher.group(linkgroup);
//      System.out.println("Found link: " + theLink);
//      foundURLs.add(theLink);
//    }
//    return fromString;
//  }
//  
//  public Webpage readPage(String locator) throws FileNotFoundException {
//	FileReader file = new FileReader(locator);
//	BufferedReader buff = new BufferedReader(file);
//    int numLines = 0;
//    String theTitle = "";
//    String theBody = "";
//    LinkedList<String> refURLs = new LinkedList<String>();
//       
//    //read from file one line at a time
//    try {    
//      // read the title line
//      theTitle = checkLinePrefix(buff.readLine(), "# ", "first", locator);
//       // now read the rest of the lines into the body
//      String currLine = ""; 
//      numLines = 1;
//      while((currLine = buff.readLine()) != null) {
//        numLines++;
//        LinkedList<String> foundURLs = new LinkedList<String>();
//        filterLinks(currLine, foundURLs);
//        refURLs.addAll(foundURLs);
//        theBody = theBody + " " + currLine;
//      }       
//    } catch (IOException e) {
//      e.printStackTrace();
//    }
//    System.out.println("Successfully read " + numLines + " lines from " + locator);
//    return new Webpage(locator, theTitle, theBody, refURLs);    
//  }
//}

import java.util.regex.*;
import java.io.*;
import java.util.LinkedList;

class SimpleMarkdownReader implements IWebReader {
  SimpleMarkdownReader(){}
  static Pattern linkPattern = Pattern.compile("\\[(?<text>[^\\]]*)\\]\\((?<link>[^\\)]*)\\)");
  int linkgroup = 2;  
  
   /**
   * check that line starts with expected prefix, also accepting prefix in lowercase.
   * returns the read-in line without prefix, all in lowercase
   * Throws a runtime exception if the file fails the expected format
   * 
   * @param theLine is the string read in from the buffer (may be null)
   * @param prefix is the expected line prefix
   * @param linePos describes which line is being checked (first, etc) for use in error message
   * @param locator is the source filename, used when reporting an error
   * @return String of line contents without prefix, all in lowercase
   */ 
  String checkLinePrefix(String theLine, String prefix, String linePos, String locator) {
    if (null == theLine) 
      throw new RuntimeException("File " + locator + " ended before " + prefix + " line");
    if (theLine.startsWith(prefix) || theLine.startsWith(prefix.toLowerCase())) {
      // strip the prefix off the line before returning it
      return theLine.substring(prefix.length(), theLine.length()).trim();
    } else {
      // formatting error, since first line should start with the title.
      // if this happens, halt the program
      throw new RuntimeException("File format error: " + linePos + 
                                 " line should begin with " + prefix + " or " +
                                   prefix.toLowerCase());
    }
  }
  
  // returns string with the urls removed. Adds urls to the foundURLs list.
  // FoundURLs list will contain only unique URLs.
  String filterLinks(String fromString, LinkedList<String> foundURLs) {
    Matcher matcher = linkPattern.matcher(fromString);
    while (matcher.find()) {
      String theLink = matcher.group(linkgroup);
      System.out.println("Have link and links " + theLink + " " + foundURLs);
      if (!(foundURLs.contains(theLink))) {
        foundURLs.add(theLink);
      }
    }
    return fromString;
  }
  
  public Webpage readPage(String locator) { //throws FileNotFoundException {
    LinkedList<String> refURLs = new LinkedList<String>();
    try {
      FileReader file = new FileReader(locator);      
      BufferedReader buff = new BufferedReader(file);
      int numLines = 0;
      String theTitle = "";
      String theBody = "";
     
      // read the title line
      theTitle = checkLinePrefix(buff.readLine(), "# ", "first", locator);
       // now read the rest of the lines into the body
      String currLine = ""; 
      numLines = 1;
      LinkedList<String> foundURLs = new LinkedList<String>();
      while((currLine = buff.readLine()) != null) {
        numLines++;
        filterLinks(currLine, foundURLs);
        theBody = theBody + " " + currLine;
      } 
      refURLs.addAll(foundURLs);
      return new Webpage(locator, theTitle, theBody, refURLs);    
    } catch (IOException e) {
      e.printStackTrace();
      throw new RuntimeException("Aborting -- File not found " + locator);
    }
  }
}
