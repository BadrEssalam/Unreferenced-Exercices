/*
First Reverse
Have the function FirstReverse(str) take the str
parameter being passed and return the string in
reversed order. For example: if the input string
is "Hello World and Coders" then your program
should return the string sredoC dna dlroW olleH.
*/

String FirstReverse(String str) {
  
  // var b = str.runes.toList().reversed;
  // var st = String.fromCharCodes(b);
  // // code goes here
  // return st;

  return str.split("").reversed.join("");
}


void main() {
  String str = "Hello world and coders";
  print(FirstReverse(str));
}

/*
import 'dart:io';
String FirstReverse(String str) {
  // code goes here  
  return str.split("").reversed.join("");
}
// keep this function call here 
void main() {
  print(FirstReverse(stdin.readLineSync()));
}
*/
