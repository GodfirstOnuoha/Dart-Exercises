/* A program that asks the user to enter their name and their age. 
	Print out a message that tells how many years they have to be 100 years old.
*/
import 'dart:io';

main(List<String> args) {
  print("Enter your name:");
  var name = stdin.readLineSync();
  print("Enter your age:");
  var age = int.parse(stdin.readLineSync()!);

  if (age < 100) {
    print("Hello $name, you have ${100 - age} years to be 100 years old.");
  } else if (age == 100) {
    print("Hello $name, you are already 100 years old.");
  } else {
    print("Hello $name, you are above 100 years old.");
  }
}
