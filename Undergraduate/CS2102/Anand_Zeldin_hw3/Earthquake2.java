import java.util.LinkedList;

class Earthquake2 {
  Earthquake2(){}
      
// checks whether a datum is a date
boolean isDate(double anum) { return (int)anum > 10000000; }
// extracts the month from an 8-digit date
int extractMonth(double dateNum) { return ((int)dateNum % 10000) / 100; }

public double findDailyMax(LinkedList<Double> data,
double day) {
double highest = 0;
for (int i=0; i < data.size(); i++) {  //for and if statements
if(data.get(i) == day) {
for(int j = i + 1; j < data.size(); j++) {
if(data.get(j) <= 500) {
if(data.get(j) > highest)
{
highest = data.get(j);
System.out.print(highest);
}
}
else {
break;
}
}
}
}
System.out.print(highest);
return highest;
}
public LinkedList<MaxHzReport> dailyMaxForMonth(LinkedList<Double> data, int month)
{
LinkedList<MaxHzReport> result = new LinkedList<MaxHzReport>();
for(int i = 0; i < data.size(); i++) {   //more for and if statements 
if(isDate(data.get(i)) && extractMonth(data.get(i))==month) {
double high = findDailyMax(data, data.get(i));
result.add(new MaxHzReport(data.get(i), high));
}
}
return result;
}
}

  