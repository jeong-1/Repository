import java.util.Scanner;

//�������� Ƚ�� ����ϱ�
class CountLetter
{
	public static void main(String args[])
	{
		//���ڿ� �Է��� ���� Scanner ��ü ����
		Scanner scan = new Scanner(System.in);

		// 52(26*2)���� ������ ������ �� �ִ� �迭 count�� �����ϰ� ����
		int[] count = new int[52];
		
		//���ڿ��� �Է¹ޱ�
		System.out.print("���ڿ��� �Է��Ͻÿ� : ");
		String buffer = scan.nextLine();
	
		//�� ���ڰ� �����ϴ� Ƚ���� ���
		for(int i=0; i< buffer.length(); i++)
		{
			char ch = buffer.charAt(i);		//string ���ڿ� �� �ε��� i �� ���ڸ� char Ÿ������ ��ȯ
			//��if(ch>='A' && ch <='Z')��� �� ���� ����
			if(Character.isUpperCase(ch))		//ch�� �빮���� ��
				count[ch-'A']++;
			//��if(ch>='a' && ch<='z')��� �� ���� ����
			else if(Character.isLowerCase(ch))	//ch�� �ҹ����� ��
				count[ch-'a'+26]++;	//'A'���� 'Z'�� 26���̹Ƿ� 'a'�� count[26]�� ���� ��
			else				//���� �����̽��� �ٸ� �����̸� �ݺ��� ����Ѵ�.
				continue;	
		}
		
		//��� ����� �ʿ��� ���� ����
		int alpha;
		// �迭�� ����� Ƚ���� ����ϴ� �ݺ�����
		for(int i=0; i<52; i++)
		{	
			//i�� 0~25�� �� alpha�� A~Z�� �ƽ�Ű ���� �ڵ��ȣ ����	
			if(i<26)
				alpha = 'A'+i;
			//i�� 26~51�� �� alpha�� a~z�� �ƽ�Ű ���� �ڵ��ȣ ����
			else
				alpha = 'A'+6+i;
				//��alpha = 'a'-26+i; �� �� ���� ����

			//count[i]���� 0�� �ƴ� �� ���ĺ��� ���� ���
			if(count[i]!=0)
			{
				System.out.println((char)alpha+": "+count[i]+"��");
			}
		}
	}
}