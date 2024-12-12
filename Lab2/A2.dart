import 'dart:io';

void main(){
  print('Choose an operator: ');
  print('1. Addition');
  print('2. Subtraction.');
  print('3. Multiplication.');
  print('4. Division.');

  //Read user's choice
  stdout.write('Enter your choice(1-4): ');
  int choice = int.parse(stdin.readLineSync()!);

  stdout.write('Enter First number: ');
  double number1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter Second number: ');
  double number2 = double.parse(stdin.readLineSync()!);

  if(choice == 1){
    print("Using if: ");
    print("Result: ${number1 + number2}");
  }
  else{
    switch (choice){
      case 2:
        print("Using switch: ");
        print("Result: ${number1 - number2}");
      case 3:
        print("Using switch: ");
        print("Result: ${number1 * number2}");
      default:
        if(number1 > number2){
          print("Using if else: ");
          print("Result: ${number1 / number2}");
        }
        else if(number2 == 0){
          print("Using if else: ");
          print("Result: Can't be division by 0.");
        }
        else{
          print("Using if else: ");
          print("Result: ${number1 / number2}");
        }
    }
  }

}