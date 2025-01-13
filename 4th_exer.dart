
// Write a program that takes a list of numbers for example
// a = [5, 10, 15, 20, 25]
// and makes a new list of only the first and last elements
// of the given list. For practice, write this code inside a function.

void main() {
  List Elements = [5, 10, 15, 20, 25];

  List FirstLastList = FirstLast(Elements);
  print("First Element ${FirstLastList[0]}, Last Element ${FirstLastList[1]}");
}

List FirstLast(Element) {
  return [Element.first, Element.last];
}
