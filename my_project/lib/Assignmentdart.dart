// void main()async{

//   print(findMaximumNumber);

//   await Future.delayed(Duration(seconds: 2));
//   print("The maximum number is:");
//   print(testFunction());

//   switch(await testFunction()){
//     case 12:
//       print("The maximum number is 12");
//       return;
//       case 23:
//       print("The maximum number is 23");
//       return;
//       case 45:
//       print("The maximum number is 45");
//       return;
//       case 67:
//       print("The maximum number is 45");
//       return;
//       case 89:
//       print("The maximum number is 45");
//       return;
//       case 34:
//       print("The maximum number is 45");
//       return;
//       case 56:
//       print("The maximum number is 45");
//       break;
//       default:
//       print("The maximum number is not in the list");
//   }

//      var operation = '-';
//      switch (operation){
//         case '+':
//           print("Addition operation");
//           return;
//           case  '-':
//           print("Subtraction operation");
//           return;
//           case '*':
//          print("Multiplication operation");
//          return;
//          case '/':
//          print("Addition operation");
//           break;
//           default:
//           print("Invalid operation");
//      }
// }

// int findMaximumNumber(){
//   List<int> numberList = [12,23,45,67,89,34,56,78,90];
//   int maxNumber = 0;
//   maxNumber = numberList[0];
//   for (int i = 0; i< numberList.length; i++){
//     if(maxNumber < numberList[i]){
//       maxNumber = numberList[i];
//     }
//   }
//   return maxNumber;
// }

// Future<int>testFunction()async{
//   await Future.delayed(Duration(seconds: 4));
//   print('Calculating maximum number...');
// return findMaximumNumber();
// }


import 'dart:io';
import 'dart:math';

void main(){
  // stdout.write("Enter a positive integer number:");
  // int? number = int.parse(stdin.readLineSync()!);
  // if(number != null && number > 0){
  //   print("Multiplication Table of: $number");
  //   for(int i =0 ; i<=10; i++){
  //     print("$number x $i = S{number * i}");
  //   }
  // }else{
  //   print("please enter a valid positive integer number.");
  // }

  // stdout.write('Enter a Factorial number:');
  // int? number = int .parse(stdin.readLineSync()!);
  // if( number != null && number >= 0 ){
  //   int factoraial =  1;
  //   for ( int i = 1; i <= number; i++){
  //     factoraial *=i;
  //   }
  //   print("Factorial of $number is : $factoraial");
  // }else{
  //   print("please enter a valid non-negative integer number.");
  // }
   
  //  stdout.write("Enter the first number:");
  //  double first = double.parse(stdin.readLineSync()!);
  //  stdout.write("Enter the second number:");
  //  double second = double.parse(stdin.readLineSync()!);
  //  double result = pow(first, second).toDouble();
  //  print("The result of $first raised to the power of $second is : $result");

  // Convert feet to meters and meters to kilometers
  stdout.write("Enter a length in feet");
  double? feet = double.parse(stdin.readLineSync()!);
  double meters = feet * 0.3048;
  double kilometers = meters / 1000;
  print("$feet feet =${meters.toStringAsFixed(2)}meters");
  print("$meters meters = ${kilometers.toStringAsFixed(2)}kilometers");

  //Convert celcius to fahrenheit
  stdout.write("Enter a temperature in Celcius:");
  double? celcius = double.parse(stdin.readLineSync()!);
  double fahrenheit = (celcius * 9/5)+32;
  print("$celcius celcius= ${fahrenheit.toStringAsFixed(2)}fahrenheit");

 // Convert  fahrenheit to celcius
 stdout.write("Enter a temperature to fahrenheit");
double? fahrenheitInput = double.parse(stdin.readLineSync()!);
double Celcius = (fahrenheitInput-32)*9/5;
print("$fahrenheit convert into Celcius: $Celcius");
 
 //Calculate the area of a Circle
 stdout.write("Enter the radius of the Circle:");
 double? radius = double.parse(stdin.readLineSync()!);
 //Calculate area using formula pi*radius*radius
 double area = pi * radius*radius;
 print('Area of circle is $area');

 // Calculate the Area of a Square
 stdout.write("Enter the side length of the Square:");
 double? length = double.parse(stdin.readLineSync()!);
 stdout.write("Enter the Side Width of the Square:");
 double? width = double.parse(stdin.readLineSync()!);
 double areaofSquare = length* width;
 print("Area of the Square is $areaofSquare");
 //Calculate the Area of a Rectangle
 stdout.write("Enter the length of the Rectangle:");
 double? LengthofRectangle = double.parse(stdin.readLineSync()!);
 stdout.write("Enter the width of the Rectangle:");
 double? widthofRectangle = double.parse(stdin.readLineSync()!);
 double areaofRectangle = LengthofRectangle * widthofRectangle;
 print("Area of the Rectangle is $areaofRectangle");

 //convert days to years, weeks and days
 stdout.write("Enter the number of days:");
 int? days =int.parse(stdin.readLineSync()!);
 int years  = days ~/ 365;
 int weeks = (days% 365)~/7;
 int daysRemaining = days % 7;
print("$days days is approximately $years years, $weeks weeks, and $daysRemaining days.");

//10.find frequency of each digit in a given integer
stdout.write("Enter an integer to find the frequency of each digit:");
int? number = int.parse(stdin.readLineSync()!);
if(number<0){
number = -number;
}
List<int> frequency = List.filled(10, 0);
while(number > 0){
  int digit = number % 10;
  frequency[digit]++;
  // number ~/=10;
}
 print("Frequency of each digit:");
 for(int i = 0; i<10; i++){
  if(frequency[i]>0){
    print('Digit $i occured ${frequency[i]} times');

  }
 }

 // 1. calculate the sum of first 10 natural numbers
 int sum = 0;
 for(int i =1; i<=10; i++){
  sum +=i;
 }
  print("The sum of first 10 natural number is: $sum");

  // 2. Find positive integer annd print multiplication Tabel
  stdout.write("Enter a positive integer number:");
  int? numb = int.parse(stdin.readLineSync()!);
  if(number != null && number >0){
   print("Multiplication Tabel of $numb");
   for(int i = 0; i<=10;i++){
    print("$numb x $i = ${numb * i}");
   }
  }else{
    print("Please enter a valid positive integer number.");
  }

  // 3. Calculate the factorial value of a number
  stdout.write("Enter a positive integer:");
  int? num = int.parse(stdin.readLineSync()!);
  if(num !=null && num >=0 ){
    int factorial = 1;
    for(int i = 1; i <=num; i++ ){
      factorial *=i;
    }
    print("Factorial of $num is : $factorial");
  }else{
    print("please enter a valid non-negative integer number.");
  }

  
}


