//직원들의 인적사항을 관리하는 프로그램
import java.util.Scanner;
class TestEmployee
{
	public static void main(String args[]){
		//입력을 위해 Scanner 객체 생성
		Scanner scan = new Scanner(System.in);
		
		//배열 참조 변수를 선언함과 동시에 크기가 2인 배열을 생성
		Employee[] employee = new Employee[2];

		//변수 선언
		String n, a;
		int s, p;

		//사용자로부터 데이터를 받아 배열에 추가
		for(int i=0; i<employee.length; i++){
			//Employ 객체 생성
			employee[i] = new Employee();
			//데이터 입력
			System.out.print("이름을 입력하세요 [직원번호"+(i+1)+"] :");
			n = scan.nextLine();
			employee[i].setName(n);
			System.out.print("주소를 입력하세요 [직원번호"+(i+1)+"] :");
			a = scan.nextLine();
			employee[i].setAddress(a);
			System.out.print("연봉을 입력하세요 [직원번호"+(i+1)+"] :");
			s = scan.nextInt();
			employee[i].setSalary(s);
			System.out.print("전화번호를 입력하세요 [직원번호"+(i+1)+"] :");
			p = scan.nextInt();
			employee[i].setPhone(p);
			//nextInt()로 생기는 공백 처리
			scan.nextLine();
		}

		//배열의 내용을 수정할 수 있는 메뉴 시스템
		System.out.println("수정하시겠습니까? (수정을 원하시면 y를 눌러주세요.)");
		//수정을 원할 경우 y를 입력
		char ch = scan.next().charAt(0);
		//y를 입력받았으면 지정한 배열의 내용 수정
		if(ch=='y'){
			System.out.println("수정하고 싶은 직원번호를 입력하세요 :");
			int num = scan.nextInt();

			//nextInt()로 생기는 공백 처리
			scan.nextLine();
			//데이터 입력
			System.out.print("이름을 입력하세요 :");
			n = scan.nextLine();
			employee[num-1].setName(n);
			System.out.print("주소를 입력하세요 :");
			a = scan.nextLine();
			employee[num-1].setAddress(a);
			System.out.print("연봉을 입력하세요 :");
			s = scan.nextInt();
			employee[num-1].setSalary(s);
			System.out.print("전화번호를 입력하세요 :");
			p = scan.nextInt();
			employee[num-1].setPhone(p);
		}

		//배열에 입력된 모든 데이터 출력
		for(int i=0; i<employee.length; i++){
			//employee[i].toString(String n, String a, int s, int p);
			System.out.println("직원번호 ["+(i+1)+"]	name : "+employee[i].getName()+" Address : "+employee[i].getAddress()+" annual_salary : "+employee[i].getSalary()+" phone : "+employee[i].getPhone());	
		}
	}
}