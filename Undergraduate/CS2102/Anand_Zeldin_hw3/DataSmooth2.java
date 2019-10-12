import java.util.LinkedList;

class DataSmooth2 {
  DataSmooth2(){}
  
  public LinkedList<Double> dataSmooth(LinkedList<PHR> phrs) {
    
 double average = 0;   //defining the variables
    LinkedList<java.lang.Double> result;
    result = new LinkedList<java.lang.Double>();

    average = (double) (phrs.get(0).heartRate / 1.0);   //adding double to make sure end result is type double
    result.add(average);

    for (int i = 1; i < phrs.size()-1; i++) {
      average = (double) (phrs.get(i).heartRate + phrs.get(i - 1).heartRate + phrs.get(i + 1).heartRate) / 3.0;
      //finds the numbers and averages them together
      result.add(average);
      average = 0;
    }

    average = (double) (phrs.get(phrs.size()-1).heartRate / 1.0); //what average is equal to
    result.add(average);

    return result;
  }
}

    
    
   