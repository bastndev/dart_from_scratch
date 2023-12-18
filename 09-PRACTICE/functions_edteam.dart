import 'dart:io';

void main() {
  int balance = 1000;
  final exitOption = 3;

  addBalance(int valor) {
    if (valor > 100) {
      return false;
    }
    balance += valor;
    return true;
  }

  withdraw(int valor) {
    if (valor > balance) {
      return false;
    }
    balance -= valor;
    return true;
  }

  while (true) {
    stdout.write(
        "You have now \$$balance | What operation should you perform?\n (1) Add\n (2) Withdraw\n (3) Exit: ");

    final option = stdin.readLineSync() ?? '';
    final input = int.tryParse(option);

    if (input == null || (input < 1 || input > exitOption)) {
      print("Please enter a valid option (1, 2, or 3).");
      continue;
    }
    if (input == exitOption) {
      print("========== bye 👋 =========");
      break;
    }

    if (input == 1) {
      stdout.write("Enter the balance you want to Add: ");

      final option = stdin.readLineSync() ?? '';
      final addAmount = int.tryParse(option);
      if (addAmount != null) {
        addBalance(addAmount);
        print("you Add $addAmount");
      } else {
        print("please enter a number");
      }
    }
    if (input == 2) {
      stdout.write("How much balance do you want withdraw: ");

      final option = stdin.readLineSync() ?? '';
      final subtractAmount = int.tryParse(option);
      if (subtractAmount != null && subtractAmount <= balance) {
        withdraw(subtractAmount);
        print("you Subtract $subtractAmount");
      } else {
        print("Insufficient balance to withdraw");
      }
    }
  }
}
