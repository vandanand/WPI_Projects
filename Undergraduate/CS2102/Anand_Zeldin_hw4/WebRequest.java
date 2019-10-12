import java.sql.Time;

public class WebRequest extends AbsEvent{
 // The IP address and port of the web request
 private String ipAddr;
 private int port;
 
 public WebRequest(String user, Time ts, String ip, int port) {
  super(user, ts);
  this.ipAddr = ip;
  this.port = port;
 }

 public int getType() {
  return AbsEvent.WEB_REQUEST;
 }
 
 public String getIP() {
  return this.ipAddr;
 }
 
 public int getPort() {
  return this.port;
 }
}
