import java.util.LinkedList;

class Webpage implements Comparable<Webpage>{
  public String url;
  private String title;  
  private String body;   
  public LinkedList<String> referencedURLs;
  public Double rank;
  
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
public void addRank(double credits){ //helper for two functions
	rank += credits;
}
public String getTitle() {
	return title;
}
public String getBody() {
	return body;
}

@Override
public int compareTo(Webpage other) { //compares the ranks for pages
	
	if(this.rank == other.rank){
		return 0;
	}
	else if(this.rank < other.rank) {
		return 1;
	}
	else {
		return -1;
	}
	
}
public void setRank(){ //setting rank to 0
	this.rank=0.0;
}



}

