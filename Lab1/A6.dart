import 'dart:io';

//Body Mass Index (BMI) is measure of health on weight. It can be calculated by taking your
// weight in kilograms and dividing by square of your height in meters. Write a program that
// prompts the user to enter a weight in pounds and height in inches and display the BMI.
// Note: 1 pound=.45359237 Kg and 1 inch=0.254 meters.
void main(){
  stdout.write("Enter weight(Kg): ");
  double weight = double.parse(stdin.readLineSync()!);
  
  stdout.write("Enter height(M): ");
  double height = double.parse(stdin.readLineSync()!);

  double BMI = (weight)/(height*height);

  print(BMI);
}