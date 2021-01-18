/* A program to ask a user for a string and 
  print out whether this string is a palindrome or not.
*/
import 'dart:io';

main(List<String> args) {
  print("Enter a word:");
  var word = stdin.readLineSync()!;
  var rword = word.split('').reversed.join('');
  if (word == rword) {
    print("$word is a palindrome.");
  } else {
    print("$word is not a palindrome.");
  }
}
