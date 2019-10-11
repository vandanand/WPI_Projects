//Vandana Anand (vanand) and Ilana Zeldin (izeldin)

class Athlete {
  
  CyclingResult cRace1; //object in Athlete class
  BiathlonResult bRace1; //object in Athlete class
  
   Athlete (BiathlonResult bRace1, CyclingResult cRace1) { //constructor for Athlete class
      this.cRace1 = cRace1;
      this.bRace1 = bRace1;
      
    } 

  public double totalScore() {  //this method calculates the total score for cycling and biathlon
    
  return cRace1.pointsEarned() + bRace1.pointsEarned(); 
  }
  
  public boolean hasBeaten(Athlete athlete1) { //compares the score for the one athlete and the inputted athlete 
                                               //and returns the athlete with the lower(best) score
      if (this.totalScore() < athlete1.totalScore()) {
      return true;
    }
    else
      
    {
      return false;
    }
  }
  
  public Athlete betterCyclist1(Athlete athlete1) { //version1; returns the athelete with the lower score in only the
                                                    //the cycling event
      if (this.cRace1.pointsEarned() < athlete1.cRace1.pointsEarned()) {
      return this;
    }
    else
       
    {
      return athlete1;
    }
  }
  
  public Athlete betterCyclist2(Athlete athlete1) { //version 2 ; does the same thing as version 1 but has a helper 
                                                    //function
    if (this.bestPoints() < athlete1.bestPoints()) {
      return this;
    }
    else
     
    {
      return athlete1; 
    }
  }
  
  public double bestPoints () {   //helper for version 2; finds the points for the cycling race
    
   return this.cRace1.pointsEarned();
    
  }
  
}
      
    
class CyclingResult implements IEvent {
    double time; //defining the time 
    int position; //defining the position
    
    CyclingResult (double time, int position) {  //constructor for CyclingResult
      this.time = time;
      this.position = position;
      
    } 
    
      public double pointsEarned () { //finds the points earned in each case. Such as if an athlete comes in first place 
                                      //they would get a certain number of points
       double score;
       
      if (position == 1){     //each case has an if statment
        
        score = time - 10;
      }
      else
      if (position == 2){
    
        score = time - 7;
      }
      else
      if (position == 3){
    
        score = time - 3;
      }
      else {
    
        score = time;
      }  
      
     return score; 
    }
}
      
class BiathlonResult implements IEvent {
      BiathlonRound round1; //defining each of the rounds in BiathlonResult class
      BiathlonRound round2; 
      BiathlonRound round3; 
      
   BiathlonResult (BiathlonRound round1, BiathlonRound round2, BiathlonRound round3) { //constructor for BiathlonResult
     this.round1 = round1;
     this.round2 = round2;
     this.round3 = round3;
 }
   public double pointsEarned () { //finds the points in each round and adds the up
     
        return round1.countPoints() + round2.countPoints() + round3.countPoints();
        
        
      }
   
   public BiathlonRound bestRound () { //compares the points in each round with if statements
     
     if (round1.countPoints() < round2.countPoints()){
        
        return round1;
      }
     if (round1.countPoints() > round2.countPoints()){
        
        return round2;
      }
     if (round1.countPoints() < round3.countPoints()){
        
        return round1;
      }
     if (round1.countPoints() > round3.countPoints()){
        
        return round3;
      }
     if (round2.countPoints() < round3.countPoints()){
        
        return round2;
      }
     if (round2.countPoints() > round3.countPoints()){
        
        return round3;
      }
     
     if (round1.countPoints() == round2.countPoints()){
        
        return round1;
      }
     if (round1.countPoints() == round3.countPoints()){
        
        return round1;
      }
     else {
        
        return round2;
      }
   }
}

class BiathlonRound {
  
        int targetsHit; //number of targets hit in that round
        double time2; //time(s) of run around track in that round
        
     BiathlonRound (int targetsHit, double time2) { //constructor for BiathlonRound
      this.targetsHit = targetsHit;
      this.time2 = time2;
      
    }
    
     public double countPoints() { //adds the penalty of 60 seconds for every target missed to the time taken and 
                                   //returns that result
       
       double points; //defining points
       
       points = time2 + (5 - targetsHit) * 60;
     
  return points; 
     }
}


          
          
          
          
          
          
          
          
          
      
      