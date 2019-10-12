import java.util.LinkedList;

class DataSmooth1 {
  DataSmooth1(){}
  
  public LinkedList<Double> dataSmooth(LinkedList<PHR> phrs) {

    double length = phrs.size(); //declaring the variables
    int numOne = 1;
    LinkedList<Double> result;
    result = new LinkedList<Double>();
    double average;

    average = (double)(phrs.get(0).heartRate/1.0); //making sure average is type double
    result.add(average);

    while (numOne < length-1){
      average = (double)(phrs.get(numOne).heartRate + phrs.get(numOne-1).heartRate + phrs.get(numOne+1).heartRate)/3.0;
      //finds the numbers and averages them together
      result.add(average);
      numOne = numOne + 1;
    }

    average = (double)(phrs.get(phrs.size()-1).heartRate/1.0);
    result.add(average);

    return result; 

    }

  }
  
