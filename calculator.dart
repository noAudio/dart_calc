import "dart:io";

void main() {
  String question = "";

  print("Welcome to THE CALCULATOR\n");
  print(
    "Please type in your question with spaces before and after the operator, like so:\n",
  );
  print("________________1 + 1________________\n");

  question = stdin.readLineSync();

  List<String> seperatedSum = splitSum(question);

  double firstSum = double.parse(seperatedSum[0]);
  double secondSum = double.parse(seperatedSum[2]);
  String operation = seperatedSum[1];

  double answer = calculate(firstSum, secondSum, operation);

  print("Your answer is $answer");
}

List splitSum(question) {
  return question.split(" ");
}

double calculate(firstSum, secondSum, operation) {
  double answer;

  switch (operation) {
    case '+':
      answer = firstSum + secondSum;
      break;
    case '-':
      answer = firstSum - secondSum;
      break;
    case '/':
      answer = firstSum / secondSum;
      break;
    case '*':
      answer = firstSum * secondSum;
      break;
    default:
      print("Error: You did not specify an operator!");
  }

  return answer;
}
