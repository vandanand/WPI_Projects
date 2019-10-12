import java.io.*;
import java.sql.Time;
import java.util.LinkedList;

public class SystemLog {
  public EventLog parseLog(String fromFile) {

    //events holds the list of AbsEvent
    EventLog events = new EventLog();
    
    //File parsing 
    FileReader file = null;
    try {
      file = new FileReader(fromFile);
    } catch (FileNotFoundException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    
    BufferedReader buff = new BufferedReader(file);
    
    String currLine = ""; 
    int numLines = 0;
    
    //Create vars to store some information from each line
    //EventType, user, time, 
    int eventType = 0;
    boolean successful = false;
    
    //read from file one line at a time
    try {
      while((currLine = buff.readLine()) != null){
        numLines++;
        
        //Split the event up from string form to individual strings
        //Representative of values
        String[] values=currLine.split(",");
        
        //Determine the type of event
        eventType =  Integer.parseInt(values[0]);
        
        /*
         SYSTEM_ERROR = 0;
         ACCESS_ERROR = 1;
         FILE_OPENED = 2;
         FILE_CLOSED = 3;
         FILE_SAVED = 4;
         WEB_REQUEST = 5;
         LOGIN = 6;
         */
        
        //Create event according to the eventType, add it to events
        switch(eventType){
          case 0:  //system error;
            SystemError a = new SystemError(values[1], Time.valueOf(values[2]), Integer.parseInt(values[3]));
            events.addEvent(a);
            break; 
          case 1:  //access error - it is a directory
            AccessError b = new AccessError(values[1], Time.valueOf(values[2]), values[3], true);
            events.addEvent(b);
            break; 
          case 2:  //file open ;
            FileOpened c = new FileOpened(values[1], Time.valueOf(values[2]), values[3]);
            events.addEvent(c);
            break; 
          case 3:  //file close ;
            FileClosed d = new FileClosed(values[1], Time.valueOf(values[2]), values[3]);
            events.addEvent(d);
            break;
          case 4:  //file save ;
            FileSaved e = new FileSaved(values[1], Time.valueOf(values[2]), values[3], Integer.parseInt(values[5]));
            events.addEvent(e);
            break;
          case 5:  //web request ;
            WebRequest f = new WebRequest(values[1], Time.valueOf(values[2]), values[3], Integer.parseInt(values[4]));
            events.addEvent(f);
            break;
          case 6:  //login  ;
            //determine if successful 
            if(values[3].equals("false"))
            successful = false;
            else 
              successful = true;
            Login g = new Login(values[1], Time.valueOf(values[2]), successful);
            events.addEvent(g);
            break;
        }
      }
    } catch (IOException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    //events contains the event log
    System.out.println("Number of events parsed: " +numLines);
    System.out.println("Number of events added to log: " +events.getLog().size());
    // System.out.println("You can now iterate through the LinkedList events to search for patterns");
    return events;
  }
}
