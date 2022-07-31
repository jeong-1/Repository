//GamePlay.java
//철수와 영희의 가위바위보 게임
import java.util.Scanner;

class GamePlay
{
	public static void main(String args[])
	{
		//입력값을 읽기위해 Scanner 객체 생성
		Scanner scan = new Scanner(System.in);
		System.out.println("철수와 영희의 가위바위보 게임 (가위, 바위, 보 중 하나를 입력하세요.)");

		//철수 값 입력 받기
		System.out.print("철수: ");
		String p1Choice = scan.nextLine();
		//영희 값 입력 받기
		System.out.print("영희: ");
		String p2Choice = scan.nextLine();

		//변수들을 선언
		int x, y;
		//철수의 값이 가위, 보, 바위일 때 변수 x에 각각의 값 대입. 가위, 보, 바위 순서대로 점점 작아지도록 x값 부여
		if(p1Choice.equals("가위"))
			x = 1;
		else if(p1Choice.equals("보"))
			x = 0;
		else if(p1Choice.equals("바위"))
			x = -1;
		else				//만약 입력값이 가위, 보, 바위가 아니라면 x에 2 대입
			x=2;
		//영희의 값이 가위, 보, 바위일 때 변수 y에 각각의 값 대입. 가위, 보, 바위 순서대로 점점 작아지도록 y값 부여
		if(p2Choice.equals("가위"))
			y = 1;
		else if(p2Choice.equals("보"))
			y = 0;
		else if(p2Choice.equals("바위"))
			y = -1;
		else				//만약 입력값이 가위, 보, 바위가 아니라면 y에 2 대입
			y=2;
		
		//현재 x, y 값의 크기는 바위를 낼 때보다 가위를 낼 때 더 크게 설정되어있으므로 
		//한 플레이어가 가위, 다른 플레이어가 바위를 냈을 때, 바위를 낸 플레이어의 값이 더 크도록 바꾸어줌
		if((x==1&&y==-1)||(x==-1&&y==1)){
			x *= -1;
			y *= -1;
		}

		//x와 y값을 비교하여 더 큰 값을 가진 사람이 승리자임을 출력
		if(x>1 || y>1)			//철수와 영희 중 하나라도 제대로 입력되지 않은 경우가 있다면 잘못 입력하였음을 출력
			System.out.println("잘못 입력하였습니다.");
		else if(x>y)
			System.out.println("철수 승리");
		else if(y>x)
			System.out.println("영희 승리");
		else
			System.out.println("무승부입니다.");
	}
}