class NotAllowedDivision implements Exception {
  final String message;
  final int providerNumber;

  const NotAllowedDivision(
      {required this.message, required this.providerNumber});

  @override
  String toString() {
    return 'Message: $message, Provider: $providerNumber';
  }
}

void main() {
  try {
    final result = parse('3', 9);
    print(result);
  } on IntegerDivisionByZeroException catch (e) {
    print("one as ocurred IntegerDivisionByZeroException $e");
  } on FormatException catch (e) {
    print('FormatException $e');
  } on NotAllowedDivision catch (e) {
    print(e);
  } finally {
    print('finally');
  }
}

int parse(String str, int a) {
  try {
    if (a >= 5) {
      throw NotAllowedDivision(
          message: 'cannot be divided by a number equal to or greater than 5',
          providerNumber: a);
    }
    return int.parse(str) ~/ a;
  } catch (_) {
    rethrow;
  }
}
