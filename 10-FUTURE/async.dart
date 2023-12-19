void main() async {
  print("1: Starting program...");

  final name = await getName('10');
  print(name);
  // getName('10:').then(print);

  print("2: finished the program");
}

Future<String> getName(String id) async {
  return '$id Bastian';
}
