let array = [273, 52, 103, 57, 271];

let min = Number.MAX_VALUE;
let max = Number.MIN_VALUE;

for(let ele of array){
	if(ele < min){
		min = ele;
		console.log(`작은 수 ${min}`);
	}
	if(ele >max){
		max = ele;
		console.log(`큰 수 ${max}`);
	}
}
console.log(`가장 큰 수 ${max}`);
console.log(`가장 작은 수 ${min}`);
