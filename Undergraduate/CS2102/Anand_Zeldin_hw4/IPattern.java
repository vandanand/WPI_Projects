import java.util.LinkedList;

public interface IPattern {
 public LinkedList<Alert> run(EventLog log, LinkedList<String> usernames); //run method
}
