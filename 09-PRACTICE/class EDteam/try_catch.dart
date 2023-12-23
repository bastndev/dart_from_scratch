void main() {
  String userInput = '3,14';

  try {
    double number = double.parse(userInput);

    print("The square of your number is: ${number * number}.");
  } catch (e) {
    print("You have enter an invalid number");
    print(e);
  }
}
