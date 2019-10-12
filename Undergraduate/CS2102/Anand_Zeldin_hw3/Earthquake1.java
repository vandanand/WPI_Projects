import java.util.LinkedList;

class Earthquake1 {
Earthquake1(){}

// checks whether a datum is a date
boolean isDate(double anum) { return (int)anum > 10000000; }
// extracts the month from an 8-digit date
int extractMonth(double dateNum) { return ((int)dateNum % 10000) / 100; }

public LinkedList<MaxHzReport> dailyMaxForMonth(LinkedList<Double> data,
int month) {
  
  //declare the variables
LinkedList<MaxHzReport> result = new LinkedList<MaxHzReport>();
double highest = 0;

//function body
for (int i=0; i < data.size(); i++) {
if(isDate(data.get(i)) && extractMonth(data.get(i))==month) {
for(int j = i+1; j < data.size(); j++) {
if(data.get(j) > 500) {
break;
}
if(data.get(j) > highest) {
highest = data.get(j);
}
}
MaxHzReport mhr = new MaxHzReport(data.get(i), highest);
result.add(mhr);
}
}
return result;
}
}  



