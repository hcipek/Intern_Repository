import java.util.Scanner;

public class outputer {

	private static primeChecker primer;
	private static Scanner in;
	public static void main(String[] args) {
		in = new Scanner(System.in);
		System.out.println("Enter your max number: ");
		int maxNumber = in.nextInt();
		primer = new primeChecker(1,maxNumber);
		primer.calculatePrimes();

		
		

	}

}
