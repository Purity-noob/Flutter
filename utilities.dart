int sumOfTwoNumbers(int a, int b) {
  return a + b;
}
void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}
void checkStringValue(String value) {
  switch (value) {
    case 'hello':
      print('You entered hello');
      break;
    case 'world':
      print('You entered world');
      break;
    default:
      print('Unknown input');
  }
}
void printNumbersReverse() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
}
int findLargestNumber(List<int> numbers) {
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}
void main() {
  try {
    // This code will throw an exception because we're trying to access an element at index 5 which doesn't exist.
    List<int> numbers = [1, 2, 3, 4];
    print(numbers[5]);
  } catch (e) {
    print('An error occurred: $e');
  }
}
