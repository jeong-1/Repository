//���ڵ�θ� �̷���� ������ copy�� �ִ�  ���α׷�
import java.io.*;

public class Copychar {
	public static void main(String args[]) {
		FileReader reader = null;
		FileWriter writer = null;
		try {
			//������ ���� �κ�	
			reader = new FileReader(args[0]);	
			writer = new FileWriter(args[1]);
			//���� ����
			int data = 0;

			//������ �о �ٸ� ���Ͽ� ���ڸ� ���� ó��
			while(true){	
				data = reader.read();	//���� �о����
				if(data == -1)	//data�� -1�̸� ����
					break;
				writer.write((char) data);	//�о�� �����͸� ���Ͽ� ����
			}
		}
		catch(FileNotFoundException fnfe) {	//FileReader�� �����ڰ� �߻���Ű�� �ͼ��� ó��
			System.out.println("������ �������� �ʽ��ϴ�.");
		}
		catch(IOException ioe) {	//FileReader�� read, close �Ǵ� FileWriter�� �߻���Ű�� �ͼ��� ó��
			System.out.println("������ �аų� ����� �� �����ϴ�.");
		}
		finally {
			try {
				//������ �ݴ� �޼ҵ�
				reader.close();
				writer.close();
			}
			catch (Exception e) {
			}
		}
	}
}
