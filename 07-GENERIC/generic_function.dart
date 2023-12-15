void main() {
  method('Hello');
  method(23);
  method(true);
  method([1, 2, 3, 4, 5, 6, 7]);
  method({'': ''});
  method(2.4);
}

void method<K>([K? type]) {
  print("I'm of type ${type.runtimeType}");
}
