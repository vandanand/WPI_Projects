class Alert implements Comparable{
  String user; //define variables
  int severityRating;
  int eventType;
  
  Alert(String user, int severityRating, int eventType) { //constructor for Alert class
    this.user = user;
    this.severityRating = severityRating;
    this.eventType = eventType;
    
  }
  
  
  public int compareTo (Object otherObj) { 
    
    Alert other = (Alert) otherObj;
    
    if(this.severityRating == other.severityRating){ //comparing the objects 
      return 0; //returns 0 if two alerts are equally severe
    }
    
    else if(this.severityRating < other.severityRating) {
      return -1; //returns -1 if this alert is more severe than the given alert
    }
    
    else {
      return 1; // returns 1 if this alert is less severe than the given alert
    }
    
  }
  
  
  public boolean equals(Object otherObj) { 
    Alert other = (Alert) otherObj;
    
    if(this.user.equals(other.user)  //comparing each field and seeing if they are equal. if all fields are equal then
         && this.severityRating == other.severityRating //the objects are equal
         && this.eventType == other.eventType) {
      
      return true; //returns true if the objects are equal
      
    }
    
    else {
      return false; //returns false if the objects are not equal
      
    }
    
   
    
   
  
   }
} 
