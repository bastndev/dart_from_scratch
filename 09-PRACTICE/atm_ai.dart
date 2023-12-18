import 'dart:io';

void main() {
  final initialBalance = 1000;
  int balance = initialBalance;

  while (true) {
    stdout.write(
        "You have now \$$balance | What operation should you perform?\n (1)add:\n (2)Withdraw:\n (3)Exit: ");
    final option = stdin.readLineSync() ?? '';
    final input = int.tryParse(option);

    if (input == 3) {
      print("========== bye 👋 =========");
      break;
    } else if (input == 2) {
      stdout.write("How much do you want to withdraw: ");
      final option2 = stdin.readLineSync() ?? '';
      final input2 = int.tryParse(option2);

      if (input2 == null || input2 > balance) {
        print("You do not have enough balance :(");
      } else {
        balance -= input2;
        print("Your balance is now \$$balance");
      }
    } else if (input == 1) {
      stdout.write("How much do you want Add: ");
      final option3 = stdin.readLineSync() ?? '';
      final input3 = int.tryParse(option3);

      if (input3 == null || input3 > balance) {
        print("You do not have enough balance :(");
      } else {
        balance += input3;
        print("Your balance is now \$$balance");
      }
    }
  }
}
