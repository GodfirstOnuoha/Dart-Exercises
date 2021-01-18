/* A program that takes a list and makes a new list 
  which has only the even elements of the list in it. 
*/
main(List<String> args) {
  var a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  var b = [];
  a.forEach((element) {
    if (element.isEven) {
      b.add(element);
    }
  });
  print("Old list: $a");
  print("New list: $b");
}
