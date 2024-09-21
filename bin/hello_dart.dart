import 'package:hello_dart/hello_dart.dart' as hello_dart;

void main(List<String> arguments) {
  print('Hello world: ${hello_dart.calculate()}!');

  print('');
  print('factorials');
  print('---------------------------------');
  for(int i = 0; i < 10; i++){
    print('facotrial($i) -> ${hello_dart.factorial(i)}');
  }
  print('---------------------------------');
  
}
