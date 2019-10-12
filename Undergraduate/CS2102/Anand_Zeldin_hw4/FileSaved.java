import java.sql.Time;

public class FileSaved extends AbsFileSystemEvent {
 private long size; // size in KB

 /**
  * Constructs a FileSaved using log information
  * 
  * @param user Username of the user involved
  * @param timestamp Timestamp at which the error happened
  * @param filename The name of the file or directory on which there was an access error
  * @param isDir True if the access error was on a directory
  */
 public FileSaved(String user, Time ts, String fn, int written) {
  super(user, ts, fn, false);
  this.size = written;
 }

 public int getType() {
  return AbsEvent.FILE_SAVED;
 }
 
 public long getSize() {
  return this.size;
 }
}
