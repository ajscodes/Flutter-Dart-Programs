import 'dart:io';

void main(){
  List<int> number = [];

  for(int i = 1; i <= 5; i++){
    stdout.write("Enter ${i}th number: ");
    number.add(int.parse(stdin.readLineSync()!));
  }

  number.sort();

  print(number);
}