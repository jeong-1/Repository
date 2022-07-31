class Employee
{
	private String name;		//직원이름
	private String address;		//주소
	private int salary;			//연봉
	private int phone;			//전화번호

	//각각의 필드에 대하여 getter과 setter 메소드를 작성
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

	//데이터를 반환하는 toString() 메소드를 작성
	public String toString(){
		return "name : "+name+" Address : "+address+" annual_salary : "+salary+" phone : "+phone;
	}
}