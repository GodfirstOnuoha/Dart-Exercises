/* A program that asks the user for a number and then prints
  out a list of all the divisors of that number.
*/
import 'dart:io';

main(List<String> args) {
  print("Enter a number:");
  var num = int.parse(stdin.readLineSync()!);
  var divisorList = [];
  for (var i = 1; i <= num; i++) {
    if (num % i == 0) {
      divisorList.add(i);
    }
  }
  print("The divisors of $num are $divisorList");
}
