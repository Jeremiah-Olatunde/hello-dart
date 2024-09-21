import 'package:hello_dart/hello_dart.dart' as hello_dart;

void main(List<String> arguments) {
  print('Hello world: ${hello_dart.calculate()}!');

  print('');
  print('factorials');
  print('---------------------------------');
  for (int i = 0; i < 10; i++) {
    print('factorial($i) -> ${hello_dart.factorial(i)}');
  }
  print('---------------------------------');

  print('');
  print('fibonacci numbers');
  print('---------------------------------');
  for (int i = 0; i < 10; i++) {
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

  print('');
  print('cascading');
  print('---------------------------------');
  hello_dart.MyClass x = hello_dart.MyClass();
  x
    ..hello()
    ..world()
    ..lorem()
    ..ipsum();

  print(x
    ..counter += 2
    ..counter += 3);
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
  } catch (error) {
    print('unknown error');
  }
  print('---------------------------------');

  print('');
  print('optional params');
  print('---------------------------------');
  print(hello_dart.joinWithCommas(1));
  print(hello_dart.joinWithCommas(1, 2));
  print(hello_dart.joinWithCommas(1, 2, 3));
  print(hello_dart.joinWithCommas(1, 2, 3, 4));
  print(hello_dart.joinWithCommas(1, 2, 3, 4, 5));
  print('---------------------------------');

  print('');
  print('constructor');
  print('---------------------------------');
  hello_dart.MyClassV2(anInt: 0, aString: 'lorem ipsum', aDouble: 42.0);
  hello_dart.MyClassV3(0, 'lorem ipsum', 42.0);
  print('---------------------------------');

  print('');
  print('constructor initializer');
  print('---------------------------------');
  hello_dart.FirstTwoLetters ftl = hello_dart.FirstTwoLetters('he');
  print(ftl.letterOne);
  print(ftl.letterTwo);
  print('---------------------------------');

  print('');
  print('named constructors');
  print('---------------------------------');
  hello_dart.Point3D unitShpere = hello_dart.Point3D(x: 1, y: 1, z: 1);
  hello_dart.Point3D origin = hello_dart.Point3D.orgin();
  print(unitShpere);
  print(origin);

  print('');

  hello_dart.Color red = hello_dart.Color(255, 1, 1);
  hello_dart.Color black = hello_dart.Color.black();
  print(red);
  print(black);
  print('---------------------------------');

  print('');
  print('redirecting constructors');
  print('---------------------------------');
  print(hello_dart.Color.red());
  print(hello_dart.Color.green());
  print(hello_dart.Color.blue());
  print('---------------------------------');
}