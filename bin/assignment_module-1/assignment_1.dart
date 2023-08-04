void main(){
  //two constant variables
  const int a = 7, b = 3;
  //operation results storing variables
  dynamic result;

  //print initial values
  print("a = $a, b = $b");

  // print and perform Addition
  result = a+b;
  print("Addition: $a + $b = $result");

  // print and perform Subtraction
  result = a-b;
  print("Subtraction: $a - $b = $result");

  // print and perform Multiplication
  result = a*b;
  print("Multiplication: $a * $b = $result");

  // print and perform Division
  result = a/b;
  print("Division: $a / $b = $result");

  // print and perform Modulus
  result = a%b;
  print("Modulus: $a % $b = $result");
}