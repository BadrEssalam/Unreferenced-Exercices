void main() {
/* 
 TODO:
 * Take a list, say for example this one:
 * a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
 * and write a program that prints out all the 
 * elements of the list that are less than 5.
*/

  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [];

  //* first method
  b = a.takeWhile((value) => value < 5).toList();
  print(b);
  
  // second method
  //* List b = a.where((ele) => ele < 5).toList();
  //* print(b);

  // One line method
  //* print([for (var i in a) if (i < 5) i]);
}
