function Product (name, weight, price){
	this.name = name;
	this.weight = weight;
	this.price = price;
}

Product.prototype.calculate= function (weight) {
	console.log(`${this.name} ${weight}g의 가격은 ${weight/100*this.price}원입니다.`);
};

let product = new Product("돼지고기", 100, 1690);
product.calculate(200);