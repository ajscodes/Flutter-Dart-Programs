import 'dart:io';

void main(){
  stdout.write("Enter meter: ");
  int met = int.parse(stdin.readLineSync()!);

  double count = met*3.28;

  print(count);
}