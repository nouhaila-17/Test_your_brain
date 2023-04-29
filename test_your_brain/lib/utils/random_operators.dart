import 'dart:math';

class RandomOperations {
  int? firstNumber;
  int? secondNumber;
  String? operator;

  RandomOperations() {
    // Generate random numbers and operator
    firstNumber = Random().nextInt(19) + 1;
    secondNumber = Random().nextInt(19) + 1;
    List<String> operators = ['+', '-', '*', '/'];
    int operatorIndex = Random().nextInt(operators.length);
    operator = operators[operatorIndex];
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
      case '/':
        correctAnswer = firstNumber! ~/ secondNumber!;
        break;
      default:
        correctAnswer = 0;
        break;
    }
    return correctAnswer;
  }
}
