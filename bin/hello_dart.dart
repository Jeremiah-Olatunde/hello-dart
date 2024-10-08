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

  print('');
  print('records');
  print('---------------------------------');
  (int x, int y, int z) point = (0, 1, 2);
  ({int x, int y, int z}) namedPoint = (z: 2, x: 0, y: 1);
  ({int x, int y, int z}) namedPoint2 = (x: 0, y: 1, z: 2);
  print(point);
  print(namedPoint);
  print(point == namedPoint);
  print(namedPoint2 == namedPoint);
  print('---------------------------------');

  print('');
  print('records');
  print('---------------------------------');
  print([for (int i = 0; i < 20; i += 2) i]);
  print([
    for (int i = 0; i < 20; i++)
      if (i % 2 == 0) i
  ]);
  print('---------------------------------');

  print('');
  print('toRadixString');
  print('---------------------------------');
  int numberOf1InBinary =
      89.toRadixString(2).split('').fold(0, (p, v) => p + (v == '1' ? 1 : 0));
  print(numberOf1InBinary);
  print('---------------------------------');

  print('');
  print('regex');
  print('---------------------------------');
  String target = 
      '"That\'s the password: \'PASSWORD 123\'!", cried the Special Agent.\nSo I fled.';

  RegExp regex = RegExp(r"\w+('\w)*");
  Iterable<RegExpMatch> matches = regex.allMatches(target.toLowerCase());
  List<String> processed = matches.map((match) => match.group(0)!).toList();

  print(processed);
  print('---------------------------------');


  print('');
  print('---------------------------------');
  var b = [0].map((a) => multiples(a, 1));
  print(b);
  print(b.expand((x) => x));
  print(b.expand((x) => x).toSet());
  var r = b.expand((x) => x).toSet().fold(0, (p, v) => p + v);
  print(r);
  print('---------------------------------');
}

List<int> multiples(int n, int max) {
  if(n == 0) return [];
  return [for (int i = n; i < max; i += n) i];
}
