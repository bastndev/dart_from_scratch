import 'dart:io';

void main() {
  final balance = 1000;

  while (true) {
    stdout.write("What operation should you perform?\n (1)add:\n (2)Withdraw:\n (3)Exit: ");
    final input = stdin.readLineSync() ?? '';

    if(input ==  '3'){
      print("========== bye 👋 =========");
      break;
    }
  }
}
