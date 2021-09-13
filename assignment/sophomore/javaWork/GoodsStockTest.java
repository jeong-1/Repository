class GoodsStockTest{
	public static void main(String args[]){
		GoodsStock obj = new GoodsStock("316546", 30);
		obj.addStock(30);
		System.out.println(obj.stockNum);
		int total = obj.subtrackStock(20);
		System.out.println(obj.stockNum);
		System.out.println(total);
	}
}
		
		