import java.sql.Time;

public class AccessError extends AbsFileSystemEvent {
 /**
  * Constructs an AccessError using log information
  * 
  * @param user Username of the user involved
  * @param timestamp Timestamp at which the error happened
  * @param filename The name of the file or directory on which there was an access error
  * @param isDir True if the access error was on a directory
  */
 public AccessError(String user, Time ts, String fn, boolean isDir) {
  super(user, ts, fn, isDir);
 }
 
 /**
  * Returns the appropriate type for an AccessError
  * 
  * @return An int that can be matched to AbsEvent.ACCESS_ERROR
  */
 public int getType() {
  return AbsEvent.ACCESS_ERROR;
 }
}
