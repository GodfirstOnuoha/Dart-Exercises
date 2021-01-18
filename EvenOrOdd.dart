/* A program to as he user for a number and print out 
  an appropriate message to the user depending on 
  whether the number is even or odd.
*/
import 'dart:io';

main(List<String> args) {
  print("Welcome, please enter a number:");
  var num = int.parse(stdin.readLineSync()!);
  if (num.isEven) {
    print("$num is an even number.");
  } else {
    print("$num is an odd number.");
  }
}
