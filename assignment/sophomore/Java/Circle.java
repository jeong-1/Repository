//���� ��Ÿ���� Ŭ���� Circle
public class Circle{
	private double radius;
	final static double PI = 3.141592;	//3.141592�� �ʱ�ȭ�� PI��� �̸��� ���� ���
	Circle(double radius){		//���� �������� �Ű� ������ �޴� ������
		this.radius = radius;
	}
	Circle(){				//�Ű������� ���� ������. ���� �������� 0.0���� ����
		radius = 0.0;
	}
	void setRadius(double radius){	//�Ű������� �޾ƿ� �ʵ带 �ʱ�ȭ
		this.radius = radius;
	}
	double getRadius(){		//�ʵ带 ��ȯ
		return radius;
	}
	private double square(double radius){	//double���� ���� �����Ͽ� ��ȯ�ϴ� square() �޼ҵ�
		double s1 = radius*radius;
		return s1;
	}
	double getArea(){			//���� ������ ����ϴ� �޼ҵ�
		double area = square(radius)*PI;
		return area;
	}
	double getPerimeter(){		//���� �ѷ��� ����ϴ� �޼ҵ�
		double perimeter = radius*2*PI;
		return perimeter;
	}
	public static double getPI(){		//PI���� ��ȯ�ϴ� ���� �޼ҵ�
		return PI;
	}

	public static void main(String args[])
	{
		Circle c1 = new Circle();
		c1.square(10.0);
		getPI();
	}
}