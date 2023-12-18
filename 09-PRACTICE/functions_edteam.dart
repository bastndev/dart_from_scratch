import 'dart:io';

void main() {
  int balance = 1000;

  addBalance(int valor) {
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
    if (input == 3) {
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
      }else{
        print("please enter a number");
      }
    }
  }
}
