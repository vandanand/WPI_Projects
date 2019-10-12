import java.util.HashMap;
import java.util.LinkedList;

public class Sponsors {
	
	HashMap<String, Double> sponsors= new HashMap<String, Double>(); //data structure for sponsors
	
	Sponsors() {}
	
	
	public double updateRate (String sponsor, double rate) throws LowerRateException, InvalidRateException {

//looking at exceptions
		if(rate < 0.0 || rate > 0.1) {
			throw new InvalidRateException(rate);
		}

		else{

			if(sponsors.containsKey(sponsor)) {

				if(rate < sponsors.get(sponsor)){
//looking at another exception
					throw new LowerRateException(rate, sponsors.get(sponsor));
				}

				else {  

					sponsors.put(sponsor, rate); //putting into hashmap	   
				}
			}

			else {

				sponsors.put(sponsor, rate);

			}	

		}
		
		return rate; //return end result
	
	}
	


	public double getSponsoredRate(String pageUrl) { //getting the rate for sponsor
		for(String s : sponsors.keySet()) {
			if (pageUrl.toLowerCase().contains(s)) {
				return sponsors.get(s);
			}
		}
		return 0.0;
	}



	

}










