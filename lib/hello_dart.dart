int calculate() {
  return 6 * 7;
}

int factorial(int n) {
  return n == 0 ? 1 : n * factorial(n - 1);
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

T identity<T>(T x) {
  return x;
}

class MyClass {
  int counter = 0;

  void hello() {
    print('hello');
  }

  void world() {
    print('world');
  }

  void lorem() {
    print('lorem');
  }

  void ipsum() {
    print('ipsum');
  }
}

class InvalidPriceException {}

class ShoppingCart {
  String currency;
  List<double> _prices = [];

  ShoppingCart(this.currency);

  // TODO: Add a "total" getter here:
  double get total {
    return _prices.reduce((a, b) => a + b);
  }

  // TODO: Add a "prices" setter here:
  set prices(List<double> value) {
    if (value.any((x) => x < 0)) {
      throw InvalidPriceException();
    }

    _prices = value;
  }

  String display() {
    String joined = _prices.fold("", (p, v) => '$p, $currency$v');
    return 'items([$joined])';
  }
}

String joinWithCommas(int u, [int? v, int? w, int? x, int? y, int? z]) {
  String result = '$u';
  if (v != null) result += ',$v';
  if (w != null) result += ',$w';
  if (x != null) result += ',$x';
  if (y != null) result += ',$y';
  if (z != null) result += ',$z';
  return result;
}

class MyDataObject {
  final int anInt;
  final String aString;
  final double aDouble;

  MyDataObject({
    this.anInt = 1,
    this.aString = 'Old!',
    this.aDouble = 2.0,
  });

  MyDataObject copyWith({int? newInt, String? newString, double? newDouble}) {
    return MyDataObject(
      anInt: newInt ?? anInt,
      aString: newString ?? aString,
      aDouble: newDouble ?? aDouble,
    );
  }
}

class MyClassV2 {
  final int anInt;
  final String aString;
  final double aDouble;

  MyClassV2(
      {required this.anInt, required this.aString, required this.aDouble});
}

class MyClassV3 {
  final int anInt;
  final String aString;
  final double aDouble;

  MyClassV3(this.anInt, this.aString, this.aDouble);
}

class FirstTwoLetters {
  final String letterOne;
  final String letterTwo;

  FirstTwoLetters(String word)
      : assert(1 < word.length),
        letterOne = word[0],
        letterTwo = word[1];
}

class Point3D {
  final int x, y, z;

  Point3D({required this.x, required this.y, required this.z});
  Point3D.orgin()
      : x = 0,
        y = 0,
        z = 0;

  @override
  String toString() {
    return 'Point($x, $y, $z)';
  }
}

class Color {
  int red, green, blue;

  Color(this.red, this.green, this.blue);
  Color.black()
      : red = 0,
        green = 0,
        blue = 0;

  @override
  String toString() {
    return 'rgb($red, $green, $blue)';
  }
}

class IntegerHolder {
  IntegerHolder();

  // Implement this factory constructor.
  factory IntegerHolder.fromList(List<int> list) {
    return switch (list) {
      [int a] => IntegerSingle(a),
      [int a, int b] => IntegerDouble(a, b),
      [int a, int b, int c] => IntegerTriple(a, b, c),
      _ => throw Error()
    };
  }
}

class IntegerSingle extends IntegerHolder {
  final int a;

  IntegerSingle(this.a);
}

class IntegerDouble extends IntegerHolder {
  final int a;
  final int b;

  IntegerDouble(this.a, this.b);
}

class IntegerTriple extends IntegerHolder {
  final int a;
  final int b;
  final int c;

  IntegerTriple(this.a, this.b, this.c);
}
