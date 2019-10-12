import java.sql.Time;

public class Login extends AbsEvent{
 boolean successful; // Indicates whether the login was successful
 
 public Login(String user, Time ts, boolean success) {
  super(user, ts);
  this.successful = success;
 }

 public int getType() {
  return AbsEvent.LOGIN;
 }
 
 public boolean wasSuccessful() {
  return successful;
 }
}
