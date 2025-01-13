/*
ToDo:
* Write a program that takes a list of numbers for example
* a = [5, 10, 15, 20, 25]
* and makes a new list of only the first and last elements
* of the given list. For practice, write this code inside a function.
*/

//* My solution
void main() {
  List<int> Elements = [5, 10, 15, 20, 25];
  List<int> FirstLastList = FirstLast(Elements);

  print("First Element ${FirstLastList[0]}, Last Element ${FirstLastList[1]}");
}

List<int> FirstLast(List<int> Elements) {
  return [Elements.first, Elements.last];
  //* return [Elements[0], Elements[Elements.length-1]];
}
