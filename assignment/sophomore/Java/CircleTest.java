public class CircleTest
{
	public static void main(String[] args)
	{
		//��ü ����. �����ڸ� ȣ���� �� �������� 5.0���� ��������
		Circle c1 = new Circle(5.0);
		//���� ������ �ѷ� ���ϱ�
		System.out.println("���� ���� : "+c1.getArea());
		System.out.println("���� �ѷ� : "+c1.getPerimeter());

		//Circle.radius = 10.0;	//radius����
		//Circle.square(20.6);	//���� �޼ҵ��� square() ȣ��
	}
}