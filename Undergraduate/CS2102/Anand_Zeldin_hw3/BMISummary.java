import java.util.LinkedList;

class BMISummary {
  LinkedList<String> under;
  LinkedList<String> healthy;
  LinkedList<String> over;
  LinkedList<String> obese;
  
  BMISummary(LinkedList<String> under,
             LinkedList<String> healthy,
             LinkedList<String> over,
             LinkedList<String> obese) {
    this.under = under;
    this.healthy = healthy;
    this.over = over;
    this.obese = obese;
  }

  // the equals method for use in testing
  public boolean equals(Object other) {
    BMISummary otherS = (BMISummary) other;
    return this.under.equals(otherS.under) &&
      this.healthy.equals(otherS.healthy) &&
      this.over.equals(otherS.over) &&
      this.obese.equals(otherS.obese);
  }
  
    // the toString method so that reports display when tests fail
  public String toString(){
    return "BMISum[under = " + under.toString() + 
      ", healthy = " + healthy.toString() +
      ", over = " + over.toString() +
      ", obese = " + obese.toString() + "]";
  }
}
