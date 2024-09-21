
int calculate() {
  return 6 * 7;
}

int factorial(int n){
  return n == 0 ? 1 : n * factorial(n - 1);
}

int fibonacci(int n){
  if(n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

T identity<T>(T x){
  return x;
}

class MyClass {
  int counter = 0;

  void hello(){ print('hello'); }
  void world(){ print('world'); }
  void lorem(){ print('lorem'); }
  void ipsum(){ print('ipsum'); }
}

void main(){}