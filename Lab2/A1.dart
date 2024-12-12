import 'dart:io';

void main(){
  stdout.write("Enter number: ");
  double number = double.parse(stdin.readLineSync()!);

  if(number>0){
    print("It's a positive number.");
  }
  else if(number<0){
    print("It's a negative number.");
  }
  else{
    print("0 is not positive or negative number.");
  }




}