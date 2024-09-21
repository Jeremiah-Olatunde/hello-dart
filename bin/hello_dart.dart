import 'package:hello_dart/hello_dart.dart' as hello_dart;

void main(List<String> arguments) {
  print('Hello world: ${hello_dart.calculate()}!');

  print('');
  print('factorials');
  print('---------------------------------');
  for(int i = 0; i < 10; i++){
    print('factorial($i) -> ${hello_dart.factorial(i)}');
  }
  print('---------------------------------');

  print('');
  print('fibonacci numbers');
  print('---------------------------------');
  for(int i = 0; i < 10; i++){
    print('fibonacci($i) -> ${hello_dart.fibonacci(i)}');
  }
  print('---------------------------------');  

  print('');
  print('identity');
  print('---------------------------------');
  print('identity(1) -> ${hello_dart.identity(1)}');
  print('identity("hello dart") -> ${hello_dart.identity('hello dart')}');
  print('identity([0, 1, 2, 3]) -> ${hello_dart.identity([0, 1, 2, 3])}');
  print('---------------------------------');  
}
