//���ڿ��� �Է� �ް� ��ū �и��Ͽ� ����ϴ� ���α׷�
import java.util.Arrays;
import java.util.StringTokenizer;

class StringTokenizerExample1{
	public static void main (String args[]) {
		String str = Arrays.toString(args);		//���ڿ� �迭�� args�� ���ڿ��� �ٲپ���
		
		//���� '[', ']'�� ��� �������� �ٲپ���
		str = str.replace('[', ' ');
		str = str.replace(']', ' ');

		StringTokenizer stok = new StringTokenizer(str, ",");	//���ڿ� str�κ��� ��ū�� ����
		while(stok.hasMoreTokens()){		//��ū�� ���ٸ� while���� ��������
			String word = stok.nextToken();	//stok�� �����ϴ� ��ū�� �ϳ��� ����
			System.out.println(word);		//��ū ���
		}
	}
}
