import java.util.LinkedList;

class BMI1 {
  BMI1(){}
  
  public BMISummary bmiReport(LinkedList<PHR> phrs) {
    
    LinkedList<String> under = new LinkedList<String>(); //Lists for each category 
    LinkedList<String> healthy = new LinkedList<String>(); 
    LinkedList<String> over = new LinkedList<String>(); 
    LinkedList<String> obese = new LinkedList<String>(); 
    
  double bmi;
   
    for(PHR b: phrs) {    //for loop for each PHR 
   bmi = b.weight / (b.height * b.height);  //calculates BMI
   
   if(bmi < 18.5) {   //if statements for each case
     
     under.add(b.name);
   }
   
   else if(18.5 <= bmi && bmi < 25) {
     
     healthy.add(b.name);
     
   }
   
   else if(25 <= bmi && bmi < 30) {
     
     over.add(b.name);
     
   }
   
   else {
     
    obese.add(b.name); 
     
   }
   
    }
     
    
    return new BMISummary(under, healthy, over, obese);  
  }
  
}