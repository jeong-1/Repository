import java.util.Scanner;
class CountChar{
	public static void main(String args[]){
		Scanner scan = new Scanner(System.in);
		char comp = 'n';
		int iCount =0, i=0;
		String str;

		System.out.print("���ڿ��� �Է��ϼ���: ");
		str = scan.nextLine();
		
		int cnt = str.length();
		while(cnt>0){
			if(str.charAt(i)==comp){
				iCount++;
			}
			i++;
			cnt--;
		}
		System.out.println("����"+comp+"�� "+iCount+"�� �߻���");
	}
}
