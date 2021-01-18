/* A program that returns a list that contains only
  the elements that are common between two lists.
*/
main(List<String> args) {
  var a = <int>{1, 2, 3, 5, 8, 13, 21, 34, 55, 89};
  var b = <int>{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};
  var c = a.intersection(b);
  print(c);
}
