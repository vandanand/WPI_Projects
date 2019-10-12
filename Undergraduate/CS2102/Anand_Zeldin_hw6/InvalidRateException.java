
public class InvalidRateException extends Exception {
	double rate;
	
	InvalidRateException(double rate) {
		this.rate = rate;
	}

}
