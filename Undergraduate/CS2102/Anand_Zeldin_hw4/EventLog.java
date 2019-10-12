import java.util.LinkedList;

public class EventLog {
 // The linked list of event objects
 private LinkedList<AbsEvent> log;
 
 public EventLog() {
  this.log = new LinkedList<AbsEvent>();
 }
 
 /**
  * Adds an event to the log
  * 
  * @param event The event to add
  */
 public void addEvent(AbsEvent event) {
  this.log.add(event);
 }
 
 /**
  * Getter for the log list
  * 
  * @return A LinkedList of events
  */
 public LinkedList<AbsEvent> getLog() {
  return this.log;
 }
 
 /**
  * Produce size of the log list
  * 
  * @return the size of the log
  */
 public int size() {
  return this.log.size();
 }
 
}
