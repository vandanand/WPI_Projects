import java.util.LinkedList;

class BMI2 {
  BMI2(){}
  
  public BMISummary bmiReport(LinkedList<PHR> phrs) {
    
    
    LinkedList<PHR> under = new LinkedList<PHR>(); 
    LinkedList<PHR> healthy = new LinkedList<PHR>(); 
    LinkedList<PHR> over = new LinkedList<PHR>(); 
    LinkedList<PHR> obese = new LinkedList<PHR>(); 
    
  double bmi;
   
    for(PHR b: phrs) {
   bmi = b.weight / (b.height * b.height);
   
   if(bmi < 18.5) {
     
     under.add(b);
   }
   
   else if(18.5 <= bmi && bmi < 25) {
     
     healthy.add(b);
     
   }
   
   else if(25 <= bmi && bmi < 30) {
     
     over.add(b);
     
   }
   
   else {
     
    obese.add(b); 
     
   }
   
    }
     
    
    return new BMISummary(convertToName(under), convertToName(healthy), convertToName(over), convertToName(obese));
  }
    
    
  public LinkedList<String> convertToName(LinkedList<PHR> type){
    
    LinkedList<String> names = new LinkedList<String>();
    
    for(PHR l: type) {
      
      names.add(l.name);    
      
    }
  return names;
  }
    
  }
