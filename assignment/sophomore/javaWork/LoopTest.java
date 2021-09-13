public class LoopTest{
	public static void main(String[] args){
		forTest();				//for문을 사용하는 메서드 호출
		whileTest();			//while문을 사용하는 메서드 호출
		dowhileTest();			//do-while문을 사용하는 메서드 호출
	}

	public static void forTest(){			//for문을 사용하는 메서드 호출
		int sum, i;			//변수 선언
		System.out.println("for문 이용");
		for(sum=0, i=1; i<=100; i++){	//1-100까지 수 중 홀수만 더해줌
			if(i%2==0) continue;
			sum += i;
		}
		System.out.printf("\tsum=%d%n",sum);
	}

	public static void whileTest(){		//while문을 사용하는 메서드 호출
		int sum=0, i=1;			//변수 선언과 초기화
		System.out.println("while문 이용");
		while(i<=100){			//1-100까지 수 중 홀수만 더해줌
			if(i%2==0){
				i++;
				continue;
			}
			sum += i;
			i++;
		}
		System.out.printf("\tsum=%d%n",sum);
	}

	public static void dowhileTest(){		//do-while문을 사용하는 메서드 호출
		int sum=0, i=1;			//변수 선언과 초기화
		System.out.println("dowhile문 이용");
		do{				//1-100까지 수 중 홀수만 더해줌
			if(i%2==0){
				i++;
				continue;
			}
			sum += i;
			i++;
		}while(i<=100);
		System.out.printf("\tsum=%d%n",sum);
	}
}