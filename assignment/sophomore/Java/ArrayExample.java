import java.util.*;
class ArrayExample{
	public static void main(String args[]){
		//���ڿ����� ArrayList �� list ������ �����ϰ� ��ü�� �����Ͻÿ�.
		ArrayList<String> list = new ArrayList<String>();
		//����Ʈ�� �����͸� �߰��մϴ�.
		list.add("��");
	     	list.add("����");
		list.add("�䳢");
		list.add("��");
		int num = list.size();
		//����Ʈ�� �ִ� �������� ����ŭ �ݺ����� ���鼭 �����͸� �о� ����Ͻÿ�.
		for(int cnt = 0; cnt < num; cnt++){
			String str = list.get(cnt);
			System.out.println(str);
		}
	}
}
