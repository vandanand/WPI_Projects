import java.util.LinkedList;
class LargeFilePattern implements IPattern {
  
  @Override
  public LinkedList<Alert> run(EventLog log, LinkedList<String> usernames){
    LinkedList<Alert> numOfAlerts = new LinkedList<Alert>(); //create a list 
    
    for (String uname : usernames) { //go through usernames
      int count = 0; 
      
      for (AbsEvent event : log.getLog())  { //go through events
        
        if ((event.getType() == AbsEvent.FILE_SAVED) && (event.isByUser(uname)) && (((FileSaved)event).getSize() > 1000000)) {
          //if these conditions are true, add 1 to count ^
          count = count + 1;
          
         
        }
        
        
      }
      
      if (count > 1) {
        
        Alert a = new Alert(uname, count, AbsEvent.FILE_SAVED);
        numOfAlerts.add(a); //add to a
       
      }
    }
    
    return numOfAlerts; //return final list
  }
}