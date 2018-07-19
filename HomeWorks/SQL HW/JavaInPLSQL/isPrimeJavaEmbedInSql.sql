/* @Author : Hakan C. Ipek
28.06.2018
This java source has java class called primeChecker 
and that java code checks that code is prime or not.
*/
CREATE OR REPLACE AND COMPILE JAVA SOURCE NAMED "PrimeChecker" AS
public class primeChecker {
	
	public static String isItPrime(int primeCandidate){
		String notPrimeLine = " is not a prime number.";
		String primeLine = " is a prime number.";
		String returnLine = primeCandidate + primeLine;
		int maxDivisionNumber = (primeCandidate+1)/2;
		if(primeCandidate < 2)
			returnLine = primeCandidate + notPrimeLine;
		else if(primeCandidate == 2)
			returnLine = primeCandidate + primeLine;
		else if(primeCandidate % 2 == 0)
			returnLine = primeCandidate + notPrimeLine;
		else{
			int iter = 3;
			while(iter < maxDivisionNumber && i != 0){
				if(primeCandidate % i != 0){
					iter += 2;
					returnLine = primeCandidate + primeLine;
				}else{
					i=0;
					returnLine = primeCandidate + notPrimeLine;
				}
			}
		}return returnLine;
	}
	public static void primePrinter(int maxNumber){
		for(int index=1; index<maxNumber; index++)
				System.out.println(isItPrime(index));
	}
};
/