import java.sql.Time;

public abstract class AbsEvent {
 // Event types
 public static final int ACCESS_ERROR = 0;
 public static final int SYSTEM_ERROR = 1;
 public static final int FILE_OPENED = 2;
 public static final int FILE_CLOSED = 3;
 public static final int FILE_SAVED = 4;
 public static final int WEB_REQUEST = 5;
 public static final int LOGIN = 6;
 
 // Username and timestamp of the event
 private String username;
 private Time timeStamp;
 
 public AbsEvent(String user, Time ts) {
  this.username = user;
  this.timeStamp = ts; 
 }
 
 abstract public int getType();
 
 /**
  * Checks whether username matches a given string
  * @return boolean indicating whether usernames match
  */
 boolean isByUser(String uname) {
   return this.username.equals(uname);
 }
 
 /**
  * Getter for the timestamp
  * 
  * @return A Time object containing the timestamp
  */
 public Time getTimestamp() {
  return this.timeStamp;
 }
}
