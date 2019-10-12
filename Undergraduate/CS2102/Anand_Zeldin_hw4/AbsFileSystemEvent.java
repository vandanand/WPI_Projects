import java.sql.Time;

public abstract class AbsFileSystemEvent extends AbsEvent {
 private String fileName;// The name of the file
 private boolean isDir; // True if event happened on a directory, false if on file
 
 /**
  * Constructs an AbsFileEvent using log information
  * 
  * @param user Username of the user involved
  * @param timestamp Timestamp at which the error happened
  * @param fn The name of the file or directory on which there was an access error
  * @param isDir True if the access error was on a directory
  */
 public AbsFileSystemEvent(String user, Time ts, String fn, boolean isDir) {
  super(user, ts);
  this.fileName = fn;
  this.isDir = isDir;
 }
 
 /**
  * Getter for the filename
  * 
  * @return String representing the filename
  */
 public String getFilename() {
  return this.fileName;
 }
 
 /**
  * Getter for whether or not it's a directory
  * 
  * @return True if it's a directory
  */
 public boolean isDir() {
  return this.isDir;
 }
}
