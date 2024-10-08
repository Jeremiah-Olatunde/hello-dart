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