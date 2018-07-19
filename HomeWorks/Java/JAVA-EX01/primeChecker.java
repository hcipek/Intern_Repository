
public class primeChecker {
	private int minNumber;
	private int maxNumber;
	
	public primeChecker(int minNumber, int maxNumber){
		this.minNumber = minNumber;
		this.maxNumber = maxNumber;
	}
	public int getMinNumber(){
		return minNumber;
	}
	public int getMaxNumber(){
		return maxNumber;
	}
	public void calculatePrimes(){
		int a;
		int count;
		while(minNumber<maxNumber){
			if(minNumber>2){
				a=2;
				count=2;
				while(a < minNumber){
					if( minNumber%a == 0){
						a = minNumber;
					}
					else
						count++;
						a++;
				}
				
				if(minNumber == (count))
					System.out.println(minNumber);
			}
			else if(minNumber == 2)
				System.out.println(minNumber);
		minNumber++;
		System.out.println("Siradaki sayi"+minNumber);
		}
	}
}
