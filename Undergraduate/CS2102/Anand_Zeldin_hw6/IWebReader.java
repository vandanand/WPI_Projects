import java.io.*;
  
interface IWebReader {
  // Reads in content of given page and returns corresponding webpage object
  public Webpage readPage(String locator) throws FileNotFoundException;
}
