import 'dart:io';

void main(){
  print("Enter Fahrenheit: ");
  double fehrenheit = double.parse(stdin.readLineSync()!);

  double formula = (fehrenheit - 32)*(5/9);
  print(formula);
}