import java.util.LinkedList;
import static java.lang.Math.*; 
class FailedLoginPattern implements IPattern {
  
  @Override
  public LinkedList<Alert> run(EventLog log, LinkedList<String> usernames) {
    LinkedList<Alert> result = new LinkedList<Alert> ();
    
    for(String uname : usernames) { //go through usernames
      
      
      LinkedList<AbsEvent> failedLogins = new LinkedList<AbsEvent>(); //create a list of failedLogins

      for (AbsEvent event : log.getLog()) { //go through events
        
        if ((event.getType() == AbsEvent.LOGIN) && (event.isByUser(uname)) && !(((Login)event).wasSuccessful())){
          //if these conditions are met, then add event to list of failedLogins
          failedLogins.add((event));
          
        }
      }
        
          
       for(int i=0 ; i < failedLogins.size() -3 ; i++) { //look at number of logins within 5 minutes
            
           long diff = failedLogins.get(i+3).getTimestamp().getTime() - failedLogins.get(i).getTimestamp().getTime();
           if (failedLogins.size() >= 4 && diff / 60000.0 <= 5.0) { 
             if(failedLogins.size() > 10) { //seeing what to do if failed logins is greater than 10
              
               result.add(new Alert(uname, 10, AbsEvent.LOGIN));
               break;
             }
             else { 
              result.add(new Alert(uname, failedLogins.size(), AbsEvent.LOGIN));
              break;
           }
         } 
           
       }
                  
     }
       
        
      return result; //return result list
   }
    
}



















