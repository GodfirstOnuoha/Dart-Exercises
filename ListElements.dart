/* A program that prints out all the elements 
  of the list that are less than 5.
*/

main(List<String> args) {
  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  print("The elements in the list less than 5 are:");
  a.forEach((element) {
    if (element < 5) {
      print(element);
    }
  });
}
