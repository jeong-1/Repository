//GamePlay.java
//ö���� ������ ���������� ����
import java.util.Scanner;

class GamePlay
{
	public static void main(String args[])
	{
		//�Է°��� �б����� Scanner ��ü ����
		Scanner scan = new Scanner(System.in);
		System.out.println("ö���� ������ ���������� ���� (����, ����, �� �� �ϳ��� �Է��ϼ���.)");

		//ö�� �� �Է� �ޱ�
		System.out.print("ö��: ");
		String p1Choice = scan.nextLine();
		//���� �� �Է� �ޱ�
		System.out.print("����: ");
		String p2Choice = scan.nextLine();

		//�������� ����
		int x, y;
		//ö���� ���� ����, ��, ������ �� ���� x�� ������ �� ����. ����, ��, ���� ������� ���� �۾������� x�� �ο�
		if(p1Choice.equals("����"))
			x = 1;
		else if(p1Choice.equals("��"))
			x = 0;
		else if(p1Choice.equals("����"))
			x = -1;
		else				//���� �Է°��� ����, ��, ������ �ƴ϶�� x�� 2 ����
			x=2;
		//������ ���� ����, ��, ������ �� ���� y�� ������ �� ����. ����, ��, ���� ������� ���� �۾������� y�� �ο�
		if(p2Choice.equals("����"))
			y = 1;
		else if(p2Choice.equals("��"))
			y = 0;
		else if(p2Choice.equals("����"))
			y = -1;
		else				//���� �Է°��� ����, ��, ������ �ƴ϶�� y�� 2 ����
			y=2;
		
		//���� x, y ���� ũ��� ������ �� ������ ������ �� �� �� ũ�� �����Ǿ������Ƿ� 
		//�� �÷��̾ ����, �ٸ� �÷��̾ ������ ���� ��, ������ �� �÷��̾��� ���� �� ũ���� �ٲپ���
		if((x==1&&y==-1)||(x==-1&&y==1)){
			x *= -1;
			y *= -1;
		}

		//x�� y���� ���Ͽ� �� ū ���� ���� ����� �¸������� ���
		if(x>1 || y>1)			//ö���� ���� �� �ϳ��� ����� �Էµ��� ���� ��찡 �ִٸ� �߸� �Է��Ͽ����� ���
			System.out.println("�߸� �Է��Ͽ����ϴ�.");
		else if(x>y)
			System.out.println("ö�� �¸�");
		else if(y>x)
			System.out.println("���� �¸�");
		else
			System.out.println("���º��Դϴ�.");
	}
}