// A program to play a Rock, Paper, Scissors game
import 'dart:io';
import 'dart:math';

main(List<String> args) {
  // Initialize variables
  var list = ["R", "P", "S"];
  var userMove = "", computerMove = "";
  var userGameCount = 0, computerGameCount = 0;
  var isGameContinued = true;

  // Make the game continous
  while (isGameContinued) {
    isGameContinued = false;

    // Display a welcome message
    print("Welcome to the Rock, Paper, Scissors Game");
    print("===============================================");

    do {
      // Accept the user's move
      print("\nEnter a move (R = Rock, S = Scissors, P = Paper and Q = Quit):");
      userMove = stdin.readLineSync()!.toUpperCase();

      if (userMove == "Q") {
        // Checks if user wants to quit
        break;
      } else if (userMove == "R" || userMove == "S" || userMove == "P") {
        // Generate random move
        computerMove = list[new Random().nextInt(3)];

        // Display both moves
        print("You played: $userMove");
        print("Computer played: $computerMove");

        // Compare the both moves
        if (userMove == computerMove) {
          print("That's a tie.");
        } else {
          if (userMove == "R") {
            if (computerMove == "P") {
              computerGameCount++;
              print("Sorry, you lose - Paper covers Rock.");
            } else {
              userGameCount++;
              print("Congrats, you won - Rock crushes Scissors.");
            }
          } else if (userMove == "P") {
            if (computerMove == "S") {
              computerGameCount++;
              print("Sorry, you lose - Scissors cuts Paper.");
            } else {
              userGameCount++;
              print("Congrats, you won - Paper covers Rock.");
            }
          } else if (userMove == "S") {
            if (computerMove == "R") {
              computerGameCount++;
              print("Sorry, you lose - Rock crushes Scissors.");
            } else {
              userGameCount++;
              print("Congrats, you won - Scissors cuts Paper.");
            }
          }
        }
      } else {
        print("Invalid move. Enter R or S or P or Q.");
      }
    } while (userMove != "R" || userMove != "P" || userMove != "S");
  }

  // Display result
  print("\n==============================================");
  print("Computer $computerGameCount : You $userGameCount");
  if (computerGameCount == userGameCount) {
    print("The game is draw so nobody won...");
  } else if (computerGameCount > userGameCount) {
    print("Computer won!");
  } else {
    print("You won!");
  }
  print("Thanks for playing the game...");
}
