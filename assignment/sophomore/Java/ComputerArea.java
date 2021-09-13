//ComputerArea.java
//원의 면적을 계산하는 프로그램
import java.util.Scanner;
public class ComputerArea{
	public static void main(String[] args){
		//변수들을 선언
		final double PI =3.14159;
		double radius, area;

		//반지름을 읽기 위해 Scanner 객체 생성
		Scanner scan = new Scanner(System.in);
		
		//원의 반지름 입력받기
		System.out.print("원의 반지름을 입력하세요: ");
		radius = scan.nextDouble();
		
		//원의 면적 계산하기
		area = radius*radius*PI;

		//원의 반지름과 면적 출력
		System.out.println("원의 반지름은 "+radius+"이다.");
		System.out.println("원의 면적은 "+area+"이다.");
	}
}