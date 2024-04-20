import 'dart:io';

bool winner = false;
bool isXturn = true;
int moveCount = 0;

List<String> values = ['1','2','3','4','5','6','7','8','9'];
List<String> combinations = ['012','048','036','147','246','345','678'];

void generateBoard(){
  print(" | | ");
  print('${values[0]}|${values[1]}|${values[2]}');
  print(" | | ");
  print('${values[3]}|${values[4]}|${values[5]}');
  print(" | | ");
  print('${values[6]}|${values[7]}|${values[8]}');
  print(" | | ");
}

void getNextCharacter(){
  print("Choose a number ${isXturn?'X':'O'}");
  int number = int.parse(stdin.readLineSync()!);
  if (number < 1 || number > 9 || values[number - 1] == 'X' || values[number - 1] == 'O') {
    print("Invalid move. Please choose an available number.");
    getNextCharacter();
    return;
  }
  values[number-1] = isXturn ? 'X':'O';
  isXturn = !isXturn;
  moveCount++;
  if(moveCount == 9){
    winner = true;
    print("DRAW");
  }
  else{
    clearScreen();
    generateBoard();
  }
  checkWinner('X');
  checkWinner('O');
  
  if (!winner) getNextCharacter();
}

bool checkCombination (String combination,String checkFor){
  List<int> numbers = combination.split('').map((item) => int.parse(item)).toList();
  bool match = true;
  for (final item in numbers) {
    if(values[item] != checkFor){
      match = false;
      break;
    }
  }
  return match;
}

void checkWinner(player){
  for (final item in combinations){
    bool combinationValidity = checkCombination(item, player);
    if(combinationValidity == true){
      print("$player WON!!");
      winner = true;
      break;
    }
  }
}

void main(){
  generateBoard();
  getNextCharacter();
}

void clearScreen() {
  // For Windows
  if (Platform.isWindows) {
    Process.run('cls', []);
  }
  // For other platforms
  else {
    print('\x1B[2J\x1B[0;0H');
  }
}
