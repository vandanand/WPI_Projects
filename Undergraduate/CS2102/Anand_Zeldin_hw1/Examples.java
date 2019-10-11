import static org.junit.Assert.*;
import org.junit.Test;

public class Examples {
  
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
    
    //biathlon result examples
    BiathlonResult badresult = new BiathlonResult(biResult1, biResult3, biResult5);
    BiathlonResult goodresult = new BiathlonResult(biResult7, biResult9, biResult11);
    
    //Athlete examples
    Athlete athlete1 = new Athlete(goodresult, agoodresult1);
    Athlete athlete2 = new Athlete(badresult, agoodresult3);
                                  
    public Examples(){}
    
    //checks that cycling result with 120 seconds and 1st position passes
    @Test 
    public void testFirstPosition() {
      assertEquals(110, agoodresult1.pointsEarned(), 0.01);
    }
    
    //checks that cycling result with 300 seconds and 2nd position passes
    @Test 
    public void testSecondPosition() {
      assertEquals(293, agoodresult1.pointsEarned(), 0.01);
    }
    
    //checks that cycling result with 420 seconds and 3rd position passes
    @Test 
    public void testThirdPosition() {
      assertEquals(417, agoodresult1.pointsEarned(), 0.01);
    }
    
    //checks that cycling result with 540 seconds and 5th position passes
    @Test 
    public void testFifthPosition() {
      assertEquals(540, agoodresult1.pointsEarned(), 0.01);
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
    
    // checks biathlon result badresult
    @Test 
    public void testrsult1() {
      assertEquals(biResult5, badresult.bestRound());
    }

    // checks biathlon result goodresult 
    @Test
    public void testresult2() {
      assertEquals(biResult11, goodresult.bestRound());
    }
 
    
  
}