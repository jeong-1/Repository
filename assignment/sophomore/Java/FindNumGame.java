//FindNumGame.java
//1���� 100������ �߻��� ������ ���ڸ� 5�� �ȿ� ���ߴ� ����
import java.util.Scanner;
// �����ѹ� Ŭ������ import
import java.util.Random;

public class FindNumGame{
	public static void main(String[] args){
		// TODO Auto-generated method stub
		//���� �б� ���� Scanner ��ü ����
		Scanner scan = new Scanner(System.in);
		//Random ��ü ����
		Random ranGen = new Random();

		//�������� ����
		int ranNum, answer, count=1;
		// 0 ���� 99���� ������ �����ѹ��� �����ǹǷ� +1�� �ؼ� 1���� 100������ ���� �ѹ��� ������
		ranNum=ranGen.nextInt(100)+1;

		while(count<6){
			//�� �Է� �ޱ�
			System.out.print("���� ���� ���߱� - ���ڸ� �Է��ϼ���(1~100): ");
			answer = scan.nextInt();
			//�Է°�(��)�� ���� ���ڰ� ���� ��� �������� ��� �� �ݺ����� ��������
			if(answer==ranNum){
				System.out.println(count+"������ ������ ���߾����ϴ�.");
				break;
			}
			//�Է°��� ���� ���ں��� Ŭ ���
			else if(answer>ranNum){
				System.out.println("�Է°��� �ʹ� Ů�ϴ�.");
				count++;
			}
			//�Է°��� ���� ���ں��� ���� ���
			else{
				System.out.println("�Է°��� �ʹ� �۽��ϴ�.");
				count++;
			}
		}
		//5�� �ȿ� ������ ������ ������ ��� ������ ������ �������� ���
		if(count==6)
			System.out.println("������ 5�� �õ��� ������ ���߽��ϴ�.");
	}
}