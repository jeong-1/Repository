//ComputerArea.java
//���� ������ ����ϴ� ���α׷�
import java.util.Scanner;
public class ComputerArea{
	public static void main(String[] args){
		//�������� ����
		final double PI =3.14159;
		double radius, area;

		//�������� �б� ���� Scanner ��ü ����
		Scanner scan = new Scanner(System.in);
		
		//���� ������ �Է¹ޱ�
		System.out.print("���� �������� �Է��ϼ���: ");
		radius = scan.nextDouble();
		
		//���� ���� ����ϱ�
		area = radius*radius*PI;

		//���� �������� ���� ���
		System.out.println("���� �������� "+radius+"�̴�.");
		System.out.println("���� ������ "+area+"�̴�.");
	}
}