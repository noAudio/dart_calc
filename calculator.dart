import "dart:io";

void main() {
  // this variable will hold the question that
  // the user will type in
  String question = "";

  // welcome message
  print("Welcome to THE CALCULATOR\n");
  // explain the syntax so that the user can input
  // their question in a way that doesn't make
  // the program choke
  print(
    "Please type in your question with spaces before and after the operator, like so:\n",
  );
  print("________________1 + 1________________\n");

  question = stdin.readLineSync(); // grab input

  // create a list of type string then use function
  // splitSum to split the question into operands
  // and operators
  List<String> seperatedSum = splitSum(question);

  // assign the split parts of the question into
  // their own variables
  double firstSum = double.parse(seperatedSum[0]);
  double secondSum = double.parse(seperatedSum[2]);
  String operation = seperatedSum[1];

  // perform the calculation through the calculate() function
  double answer = calculate(firstSum, secondSum, operation);

  // output the answer to the user
  print("Your answer is $answer");
}

// this function splits the question at the whitespace
// that the user is advised to add to question at
// program start
List splitSum(question) {
  return question.split(" ");
}

// this function carries out the calculations
double calculate(firstSum, secondSum, operation) {
  // variable to store the outcome
  double answer;

  // use switch case to check the type of operand we
  // have then perform the necessary calculations
  // if there is no operator display error message.
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

  // output is returned
  return answer;
}
