public class CircleTest
{
	public static void main(String[] args)
	{
		//객체 생성. 생성자를 호출할 때 반지름을 5.0으로 설정해줌
		Circle c1 = new Circle(5.0);
		//원의 면적과 둘레 구하기
		System.out.println("원의 넓이 : "+c1.getArea());
		System.out.println("원의 둘레 : "+c1.getPerimeter());

		//Circle.radius = 10.0;	//radius참조
		//Circle.square(20.6);	//전용 메소드인 square() 호출
	}
}