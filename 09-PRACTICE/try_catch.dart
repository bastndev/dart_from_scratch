//-FIXME: // "Using try-catch to handle potential errors in a controlled manner."
//"Let the program flow continue, with a warning. For instance, an image may not load, but the app continues to run and display the other images."

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

void main() {
  String userInput = '3,14';

  try {
    double number = double.parse(userInput);
    print("The square of your number is: ${number * number}.");
  } on FormatException catch (e) {
    print("You have enter an invalid number");
    print(e);
  } catch (e) {
    print("Something else happened");
    print(e);
  }
} 

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
/* void main() {
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
 */