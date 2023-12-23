//-FIXME: // Utilizando try-catch para manejar posibles errores de manera controlada.
//-TODO: with error
/* void main() {
  String userInput = '3,14';

  try {
    double number = double.parse(userInput);

    print("The square of your number is: ${number * number}.");
  } catch (e) {
    print("You have enter an invalid number");
    print(e);
  }
} */

// --- -FIXME: Okey
/* void main() {
  String userInput = '3.14';

  try {
    double number = double.parse(userInput);

    print("The square of your number is: ${number * number}.");
  } catch (e) {
    print("You have enter an invalid number");
    print(e);
  }
} */

////////////////////////////////////////////////////////////////
void main() {
  // Using try-catch to handle potential errors gracefully.
  try {
    // Code that might cause an error
    int result = 10 ~/ 0; // Division by zero
    print("The result is $result");
  } catch (e) {
    // Handling the error
    print("An error occurred: $e");
  }
}
