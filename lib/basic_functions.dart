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

int fibonnaci(int n){
	if(n == 0 || n == 1) return 1;
	return fibonnaci(n - 1) + fibonnaci(n - 2);
}

int min(int a, int b) => a < b ? a : b;

int max(int a, int b) => b < a ? a : b;

(int min, int max) orderedPair(int m, int n){
	return m < n ? (m, n) : (n, m);
}

int gcd(int a, int b){
	if(a == 0) return b;
	if(b == 0) return a;

	var (min, max) = orderedPair(a, b);
	return gcd(min, max % min);
}