/* A program to ask the user to guess the number, then tell them \
  whether they guessed too low, too high or exactly right. 
*/
import 'dart:io';
import 'dart:math';

main(List<String> args) {
  var userGuess = 0;
  var userGuessCount = 0, userCorrectGuessCount = 0;
  var keepGuessing = true;
  while (keepGuessing) {
    print("\nGuess a number from 1 - 100 (Enter 0 to quit):");
    userGuess = int.parse(stdin.readLineSync()!);
    var randomNumber = 1 + new Random().nextInt(100);
    if (userGuess == 0) {
      break;
    } else {
      userGuessCount++;
      if (userGuess == randomNumber) {
        print("Exactly, you guessed right!");
        userCorrectGuessCount++;
      } else if (userGuess > randomNumber) {
        print("You guessed too high.");
      } else {
        print("You guessed too low.");
      }
    }
  }
  print("\nCorrect guess = $userCorrectGuessCount");
  print("Total guess = $userGuessCount");
}
