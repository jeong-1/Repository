class AddExample{
	public static void main(String args[]){
		//변수 선언과 0으로 초기화
		int num=0;
		//args 배열의 항목 값을 순서대로 변수 num에 더한다.
		for(String str : args)
			num += Integer.parseInt(str);
		//결과 출력
		System.out.println("결과는 " + num + "입니다");
	}
}