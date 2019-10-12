import java.util.LinkedList;
import java.lang.Math;

public class SuspiciousWebPattern implements IPattern {
 /**
  * Checks to see if any web requests were made from specified blacklisted
  * IPs on blacklisted ports.
  * Severity is determined based on the number of blacklisted requests made
  * 
  * @param log The EventLog to check through
  * 
  * @return An int representing severity from 0-10
  */
 @Override
 public LinkedList<Alert> run(EventLog log, LinkedList<String>usernames) {
   LinkedList<Alert> raiseAlerts = new LinkedList<Alert>();
   
   // Create a blacklist of IPs and ports (format IP:PORT)s
   LinkedList<String> blacklist = new LinkedList<String>();
   blacklist.add("255.255.255.255:80");
   blacklist.add("160.44.0.0:16537");
      
   for (String uname : usernames) {
     // Track the number of requests made by user to blacklisted addresses
     int count = 0;
     
     // Loop through all of the events
     for (AbsEvent event : log.getLog()) {
       // Only pay attention to web requests from this user
       //   The AbsEvent class defines various kinds of events (such as WEB_REQUEST),
       //   giving each a unique number so we can tell the types apart
       if (event.isByUser(uname) && (event.getType() == AbsEvent.WEB_REQUEST)) {
         // Tell Java the event is a webrequest 
         WebRequest wr = (WebRequest)event;
         // Create an address string to match against the blacklist --
         //   this is just using data from the request event -- details not inmportant
         String reqIP = wr.getIP() + ":" + wr.getPort(); 
         // increase count if request address is in the blacklist --
         //   contains is the built-in membership method on lists
         if (blacklist.contains(reqIP)) {
           count = count + 1;
         }
       }
     }
     // if we detected any suspicious web requests, create an alert for this user
     if (count > 0) {
       int severity = (Integer)Math.min(10, (count / 1));
       Alert a = new Alert(uname, severity, AbsEvent.WEB_REQUEST);
       raiseAlerts.add(a);
       // raiseAlerts.add(new Alert(uname, severity, AbsEvent.WEB_REQUEST));
     }
   }
   return raiseAlerts;
 }
}
