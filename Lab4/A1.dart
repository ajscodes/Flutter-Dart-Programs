import 'dart:io';

void main(){
  stdout.write("Enter Principle: ");
  double principle = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Rate: ");
  double rate = double.parse(stdin.readLineSync()!);

  stdout.write("Enter Time(option): ");
  String? timeInput = stdin.readLineSync();
  double time = (timeInput != null && timeInput.isNotEmpty) ? double.parse(timeInput) : 1; //Make it optional

  
  double interest = simpleInterest(principle: principle, rate: rate,time: time);
  print("Simple interest: $interest");
}

double simpleInterest(
{required double principle, required double rate, double time = 1}){
  return (principle * rate * time) / 100;
}
