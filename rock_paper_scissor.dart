import 'dart:io';
import 'dart:math';


enum Move {Rock, Paper , Scissors}
void main() {
  final rng = Random();
  while (true){
      stdout.write('Rock, paper or scissors? (r/p/s)');
      final input = stdin.readLineSync(); // reads a string value and returns it
      if (input == 'r' || input == 's' || input== 'p') {
        var playermove; // Giving playermove a null value at this point and assigning it a value after it 
        if (input == 'r') {
          playermove = Move.Rock;
        }else if (input == 's') {
          playermove = Move.Scissors;
        }else {
          playermove = Move.Paper;
        }
        print('You Selected: $input');
        final random = rng.nextInt(3);
        final aiMove = Move.values[random];
        if (playermove == aiMove) {
          print("It's a draw");
        }else if (playermove == Move.Rock && aiMove == Move.Scissors || playermove == Move.Scissors && aiMove == Move.Paper || playermove == Move.Paper && aiMove == Move.Rock) {
          print('You Win!!!');
        }else {
          print('AI wins!!!');
        }

      } else if (input == 'q') {
        break;
      } else {
        print('Invalid Input');
      }

  }

}