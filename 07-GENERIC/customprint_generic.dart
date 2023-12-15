enum Color {
  empty(''),
  red('\u001B[31m'),
  cyan('\u001B[36m'),
  yellow('\u001B[33m');

  final String code;
  const Color(this.code);
}

void main() {}

class CustomPrint {
  final String text;
  final PrintStyle? style;

  CustomPrint(this.text, {this.style});
}

class PrintStyle {
  final PrintAttribute<Color>? color;
  final PrintAttribute<int>? separation;

  PrintStyle({this.color, this.separation});
}

class PrintAttribute<T> {
  final T property;
  PrintAttribute._(this.property);

  static PrintAttribute<T> changeProperty<T>(T property) =>
      PrintAttribute._(property);
}
