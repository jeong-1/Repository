//�������� ���������� �����ϴ� ���α׷�
import java.util.Scanner;
class TestEmployee
{
	public static void main(String args[]){
		//�Է��� ���� Scanner ��ü ����
		Scanner scan = new Scanner(System.in);
		
		//�迭 ���� ������ �����԰� ���ÿ� ũ�Ⱑ 2�� �迭�� ����
		Employee[] employee = new Employee[2];

		//���� ����
		String n, a;
		int s, p;

		//����ڷκ��� �����͸� �޾� �迭�� �߰�
		for(int i=0; i<employee.length; i++){
			//Employ ��ü ����
			employee[i] = new Employee();
			//������ �Է�
			System.out.print("�̸��� �Է��ϼ��� [������ȣ"+(i+1)+"] :");
			n = scan.nextLine();
			employee[i].setName(n);
			System.out.print("�ּҸ� �Է��ϼ��� [������ȣ"+(i+1)+"] :");
			a = scan.nextLine();
			employee[i].setAddress(a);
			System.out.print("������ �Է��ϼ��� [������ȣ"+(i+1)+"] :");
			s = scan.nextInt();
			employee[i].setSalary(s);
			System.out.print("��ȭ��ȣ�� �Է��ϼ��� [������ȣ"+(i+1)+"] :");
			p = scan.nextInt();
			employee[i].setPhone(p);
			//nextInt()�� ����� ���� ó��
			scan.nextLine();
		}

		//�迭�� ������ ������ �� �ִ� �޴� �ý���
		System.out.println("�����Ͻðڽ��ϱ�? (������ ���Ͻø� y�� �����ּ���.)");
		//������ ���� ��� y�� �Է�
		char ch = scan.next().charAt(0);
		//y�� �Է¹޾����� ������ �迭�� ���� ����
		if(ch=='y'){
			System.out.println("�����ϰ� ���� ������ȣ�� �Է��ϼ��� :");
			int num = scan.nextInt();

			//nextInt()�� ����� ���� ó��
			scan.nextLine();
			//������ �Է�
			System.out.print("�̸��� �Է��ϼ��� :");
			n = scan.nextLine();
			employee[num-1].setName(n);
			System.out.print("�ּҸ� �Է��ϼ��� :");
			a = scan.nextLine();
			employee[num-1].setAddress(a);
			System.out.print("������ �Է��ϼ��� :");
			s = scan.nextInt();
			employee[num-1].setSalary(s);
			System.out.print("��ȭ��ȣ�� �Է��ϼ��� :");
			p = scan.nextInt();
			employee[num-1].setPhone(p);
		}

		//�迭�� �Էµ� ��� ������ ���
		for(int i=0; i<employee.length; i++){
			//employee[i].toString(String n, String a, int s, int p);
			System.out.println("������ȣ ["+(i+1)+"]	name : "+employee[i].getName()+" Address : "+employee[i].getAddress()+" annual_salary : "+employee[i].getSalary()+" phone : "+employee[i].getPhone());	
		}
	}
}