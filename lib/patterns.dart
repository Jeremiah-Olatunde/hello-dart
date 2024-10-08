class EmptyListError {}

T head<T>(List<T> xs) {
  if (xs case [T head, ..._]) {
    return head;
  } else {
    throw EmptyListError;
  }
}

T headV2<T>(List<T> xs) {
  return switch (xs) {
    [] => throw EmptyListError,
    [T head, ...List<T> _] => head
  };
}

(U, T) swap<T, U>((T, U) pair) {
  var (T t, U u) = pair;
  return (u, t);
}

List<String> toGreetings(Map<String, int> person){
  List<String> greetings = [];
  for(var MapEntry(key: name, :value) in person.entries){
    greetings.add('hey I am $name. I am $value.');
  }

  return greetings;
}

String joinPair(({ String name, int age }) pair, [String? join]){
  var (:name, :age) = pair;
  return '$name${join ?? '->'}$age';
}