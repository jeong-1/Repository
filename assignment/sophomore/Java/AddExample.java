class AddExample{
	public static void main(String args[]){
		//���� ����� 0���� �ʱ�ȭ
		int num=0;
		//args �迭�� �׸� ���� ������� ���� num�� ���Ѵ�.
		for(String str : args)
			num += Integer.parseInt(str);
		//��� ���
		System.out.println("����� " + num + "�Դϴ�");
	}
}