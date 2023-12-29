import 'package:args/args.dart';

void main(List<String> args) {
  final addAll = 'addAll';
  final argParse = ArgParser()..addFlag(addAll, abbr: 'a');
  final argResults = argParse.parse(args);
  final arguments = argResults.rest;
  bool shouldAddAll = argResults[addAll] as bool;
  if (shouldAddAll) {
    final total = arguments.fold(0.0, (previousValue, element) {
      final value = num.tryParse(element);

      return previousValue + (value ?? 0);
    });
    print(total);

    return;
  }

  try {
    final a = num.parse(args.first);
    final b = num.parse(args[1]);

    print("The sum is: ${a + b}");
  } catch (e) {
    print(e);
  }
}
