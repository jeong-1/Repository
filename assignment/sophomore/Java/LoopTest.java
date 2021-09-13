public class LoopTest{
	public static void main(String[] args){
		forTest();				//for���� ����ϴ� �޼��� ȣ��
		whileTest();			//while���� ����ϴ� �޼��� ȣ��
		dowhileTest();			//do-while���� ����ϴ� �޼��� ȣ��
	}

	public static void forTest(){			//for���� ����ϴ� �޼��� ȣ��
		int sum, i;			//���� ����
		System.out.println("for�� �̿�");
		for(sum=0, i=1; i<=100; i++){	//1-100���� �� �� Ȧ���� ������
			if(i%2==0) continue;
			sum += i;
		}
		System.out.printf("\tsum=%d%n",sum);
	}

	public static void whileTest(){		//while���� ����ϴ� �޼��� ȣ��
		int sum=0, i=1;			//���� ����� �ʱ�ȭ
		System.out.println("while�� �̿�");
		while(i<=100){			//1-100���� �� �� Ȧ���� ������
			if(i%2==0){
				i++;
				continue;
			}
			sum += i;
			i++;
		}
		System.out.printf("\tsum=%d%n",sum);
	}

	public static void dowhileTest(){		//do-while���� ����ϴ� �޼��� ȣ��
		int sum=0, i=1;			//���� ����� �ʱ�ȭ
		System.out.println("dowhile�� �̿�");
		do{				//1-100���� �� �� Ȧ���� ������
			if(i%2==0){
				i++;
				continue;
			}
			sum += i;
			i++;
		}while(i<=100);
		System.out.printf("\tsum=%d%n",sum);
	}
}