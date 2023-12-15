enum Color {
  empty(''),
  red('\u001B[31m'),
  cyan('\u001B[36m'),
  yellow('\u001B[33m');

  final String code;
  const Color(this.code);
}

void main() {
  var customPrint = CustomPrint(text: 'Print to screen');
  customPrint.write();
}

class CustomPrint {
  static const reset = '\u001B[0m';

  final String text;
  final PrintStyle? style;

  CustomPrint({required this.text, this.style});

  String _createSpace() {
    String spaces = '';
    for (int i = 0; i < style!.separation!.property; i++) {}
    return text.split('').join(spaces);
  }

  void write() {
    String str = '';
    String colorCode = style?.color?.property.code ?? '';
    bool hasSeparation = (style != null) && (style?.separation != null);
    str = hasSeparation ? _createSpace() : text;
    print('$colorCode $str $reset');
  }
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
