/*
First Factorial
Have the function FirstFactorial(num) take the num
parameter being passed and return the factorial of it.
 For example: if num = 4, then your program should
return (4 * 3 * 2 * 1) = 24. For the test cases,
the range will be between 1 and 18 and the input
will always be an integer.
*/

void main() {
  print(FirstFactorial(5));
}

String FirstFactorial(int num) {
  int fact = 1;
  String CompSent = "$num";

  while (num > 0) {
    fact = num * fact;
    num--;
    CompSent = "$CompSent * $num"; // To create like this format   5 * 4 * 3 * 2 * 1
  }
  
  CompSent = CompSent.substring(0, CompSent.length-4); // To remove this part " * 0"
  return "($CompSent) = $fact"; // To create like this format   (5 * 4 * 3 * 2 * 1) = 120
}


/*
Solution using recursion
FirstFactorial(num) {
  if (num > 0) {
    return num * FirstFactorial(num - 1);
  } else {
    return 1;
  }
}

// keep this function call here
void main() {
  print(FirstFactorial(8));
}*/
