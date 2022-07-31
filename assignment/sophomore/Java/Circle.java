//원을 나타내는 클래스 Circle
public class Circle{
	private double radius;
	final static double PI = 3.141592;	//3.141592로 초기화된 PI라는 이름의 정적 상수
	Circle(double radius){		//원의 반지름을 매개 변수로 받는 생성자
		this.radius = radius;
	}
	Circle(){				//매개변수가 없는 생성자. 원의 반지름을 0.0으로 설정
		radius = 0.0;
	}
	void setRadius(double radius){	//매개변수를 받아와 필드를 초기화
		this.radius = radius;
	}
	double getRadius(){		//필드를 반환
		return radius;
	}
	private double square(double radius){	//double형의 값을 제곱하여 반환하는 square() 메소드
		double s1 = radius*radius;
		return s1;
	}
	double getArea(){			//원의 면적을 계산하는 메소드
		double area = square(radius)*PI;
		return area;
	}
	double getPerimeter(){		//원의 둘레를 계산하는 메소드
		double perimeter = radius*2*PI;
		return perimeter;
	}
	public static double getPI(){		//PI값을 반환하는 정적 메소드
		return PI;
	}

	public static void main(String args[])
	{
		Circle c1 = new Circle();
		c1.square(10.0);
		getPI();
	}
}