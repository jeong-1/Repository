function power(x,y){
	let output = 1;
	y = y || 2;
	for(let i=0; i<y; i++)
		output *= x;
	console.log(output);

	//y = y || 2;
	//console.log(Math.pow(x,y));
}

power(8);
power(2,3);