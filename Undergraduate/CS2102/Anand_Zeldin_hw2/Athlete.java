//Vandana Anand (vanand) and Ilana Zeldin (izeldin)

import java.util.LinkedList;

class Athlete {
  
  CyclingResult cRace1; //object in Athlete class
  BiathlonResult bRace1; //object in Athlete class
  String nameOfAthlete; //name field
  
 
   Athlete (String nameOfAthlete, BiathlonResult bRace1, CyclingResult cRace1) { //constructor for Athlete class
      this.cRace1 = cRace1;
      this.bRace1 = bRace1;
      this.nameOfAthlete = nameOfAthlete;
      
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
  
  public boolean comparison (int numOfBiathlonRounds) { //finds the rounds in the biathlon race and given biathlon race
    
     
     return bRace1.compare(numOfBiathlonRounds); 
     
     }
  
}
      
    
class CyclingResult extends AbstractForCyclingAndMarathon implements IEvent {
    
    CyclingResult (double time, int position) {  //constructor for CyclingResult
      super(time, position);
      
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
  
  LinkedList<BiathlonRound> rounds; //list of rounds
   
      
   BiathlonResult (LinkedList<BiathlonRound> rounds) { //constructor for BiathlonResult
     this.rounds = rounds;
     
 }
   public double pointsEarned () { //finds the points in each round and adds them up
     double countPoints=0; //base case, countPoints starts at 0
     
     for(BiathlonRound r : rounds) {
       countPoints = countPoints + r.countPoints(); 
     }
     
        return countPoints;
        
        
      }

   
   public BiathlonRound bestRound () { //compares the points in each round and returns the final round with 
                                      //the least points
     
     BiathlonRound finalResult = rounds.get(0); //setting finalResult to the points in first round
     
     for(BiathlonRound f : rounds) {
       
       if(finalResult.countPoints() > f.countPoints()) {
         
          finalResult = f;
         
       }
       
       
     }
     
     return finalResult; 
     
   }
   
   public boolean compare (int numOfBiathlonRounds) { //helper for BiathlonDNF to compare this number of rounds 
                                                     //with the other number of rounds 
    
     if (rounds.size() < numOfBiathlonRounds) {
       
       return true; 
       
     }
     
     else 
     {
       return false;
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

class MarathonResult extends AbstractForCyclingAndMarathon implements IEvent {
    
    MarathonResult (double time, int position) {  //constructor for MarathonResult
      super(time, position); 
    }
  
    
    public double pointsEarned() { //finds the points earned for marathon result
      
      double marathonScore;
      
      marathonScore = time;
      
      return marathonScore;
      
    }
}

class AbstractForCyclingAndMarathon { //this class shares the data between CyclingResult and MarathonResult
  double time; //defining time
  int position; //defining position
  
   AbstractForCyclingAndMarathon (double time, int position) {  //constructor for AbstractForCyclingAndMarathon
                                                                                     
      this.time = time;
      this.position = position;
   }
  
}
  

class Competition {
  LinkedList<Athlete> nameOfAthlete; //list of athletes
    
  int numOfBiathlonRounds; //defining number of Biathlon rounds
  
   Competition (LinkedList<Athlete> nameOfAthlete, int numOfBiathlonRounds) { //constructor for Competition
     this.nameOfAthlete = nameOfAthlete;
     this.numOfBiathlonRounds = numOfBiathlonRounds;
  
   }
   
   public LinkedList<Athlete> BiathlonDNF () { //this makes sure that the list of BiathlonRounds is less than the 
                                              //number of rounds stored in the Competition class
     
     LinkedList<Athlete> showResult = new LinkedList<Athlete>(); //creating a new empty list
     
     for(Athlete a: nameOfAthlete) {
       
       if (a.comparison (numOfBiathlonRounds)) {
         
         showResult.add(a);
         
       }
       
       
     }

      return showResult;
     
   }
   

public double scoreForAthlete (String nameOfAthlete) { //finds the total score the athlete earned in the competition
  
  double result = 0; //base case, setting result to 0
  
  for(Athlete s: this.nameOfAthlete) {
    if (s.nameOfAthlete == nameOfAthlete) {
  
       result = s.totalScore();
      
   }
  
      
     }
        return result;

   }

public int countCyclingImproved (Competition competition2) { //finds the number of athletes whose pointsEarned in 
                                                //cycling was lower in this competition than in the given competition.
  
  int numOfAthletes = 0; //base case, setting numOfAthletes to 0
  
   for(Athlete n: this.nameOfAthlete) {
   
    
    for(Athlete k: competition2.nameOfAthlete) { 
    if (n.nameOfAthlete == k.nameOfAthlete) {  //finds the given name of athlete in other compestition 
                                               //in this competition
      
      if (n.cRace1.pointsEarned() < k.cRace1.pointsEarned()) {
    
    numOfAthletes = numOfAthletes + 1;
    
      
            }
          }
        }
      }
   
       return numOfAthletes;
   
    }
  }



//Question 10: 
//I would have written scoreForAthlete the same way I did for this assigment if I were to do it again. 
//I would have written countCyclingImproved with a helper if I were to write this problem again. 
//For scoreForAthlete, I would have left it the same because the code doesn't look that complicated 
//or squished together. For countCyclingImproved, I would have put the for loops in a helper to help
//with readability because the for loops are nested. 






  
  
  
  
  
  

