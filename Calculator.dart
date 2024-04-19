import "dart:io";

double numInput(){
  print("Enter the num for operation :");
  double myNum = double.parse(stdin.readLineSync()!);
  return myNum;
}

String operandChoice(){
  print("Enter the operand of choice '+' '-' '/' '*'");
  String operandInput = stdin.readLineSync()!;
  return operandInput;
}

void main (){
  double num1 = numInput();
  double num2 = numInput();
  String choice = operandChoice();
  double ans = 0.0;
  if (choice == '+'){
    ans = num1 + num2;
    print("Sum is ${ans}");
  }
  else if(choice == '-'){
    ans = num1 - num2;
    print("Difference is ${ans}");
  }
   else if(choice == '/'){
    ans = num1 / num2;
    print("Division is ${ans}");
  }
   else if(choice == '*'){
    ans = num1 * num2;
    print("Product is ${ans}");
  }
   else {
    print("Invalid input!Retry");
  }
}