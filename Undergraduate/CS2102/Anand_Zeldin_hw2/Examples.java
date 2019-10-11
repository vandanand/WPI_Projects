import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.Test;
import java.util.LinkedList;

public class Examples {
  
  //hw1 examples
    
    
  //examples for cycling reuslt 
    CyclingResult agoodresult1 = new CyclingResult(120, 1); 
    CyclingResult agoodresult2 = new CyclingResult(300, 2);
    CyclingResult agoodresult3 = new CyclingResult(420, 3);
    CyclingResult agoodresult4 = new CyclingResult(540, 5);
    
    //biathlon round examples
    BiathlonRound biResult1 = new BiathlonRound(0, 15);
    BiathlonRound biResult3 = new BiathlonRound(1, 15);
    BiathlonRound biResult5 = new BiathlonRound(2, 15);
    BiathlonRound biResult7 = new BiathlonRound(3, 15);
    BiathlonRound biResult9 = new BiathlonRound(4, 15);
    BiathlonRound biResult11 = new BiathlonRound(5, 15);
    
   
    
    //hwk2 examples
    
    //Marathon result examples
    MarathonResult theGoodResult1 = new MarathonResult(600, 1);
    MarathonResult theGoodResult2 = new MarathonResult(700, 2);
    MarathonResult theGoodResult3 = new MarathonResult(800, 3);
    MarathonResult theGoodResult4 = new MarathonResult(900, 4);
    
    //Linked Lists for Biathlon round
    LinkedList<BiathlonRound> blist = new LinkedList <BiathlonRound>();
    LinkedList<BiathlonRound> theBList = new LinkedList <BiathlonRound>();
    LinkedList<BiathlonRound> theBestRound = new LinkedList <BiathlonRound>();
    LinkedList<BiathlonRound> theBestRound2 = new LinkedList <BiathlonRound>();
    LinkedList<BiathlonRound> theBestRound3 = new LinkedList <BiathlonRound>();
    
    //Linked Lists for Athlete
    LinkedList<Athlete> numberOfAthletes = new LinkedList <Athlete>();
    LinkedList<Athlete> numberOfAthletes2 = new LinkedList <Athlete>();
    LinkedList<Athlete> numberOfAthletes3 = new LinkedList <Athlete>();
    LinkedList<Athlete> numberOfAthletes4 = new LinkedList <Athlete>();
    LinkedList<Athlete> John = new LinkedList <Athlete>();
 
    
    //Examples for biathlon result
    BiathlonResult pointsInEachRound1 = new BiathlonResult(blist);
    BiathlonResult pointsInEachRound2 = new BiathlonResult(theBList);
    BiathlonResult whatIsTheBestRound = new BiathlonResult(theBestRound);
    BiathlonResult whatIsTheBestRound2 = new BiathlonResult(theBestRound);
    BiathlonResult whatIsTheBestRound3 = new BiathlonResult(theBestRound);
    
    //Examples for Competition
    Competition howManyAthletes = new Competition(numberOfAthletes, 3);
    Competition howManyAthletes2 = new Competition(numberOfAthletes2, 4);
    Competition howManyAthletes3 = new Competition(numberOfAthletes3, 5);
     Competition howManyAthletes4 = new Competition(numberOfAthletes4, 6);
     
    //Athlete examples
    Athlete name1 = new Athlete("John", pointsInEachRound1, agoodresult1); 
    Athlete name2 = new Athlete("Frank", pointsInEachRound2, agoodresult3); 
    Athlete name3 = new Athlete("Joe", whatIsTheBestRound2, agoodresult4);
    
    Athlete name4 = new Athlete("John", pointsInEachRound1, agoodresult2); 
    Athlete name5 = new Athlete("Frank", pointsInEachRound2, agoodresult4); 
    Athlete name6 = new Athlete("Joe", whatIsTheBestRound2, agoodresult1);
    Athlete name7 = new Athlete("Keara", whatIsTheBestRound3, agoodresult3);
    
    
    
                                  
    public Examples(){}
    
    //hw2 tests
    
    // tests for marathonResult
    @Test 
    public void testMarathonScore1() {
      assertEquals(600, theGoodResult1.pointsEarned(), 0.01);
    }
    
    @Test 
    public void testMarathonScore2() {
      assertEquals(700, theGoodResult2.pointsEarned(), 0.01);
    }
    
    @Test 
    public void testMarathonScore3() {
      assertEquals(800, theGoodResult3.pointsEarned(), 0.01);
    }
    
    @Test 
    public void testMarathonScore4() {
      assertEquals(900, theGoodResult4.pointsEarned(), 0.01);
    }
    
    @Before
  public void lists(){
    blist.add(biResult1);
    blist.add(biResult3);
    blist.add(biResult5);
    blist.add(biResult7);
  
    theBList.add(biResult5);
    theBList.add(biResult7);
    theBList.add(biResult9);
    theBList.add(biResult11);
    
    theBestRound.add(biResult1);
    theBestRound.add(biResult3);
    theBestRound.add(biResult5);
    theBestRound.add(biResult7);
    theBestRound.add(biResult9);
    theBestRound.add(biResult11);
    
    theBestRound2.add(biResult11);
    theBestRound2.add(biResult3);
    theBestRound2.add(biResult5);
    theBestRound2.add(biResult7);
    theBestRound2.add(biResult9);
    theBestRound2.add(biResult1);
    
    theBestRound3.add(biResult1);
    theBestRound3.add(biResult3);
    theBestRound3.add(biResult11);
    theBestRound3.add(biResult7);
    theBestRound3.add(biResult9);
    theBestRound3.add(biResult5);
    
    numberOfAthletes.add(name1);
    numberOfAthletes.add(name2);
    numberOfAthletes.add(name3);
    
    numberOfAthletes2.add(name3);
    numberOfAthletes2.add(name1);
    numberOfAthletes2.add(name2);
    
    numberOfAthletes3.add(name4);
    numberOfAthletes3.add(name5);
    numberOfAthletes3.add(name6);
    numberOfAthletes3.add(name7);
    
    numberOfAthletes4.add(name1);
    numberOfAthletes4.add(name3);
    
    John.add(name1);
   
  }
    
    // tests for biathlonResult
    @Test 
    public void testBiathlonResult1() {
      assertEquals(900, pointsInEachRound1.pointsEarned(), 0.01);
    }
    
    @Test 
    public void testBiathlonResult2() {
      assertEquals(420, pointsInEachRound2.pointsEarned(), 0.01);
    }
    
    // tests for bestRound
    @Test 
    public void testBestRound() {
      assertEquals(whatIsTheBestRound.bestRound(), biResult11);
    }
    
    @Test 
    public void testBestRound2() {
      assertEquals(whatIsTheBestRound2.bestRound(), biResult11);
    }
    
    @Test 
    public void testBestRound3() {
      assertEquals(whatIsTheBestRound3.bestRound(), biResult11);
    }
    
    // tests for BiathlonDNF
    @Test 
    public void testForDNF() {
      assertEquals(howManyAthletes4.BiathlonDNF(), John);
    }
    
    // tests for totalScoreForAthlete
    @Test 
    public void testScoreForAthlete() {
      assertEquals(howManyAthletes.scoreForAthlete("John"), 1010, 0.001);
    }
    
    // tests for countCyclingImproved
    @Test 
    public void isThereALowerCyclingAScore() {
      assertEquals(howManyAthletes.countCyclingImproved(howManyAthletes), 0);
    }
    
    @Test 
    public void isThereALowerCyclingAScore2() {
      assertEquals(howManyAthletes.countCyclingImproved(howManyAthletes2), 0);
    }
    
    @Test 
    public void isThereALowerCyclingAScore3() {
      assertEquals(howManyAthletes.countCyclingImproved(howManyAthletes3), 2);
    }
    
    //hw1 Tests
    
    //checks that cycling result with 120 seconds and 1st position passes
    @Test 
    public void testFirstPosition() {
      assertEquals(110, agoodresult1.pointsEarned(), 0.01);
    }
    
    //checks that cycling result with 300 seconds and 2nd position passes
    @Test 
    public void testSecondPosition() {
      assertEquals(293, agoodresult2.pointsEarned(), 0.01);
    }
    
    //checks that cycling result with 420 seconds and 3rd position passes
    @Test 
    public void testThirdPosition() {
      assertEquals(417, agoodresult3.pointsEarned(), 0.01);
    }
    
    //checks that cycling result with 540 seconds and 5th position passes
    @Test 
    public void testFifthPosition() {
      assertEquals(540, agoodresult4.pointsEarned(), 0.01);
    }
    
    // check that biathlon round with 0 hits and 15 seconds passes
    @Test
    public void testTargetZero() {
      assertEquals (315, biResult1.countPoints(), .01);
    }
    // check that biathlon round with 1 hits and 15 seconds passes
    @Test 
    public void testTargetOne() {
      assertEquals (255, biResult3.countPoints(), .01);
    }
    // check that biathlon round with 2 hits and 15 seconds passes
    @Test 
    public void testTargetTwo() {
      assertEquals (195, biResult5.countPoints(), .01);
    }
    // check that biathlon round with 3 hits and 15 seconds passes
    @Test 
    public void testTargetThree() {
      assertEquals (135, biResult7.countPoints(), .01);
    }
    // check that biathlon round with 4 hits and 15 seconds passes
    @Test 
    public void testTargetFour() {
      assertEquals (75, biResult9.countPoints(), .01);
    }
    // check that biathlon round with 5 hits and 15 seconds passes
    @Test 
    public void testTargetFive() {
      assertEquals (15, biResult11.countPoints(), .01);
    }
    
  
}

    
 
  
