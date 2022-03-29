import 'dart:io';

import 'dart:math';

enum Move { Rock, Paper, Scissors }
void main() {
  final rng = Random();
  while (true) {
    stdout.write("Rock, Paper or Scissors? ");
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playermove;
      if (input == 'r') {
        playermove = Move.Rock;
      } else if (input == 'p') {
        playermove = Move.Paper;
      } else {
        playermove = Move.Scissors;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print("You played: $playermove");
      print("AI played: $aiMove");
      if (playermove == aiMove) {
        print("It's a draw");
      } else if (playermove == Move.Rock && aiMove == Move.Scissors ||
          playermove == Move.Scissors && aiMove == Move.Paper ||
          playermove == Move.Paper && aiMove == Move.Rock) {
        print("You Win");
      } else {
        print("You Lose");
      }
    } else if (input == 'q') {
      break;
    } else {
      print("Invalid input");
    }
  }
}

random() {}
