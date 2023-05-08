import 'dart:math';

class RandomOperations {
  int? firstNumber;
  int? secondNumber;
  String? operator;

  RandomOperations() {
    // Create a list to store the generated operations
    List<String> operations = [];

    // Generate random operations until the list has 20 unique items
    while (operations.length < 3) {
      // Generate random numbers and operator
      firstNumber = Random().nextInt(19) + 1;
      secondNumber = Random().nextInt(19) + 1;
      List<String> operators = ['+', '-', '*'];
      int operatorIndex = Random().nextInt(operators.length);
      operator = operators[operatorIndex];

      // Calculate the correct answer
      int correctAnswer = getCorrectAnswer();

      // Add the operation to the list if it's not already in there
      String operation = '$firstNumber $operator $secondNumber = $correctAnswer';
      if (!operations.contains(operation)) {
        operations.add(operation);
      }
    }
  }

  int getCorrectAnswer() {
    int correctAnswer;
    switch (operator) {
      case '+':
        correctAnswer = firstNumber! + secondNumber!;
        break;
      case '-':
        correctAnswer = firstNumber! - secondNumber!;
        break;
      case '*':
        correctAnswer = firstNumber! * secondNumber!;
        break;
      default:
        correctAnswer = 0;
        break;
    }
    return correctAnswer;
  }
}