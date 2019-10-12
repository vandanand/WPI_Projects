import java.util.concurrent.ThreadLocalRandom;
import java.sql.Time;

public class LogGenerator {

 public static void main(String[] args) {
  
  //System.out.println("pls work");
  
  String[] userNamePool = {"root","kathi", "simmon", "jordan"}; 
  
  // nextInt is normally exclusive of the top value,
  // so add 1 to make it inclusive
  //ThreadLocalRandom.current().nextInt(1, 4 + 1); //min, max + 1
  String user = "";
  int userNumber = 0;
  
  Time t  = new Time(0, 0, 0);//hh, mm, ss
  int seconds = 0;
  int minutes = 0;
  int hours = 0;
  String time = ""; //String to hold time for the print
  
  int eventType = 0;
  
  int systemErrorNumber = 0;
  
  //Directory related stuffs
  String[] directoryNamePool = {"usr","src", "bin", "Documents", "Desktop", "Home"}; 
  String dirName = "";
  
  //File name pool
  String[] fileNamePool = {"project.ppt","hw1.txt", "maillist.txt", "readme.txt", "funnycat.png", "screenshot.png"}; 
  String fileName = "";
  
  boolean isDir = false; //true if it is a directory
  
  int fileSize = 0;
  
  //Web request stuff
  String[] ipAddrPool = {"127.0.0.1","68.27.16.2", "160.44.0.0", "255.255.255.255", "90.70.104.8", "192.55.0.2"}; 
  String ipAddr  = "";
  int port = 0;
  
  //login stuff 
  int helper = 0;
  boolean successful = true;
  
  for(int i = 0; i < 1000; i++){
   
   //get the user loggin events
   userNumber = ThreadLocalRandom.current().nextInt(1, 3 + 1); //min, max + 1
   user = userNamePool[userNumber];
   
   //generate time of event
   seconds = ThreadLocalRandom.current().nextInt(0, 58 + 1);
   minutes = ThreadLocalRandom.current().nextInt(0, 58 + 1);
   hours = ThreadLocalRandom.current().nextInt(0, 22 + 1);
   
   t  = new Time(seconds, minutes, hours);
   time = t.toString();
   
   //Generate the event type
   eventType = ThreadLocalRandom.current().nextInt(0, 6 + 1);
   //eventType =0;
   /*
     public static final int SYSTEM_ERROR = 0;
     public static final int ACCESS_ERROR = 1;
    public static final int FILE_OPENED = 2;
    public static final int FILE_CLOSED = 3;
    public static final int FILE_SAVED = 4;
    public static final int WEB_REQUEST = 5;
    public static final int LOGIN = 6; 
    */
   
         String monthString;
         //generate event based on the event type (varying lengths)
         switch (eventType) {
             case 0: //System Error - generate error 10001, 10002, 10003;
               systemErrorNumber = 10000+ ThreadLocalRandom.current().nextInt(1, 3 + 1);
               System.out.println(eventType+","+user+","+time+","+systemErrorNumber);
               break;
             case 1: //Access Error - isDir = true;
               dirName = directoryNamePool[ThreadLocalRandom.current().nextInt(0, 5 + 1)];
               isDir = true;
               System.out.println(eventType+","+user+","+time+","+dirName+","+isDir);
                     break;
             case 2: //File Opened - isDir = false;
              fileName = fileNamePool[ThreadLocalRandom.current().nextInt(0, 5 + 1)];
              isDir = false;
              System.out.println(eventType+","+user+","+time+","+fileName+","+isDir);
                    break;
             case 3: //File Closed - same as above
              fileName = fileNamePool[ThreadLocalRandom.current().nextInt(0, 5 + 1)];
              isDir = false;
              System.out.println(eventType+","+user+","+time+","+fileName+","+isDir);
                    break;
             case 4: //File Saved - same as above but has int size;
              fileName = fileNamePool[ThreadLocalRandom.current().nextInt(0, 5 + 1)];
              fileSize  = ThreadLocalRandom.current().nextInt(0, 6 + 1);
              isDir = false;
              System.out.println(eventType+","+user+","+time+","+fileName+","+isDir+","+fileSize);
                    break;
             case 5: //Web request - 
              ipAddr = ipAddrPool[ThreadLocalRandom.current().nextInt(0, 5 + 1)];
              port = ThreadLocalRandom.current().nextInt(0, 65000 + 1);
              System.out.println(eventType+","+user+","+time+","+ipAddr+","+port);
                    break;
             case 6: //Login - boolean successful?
              helper = ThreadLocalRandom.current().nextInt(0, 1 + 1);
              if(helper == 0)
               successful = false;
              else
               successful = true;
              System.out.println(eventType+","+user+","+time+","+successful);
                    break;
                      
         }
     }
 }
}
