int add(int addend, int auguend){
	return addend + auguend;
}

int sub(int subtrahend, int minuend){
	return subtrahend - minuend;
}

int mul(int multiplicand, int multiplier){
	return multiplicand * multiplier;
}

int div(int dividend, int divisor){
	return dividend ~/ divisor;
}

int factorial(int n){
	if(n == 0) return 1;
	return n * factorial(n - 1);
}