
import 'dart:math';

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

List<String> toGreetings(Map<String, int> person) {
  List<String> greetings = [];
  for (var MapEntry(key: name, :value) in person.entries) {
    greetings.add('hey I am $name. I am $value.');
  }

  return greetings;
}

String joinPair(({String name, int age}) pair, [String? join]) {
  var (:name, :age) = pair;
  return '$name${join ?? '->'}$age';
}

class NonPrimaryColorError {}

class ColorRgb {
  final int red;
  final int blue;
  final int green;

  const ColorRgb(this.red, this.blue, this.green);
}

String colorRgbToString(ColorRgb color) {
  return switch (color) {
    ColorRgb(red: 255, blue: 000, green: 000) => "red",
    ColorRgb(red: 000, blue: 255, green: 000) => "blue",
    ColorRgb(red: 000, blue: 000, green: 255) => "green",
    ColorRgb(red: int _, blue: int _, green: int _) =>
      throw NonPrimaryColorError,
  };
}


typedef Point3D = ({double x, double y, double z});

String describePointLocation(Point3D point){
  return switch(point){
    (x: 0, y: 0, z: 0) => "origin",
    
    (x: _, y: 0, z: 0) => "x axis",
    (x: 0, y: _, z: 0) => "y axis",
    (x: 0, y: 0, z: _) => "z axis",

    (x: 0, y: _, z: _) => "x plane",
    (x: _, y: 0, z: _) => "y plane",
    (x: _, y: _, z: 0) => "z plane",

    (x: double x, y: double y, z: double z) when x < 1 && y < 1 && z < 1  => "within unit sphere",

    _ => "somewhere in 3 dimensional space"
  };
}

sealed class Option<T> {}

class Some<T> implements Option<T> {
  final T value;
  const Some(this.value);
  @override
  String toString() => 'Some($value)';
}

class None<T> implements Option<T> {
  @override
  String toString() => 'None';
}

Option<U> mapOption<T, U>(Option<T> o, U Function(T) f) {
  return switch (o) {
    Some(value: T v) => Some(f(v)),
    None() => None(),
  };
}

Option<T> fiftyFifty<T>(T value){
  return Random().nextBool() ? Some(value) : None();
}

Option<int> safeDiv(int dividend, int divisor){
  return switch(divisor){
    0 => None(),
    _ => Some(dividend ~/ divisor),
  };
}

Option<T> safeHead<T>(List<T> xs){
  return switch(xs){
    [] => None(),
    [T head, ..._] => Some(head),
  };
}

sealed class Result<T, E> {}

class Ok<T, E> implements Result<T, E> {
  final T value;
  const Ok(this.value);
}

class Err<T, E> implements Result<T, E> {
  final E error;
  const Err(this.error);
}

Result<U, E> resultMap<T, U, E>(Result<T, E> r, U Function(T) f){
  return switch(r){
    Ok(value: T v) => Ok(f(v)),
    Err(error: E e) => Err(e),
  };
}