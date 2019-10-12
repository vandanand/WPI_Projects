import java.util.LinkedList;

class Webpage {
  public String url;
  private String title;  
  private String body;   
  private LinkedList<String> referencedURLs;
  
  // The constructor converts title and body to lowercase, to ease
  //  other computations later
  Webpage(String locator, String title, String body,
          LinkedList<String> referencedURLs) {
    this.url = locator;
    this.title = title.toLowerCase();
    this.body = body.toLowerCase();
    this.referencedURLs = referencedURLs;
  }

//isPageforQuery method here
public String getURL() {
	return url;
}
public String getTitle() {
	return title;
}
public String getBody() {
	return body;
}

  
//public boolean equals(Webpage other) {
//	 return this.url.equals(other.url);
//}
}