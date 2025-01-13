/** 
* TODO:
  ** Take two lists, for example:
  ** a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  ** b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
  ** and write a program that returns a list that contains only
  ** the elements that are commun between them (without duplicates).
  ** Make sure your program works on two lists of different sizes.
*/

//* My solution
void main() {
  List<int> firstList = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> secondList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List CommunElements = [];

  CommunElements = CommunElementsFun(firstList, secondList);
  print(CommunElements);
}

//* function build
List CommunElementsFun(List<int> firstList, List<int> secondList) {
  List<int> CommunElementsList = [];

  //* The second and the first lists without repetitions
  List firstListWithoutRepitition = firstList.toSet().toList();
  List secondListWithoutRepitition = secondList.toSet().toList();

  //? Is a save of time if we compare the smallest list to the tallest list?
  //! Assumption: the number of the comparisons will be the same:
  //! N°Comaparisons = FirstList.length * SecondList.length
  //! this assumption will be true, if the comparison will
  //! be done just with non builtin functions, but with builtin
  //! functions we can not be sure of this assumption because 
  //! we don't know how they are built (for example if you iterate
  //! by builtin function on the tallest list the
  //! performance will be better than the inverse)

  //* Extracting the commun elements
  for (int i = 0; i < firstListWithoutRepitition.length; i++) {
    if (secondListWithoutRepitition.contains(firstListWithoutRepitition[i])) {
      CommunElementsList.insert(
          CommunElementsList.length, firstListWithoutRepitition[i]);
    }
  }

  return CommunElementsList;
}

//* the suggested solution from the website
/*
  void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
  Set<int> c = {};

  for (var i in a) {
    for (var j in b) {
      if (i == j) {
        c.add(i);
      }
    }
  }
  print(c.toList());

  * One liner using set intersections
  print(Set.from(a).intersection(Set.from(b)).toList());
}
*/
