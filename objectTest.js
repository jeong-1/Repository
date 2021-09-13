
//오류코드
let number = 273;
number.print = function () {
	console.log(this);
};
number.print();


/*
//1번 방법
let number = new Number(273);
number.print = function () {
	console.log(this);
};
number.print();
//결과 화면 => [Number: 273] { print: [Function (anonymous)] }
*/
/*
//2번 방법
let number = 273;
Number.prototype.print = function () {
	console.log(this);
}
number.print();
*/
//결과 화면 => [Number: 273]