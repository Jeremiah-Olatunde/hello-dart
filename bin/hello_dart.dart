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


  print('cascading');
  print('---------------------------------');
  hello_dart.MyClass x = hello_dart.MyClass();
  x..hello()..world()..lorem()..ipsum();

  print(x..counter += 2..counter += 3);
  print(x.counter);
  print('---------------------------------');


  print('');
  print('accessors');
  print('---------------------------------');
  final hello_dart.ShoppingCart cart = hello_dart.ShoppingCart('₦');
  cart.prices = [0, 1, 2, 3, 4];

  print(cart.display());

  try {
    cart.prices = [0, 1, -1, 2, 3];
  } on hello_dart.InvalidPriceException {
    print('invalid price detected');
  } catch(error) {
    print('unknown error');
  }
  
  print('---------------------------------');
}
