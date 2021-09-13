function test(){
	try{
		let number = 20;
		number();
	}catch(e){
		console.log('C');
		return;
		console.log('D');
	}finally{
		//const array = new Array[-2000];
		console.log('E');
	}
}

test();