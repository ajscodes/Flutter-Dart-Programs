import 'dart:io';

void main(){
  stdout.write("Enter marks of English: ");
  double engl = double.parse(stdin.readLineSync()!);

  stdout.write("Enter marks of Maths: ");
  double math = double.parse(stdin.readLineSync()!);

  stdout.write("Enter marks of Social Study: ");
  double ss = double.parse(stdin.readLineSync()!);

  stdout.write("Enter marks of Science: ");
  double sci = double.parse(stdin.readLineSync()!);

  stdout.write("Enter marks of Drawing: ");
  double draw = double.parse(stdin.readLineSync()!);

  double count = (100*(engl+math+ss+sci+draw))/500;

  stdout.write("Total percentage: $count");

}