
public class LowerRateException extends Exception {
	double newRate;
	double oldRate;
	
LowerRateException(double newRate, double oldRate) {
	this.newRate = newRate;
	this.oldRate = oldRate;
}

}
