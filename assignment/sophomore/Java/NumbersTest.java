class NumbersTest{
	public static void main(String args[]){
		//Number num[] = new int;
		//num[5] = {10,20,30,40,50};
		int array[] = {10,20,30,40,50};
		Numbers obj = new Numbers(array);
		System.out.println("������ ���� "+obj.getTotal());
		System.out.println("������ ����� "+obj.getAverage());
	}
}