import 'dart:io';

void main(){
  stdout.write("Enter first number: ");
  int number1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int number2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter third number: ");
  int number3 = int.parse(stdin.readLineSync()!);

  int largest = (number1 > number2) ?
  (number1 > number3 ? number1 : number3) : (number2 > number3 ? number2 : number3);

  print("Largest: $largest");
}