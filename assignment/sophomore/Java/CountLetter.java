import java.util.Scanner;

//문자출현 횟수 계산하기
class CountLetter
{
	public static void main(String args[])
	{
		//문자열 입력을 위해 Scanner 객체 생성
		Scanner scan = new Scanner(System.in);

		// 52(26*2)개의 정수를 저장할 수 있는 배열 count를 선언하고 생성
		int[] count = new int[52];
		
		//문자열을 입력받기
		System.out.print("문자열을 입력하시오 : ");
		String buffer = scan.nextLine();
	
		//각 문자가 등장하는 횟수를 계산
		for(int i=0; i< buffer.length(); i++)
		{
			char ch = buffer.charAt(i);		//string 문자열 중 인덱스 i 한 글자만 char 타입으로 변환
			//※if(ch>='A' && ch <='Z')라고 쓸 수도 있음
			if(Character.isUpperCase(ch))		//ch가 대문자일 때
				count[ch-'A']++;
			//※if(ch>='a' && ch<='z')라고 쓸 수도 있음
			else if(Character.isLowerCase(ch))	//ch가 소문자일 때
				count[ch-'a'+26]++;	//'A'부터 'Z'가 26개이므로 'a'는 count[26]에 들어가게 됨
			else				//만약 스페이스나 다른 문자이면 반복을 계속한다.
				continue;	
		}
		
		//출력 결과에 필요한 변수 선언
		int alpha;
		// 배열에 저장된 횟수를 출력하는 반복루프
		for(int i=0; i<52; i++)
		{	
			//i가 0~25일 때 alpha는 A~Z의 아스키 문자 코드번호 저장	
			if(i<26)
				alpha = 'A'+i;
			//i가 26~51일 때 alpha는 a~z의 아스키 문자 코드번호 저장
			else
				alpha = 'A'+6+i;
				//※alpha = 'a'-26+i; 가 더 보기 좋음

			//count[i]값이 0이 아닐 때 알파벳과 개수 출력
			if(count[i]!=0)
			{
				System.out.println((char)alpha+": "+count[i]+"개");
			}
		}
	}
}