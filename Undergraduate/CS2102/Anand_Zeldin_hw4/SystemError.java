import java.sql.Time;

public class SystemError extends AbsEvent{
 // Types of system errors and their error codes
 public static final int KERNEL_PANIC = 10001;
 public static final int MEMORY_ERROR = 10002;
 public static final int FUBAR = 10003;
 
 
 // Stores the error code
 private int errorCode;
 
 public SystemError(String user, Time ts, int code) {
  super(user, ts);
  this.errorCode = code;
 }

 public int getType() {
  return AbsEvent.SYSTEM_ERROR;
 }
 
 public int getErrorCode() {
  return this.errorCode;
 }
}
