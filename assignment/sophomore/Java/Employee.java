class Employee
{
	private String name;		//�����̸�
	private String address;		//�ּ�
	private int salary;			//����
	private int phone;			//��ȭ��ȣ

	//������ �ʵ忡 ���Ͽ� getter�� setter �޼ҵ带 �ۼ�
	public String getName()
	{
		return name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
	
	public String getAddress()
	{
		return address;
	}
	public void setAddress(String address)
	{
		this.address = address;
	}

	public int getSalary()
	{
		return salary;
	}
	public void setSalary(int salary)
	{
		this.salary = salary;
	}

	public int getPhone()
	{
		return phone;
	}
	public void setPhone(int phone)
	{
		this.phone = phone;
	}

	//�����͸� ��ȯ�ϴ� toString() �޼ҵ带 �ۼ�
	public String toString(){
		return "name : "+name+" Address : "+address+" annual_salary : "+salary+" phone : "+phone;
	}
}