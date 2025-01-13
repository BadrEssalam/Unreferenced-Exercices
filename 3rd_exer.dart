/*
TODO:
* Let’s say you are given a list saved in a variable:
* a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]. 
* Write a Dart code that takes this list and makes a new
* list that has only the even elements of this list in it.
*/

//* My solution
// void main() {

//   List<int> GivenList = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
//   List<int> EvenElements = [];

//   EvenElements = EvenElementsExtract(GivenList);
//   print("Even Elements $EvenElements");
// }

// List<int> EvenElementsExtract(List<int> Elements){
  
//   List<int> EvenElementsFun = [];

//   for (int element in Elements) {
//     if (element.isEven) {
//       EvenElementsFun.add(element);
//       //! ev_el[e] = a[i]; this way is an error
//     }
//   }

//   //* Other Methods
//   //* EvenElementsFun = Elements.where((value) => value.isEven).toList();
//   //* EvenElementsFun = Elements.takeWhile((value) => value.isEven).toList();
//   return EvenElementsFun;
// }

// the suggested sol from the author
// /*
void main() {
  List<int> a = [1, 4, 9, 16, 25, 4, 36, 49, 64, 81, 100];
  List<int> l = [];

  for (var e in a) {
    if (e % 2 == 0) {
      l.add(e);
    }
  }
  print(l);
  
  // One liner
  print([for (var e in a) if (++e % 2 == 0) e]);
}
// */
