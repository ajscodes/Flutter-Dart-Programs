import 'dart:io';

void main(){
  stdout.write('Enter First number: ');
  double number1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter Second number: ');
  double number2 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter Third number: ');
  double number3 = double.parse(stdin.readLineSync()!);

  double largest;
  if(number1 >= number2 && number1 >= number3){
    largest = number1;
  }
  else if(number2 >= number1 && number2 >= number3){
    largest = number2;
  }
  else{
    largest = number3;
  }

  print("Largest number is ${largest}");
}