import java.util.LinkedList;

/**
 * Created by jacobhackett on 10/23/16.
 */
public class TestClassAndMethodNames {

    public static void main(String[] args) {
 MarathonResult dummyRun = new MarathonResult(55.2, 2);
 
        LinkedList<BiathlonRound> rounds = new LinkedList<>();
        BiathlonRound b1 = new BiathlonRound(0, 11.4);
        BiathlonRound b2 = new BiathlonRound(4, 53.1);
        BiathlonRound b3 = new BiathlonRound(5, 6.2);
        BiathlonRound b4 = new BiathlonRound(2, 11.3);
        BiathlonRound b5 = new BiathlonRound(5, 17.6);

        rounds.add(b1);
        rounds.add(b2);
        rounds.add(b3);
        rounds.add(b4);
        rounds.add(b5);

        LinkedList<BiathlonRound> rounds2 = new LinkedList<>();
        BiathlonRound b6 = new BiathlonRound(0, 11.4);
        BiathlonRound b7 = new BiathlonRound(4, 53.1);
        BiathlonRound b8 = new BiathlonRound(5, 6.2);
        BiathlonRound b9 = new BiathlonRound(2, 11.3);

        rounds2.add(b6);
        rounds2.add(b7);
        rounds2.add(b8);
        rounds2.add(b9);

        BiathlonResult result1 = new BiathlonResult(rounds);
        BiathlonResult result2 = new BiathlonResult(rounds2);

        CyclingResult dummyCycResult = new CyclingResult(5.0, 6);

        Athlete a1 = new Athlete("Athlete1", result1, dummyCycResult);
        Athlete a2 = new Athlete("Athlete2", result2, dummyCycResult);

        LinkedList<Athlete> athletes = new LinkedList<>();
        athletes.add(a1);
        athletes.add(a2);

        Competition comp = new Competition(athletes, 5);

        LinkedList<Athlete> test1 = comp.BiathlonDNF();
        int test2 = comp.countCyclingImproved(comp);
        double test3 = result1.pointsEarned();
        BiathlonRound test4 = result1.bestRound();
        double test5 = comp.scoreForAthlete("Athlete1");
    }
}