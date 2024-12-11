import 'dart:io';

void main(){
  stdout.write("Enter First Number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Second Number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Sum = ${num1+num2}");
}