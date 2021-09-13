//FindNumGame.java
//1부터 100사이의 발생된 임의의 숫자를 5번 안에 맞추는 게임
import java.util.Scanner;
// 랜덤넘버 클래스를 import
import java.util.Random;

public class FindNumGame{
	public static void main(String[] args){
		// TODO Auto-generated method stub
		//답을 읽기 위해 Scanner 객체 생성
		Scanner scan = new Scanner(System.in);
		//Random 객체 생성
		Random ranGen = new Random();

		//변수들을 선언
		int ranNum, answer, count=1;
		// 0 부터 99까지 사이의 랜덤넘버가 생성되므로 +1을 해서 1부터 100까지의 랜덤 넘버를 생성함
		ranNum=ranGen.nextInt(100)+1;

		while(count<6){
			//답 입력 받기
			System.out.print("랜덤 숫자 맞추기 - 숫자를 입력하세요(1~100): ");
			answer = scan.nextInt();
			//입력값(답)과 랜덤 숫자가 같을 경우 정답임을 출력 후 반복문을 빠져나옴
			if(answer==ranNum){
				System.out.println(count+"번만에 정답을 맞추었습니다.");
				break;
			}
			//입력값이 랜덤 숫자보다 클 경우
			else if(answer>ranNum){
				System.out.println("입력값이 너무 큽니다.");
				count++;
			}
			//입력값이 랜덤 숫자보다 작을 경우
			else{
				System.out.println("입력값이 너무 작습니다.");
				count++;
			}
		}
		//5번 안에 정답을 맞추지 못했을 경우 정답을 맞추지 못했음을 출력
		if(count==6)
			System.out.println("정답을 5번 시도에 맞추지 못했습니다.");
	}
}