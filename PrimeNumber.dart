/* A program to ask the user for a number and 
  determine whether the number is prime or not. 
*/
import 'dart:io';

bool isPrime(int number) {
  var result = true;
  if (number == 1) {
    result = false;
  } else {
    for (var a = 2; a < number; a++) {
      if (number % a == 0) {
        result = false;
        break;
      }
    }
  }
  return result;
}

main(List<String> args) {
  print("Enter a number:");
  var num = int.parse(stdin.readLineSync()!);
  if (isPrime(num)) {
    print("$num is a prime number.");
  } else {
    print("$num is not a prime number.");
  }
}
