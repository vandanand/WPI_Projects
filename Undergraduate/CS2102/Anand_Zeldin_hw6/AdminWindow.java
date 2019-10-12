import java.util.Scanner;
import java.io.*;

class AdminWindow {
  SearchEngine s;
  Scanner keyboard = new Scanner(System.in);
  
  AdminWindow(SearchEngine s){
    this.s = s;
  }
  
  public void adminScreen() {
    System.out.println("-------------------------------------");
    System.out.println("Enter a sponsor name (or done to exit)");
    String choice = keyboard.next();
    // eat up the rest of the line
    keyboard.nextLine();
    
    if (choice.equals("done"))
      System.out.println("Existing admin operations");
    else {
      System.out.println("Enter sponsor's price per page hit (as a double)");
      String rateString = keyboard.next();
      Double rate = Double.parseDouble(rateString); 
      try {
		s.updateSponsor(choice, rate);
	} catch (LowerRateException e) {
		System.out.println("Warning, this program will restart.");
		e.printStackTrace();
		 adminScreen();
	} catch (InvalidRateException e) {
		System.out.println("Warning, this program will restart.");
		e.printStackTrace();
		 adminScreen();
	}
      
    }
  }
  public static void main(String [] args){
	  
  }
}