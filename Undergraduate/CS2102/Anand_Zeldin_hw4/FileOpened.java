import java.sql.Time;

public class FileOpened extends AbsFileSystemEvent{
 /**
  * Constructs a FileOpened using log information
  * 
  * @param user Username of the user involved
  * @param timestamp Timestamp at which the error happened
  * @param filename The name of the file or directory on which there was an access error
  * @param isDir True if the access error was on a directory
  */
 public FileOpened(String user, Time ts, String fn) {
  super(user, ts, fn, false);
 }
 
 public int getType() {
  return AbsEvent.FILE_OPENED;
 }
}
