/**
 * <h1>NameCheck.java</h1>
 * <h1>Instantiates objects of all desired classes to check names</h2>
 *
 * <b>Note:</b> If this file has a compilation issue, one of your class names is incorrect.
 *
 * @author Tanuj Sane
 * @version 1.0
 * @since 11/16/2016
 */

import java.util.LinkedList;

public class NameCheck {
    public static void main(String args[]) {

        /* Test that Alert class exists */
        Alert a = new Alert(
                "totally-not-a-hacker",                         // String username
                10,                                             // int severity
                1                                               // int eventType
        );

        /* Test that Alert class implements Comparable */
        Comparable c = new Alert(
                "totally-not-a-hacker",                         // String username
                10,                                             // int severity
                1                                               // int eventType
        );
        int trash = c.compareTo(a);

        /* Test that SecurityMonitor class exists */
        SecurityMonitor sm = new SecurityMonitor(new LinkedList<IPattern>());

        /* Test that LargeFilePattern exists */
        LargeFilePattern lfp = new LargeFilePattern();

        /* Test that LargeFilePattern implements IPattern */
        IPattern ip1 = new LargeFilePattern();
        LinkedList<Alert> garbage = ip1.run(new EventLog(), new LinkedList<String>());

        /* Test that FailedLoginsPattern exists */
        FailedLoginPattern flp = new FailedLoginPattern();

        /* Test that FailedLoginsPattern implements IPattern */
        IPattern ip2 = new FailedLoginPattern();
        LinkedList<Alert> waste = ip2.run(new EventLog(), new LinkedList<String>());

        System.out.println("Congratulations, all of your names are correct!");
    }
}


