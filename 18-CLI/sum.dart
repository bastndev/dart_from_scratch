void main(List<String> args) {
  try {
    final a = num.parse(args.first);
    final b = num.parse(args[1]);

    print("The sum is: ${a + b}");
  } catch (e) {
    print(e);
  }
}
