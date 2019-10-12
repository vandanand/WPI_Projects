import static org.junit.Assert.*;
import org.junit.Test;
import java.util.LinkedList;
import java.util.Arrays;

public class BMIExamples {
  BMI1 B1 = new BMI1();
  LinkedList<PHR> PHR1 = new LinkedList<PHR>();
  
  public BMIExamples(){
    PHR1.add(new PHR("Eugene", 2, 60, 77));
    PHR1.add(new PHR("Marty", 1.55, 58.17, 56));
    PHR1.add(new PHR("Rai", 1.8, 55, 84));
    PHR1.add(new PHR("Nicky", 1.5, 100, 64));
  }
  
  @Test
  public void instructorTestBMI() {
    assertEquals(new BMISummary(new LinkedList<String>(Arrays.asList("Eugene", "Rai")),
                                new LinkedList<String>(Arrays.asList("Marty")),
                                new LinkedList<String>(),
                                new LinkedList<String>(Arrays.asList("Nicky"))),
                 B1.bmiReport(PHR1));
  }

}
