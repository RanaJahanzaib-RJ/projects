import 'dart:math';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator App",
      home: Screen(),
    );
}
}
  class MyButton extends StatelessWidget {
    final String title;
    final Color color;
    final VoidCallback onPressed;
  const MyButton({super.key,
  required this.title,
  this.color= const Color(0xffa5a5a5),
  required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return  Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: InkWell(
            onTap: onPressed,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
              child: Center(child: Text(title,style: TextStyle(fontSize: 20,color: Colors.white),)),
            ),
          ),
        ),
    
    );
  }
}
class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  var userInput = '';
  var answer = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
                 Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(userInput.toString(),style: TextStyle(fontSize: 30,color: Colors.white),)),
                       Text(answer.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                        children: [
                          MyButton(title: 'AC',onPressed: () {
                           userInput  = '' ;
                           answer = '';
                           setState(() {
                           });
                          },),
                          MyButton(title: 'DEL',onPressed: () {
                           userInput = userInput.substring(0,userInput.length-1);
                           setState(() {
                           });
                          },),
                          MyButton(title: '%',onPressed: () {
                             userInput +='%';
                            setState(() {
                            });  
                          },),
                          MyButton(title: '/',onPressed: () {
                              userInput +='/';
                         setState(() {
                          }); 
                          },color:Color(0xffffa00a),),
                        ],
                       ),
                   Row(
                children: [
                  MyButton(title: '7',onPressed: () {
                    userInput +='7';
                    setState(() {
                    });
                  },),
                  MyButton(title: '8',onPressed: () {
                   userInput +='8';
                    setState(() {
                    });
                  },),
                  MyButton(title: '9',onPressed: () {
                  userInput +='9';
                    setState(() {
                    });    
                  },),
                  MyButton(title: 'x',onPressed: () {
                     userInput +='*';
                    setState(() {
                    });  
                  },color:Color(0xffffa00a),),
                ],
               ),
                       Row(
                children: [
                  MyButton(title: '4',onPressed: () {
                      userInput +='4';
                    setState(() {
                    }); 
                  },),
                  MyButton(title: '5',onPressed: () {
                      userInput +='5';
                    setState(() {
                    }); 
                  },),
                  MyButton(title: '6',onPressed: () {
                      userInput +='6';
                    setState(() {
                    }); 
                  },),
                  MyButton(title: '-',onPressed: () {
                      userInput +='-';
                    setState(() {
                    }); 
                  },color:Color(0xffffa00a),),
                ],
               ),
                    Row(
                children: [
                  MyButton(title: '1',onPressed: () {
                      userInput +='1';
                    setState(() {
                    }); 
                  },),
                  MyButton(title: '2',onPressed: () {
                      userInput +='2';
                    setState(() {
                    }); 
                  },),
                  MyButton(title: '3',onPressed: () {
                      userInput +='3';
                    setState(() {
                    }); 
                  },),
                  MyButton(title: '+',onPressed: () {
                      userInput +='+';
                    setState(() {
                    }); 
                  },color:Color(0xffffa00a),),
                ],
               ),
                     Row(
                children: [
                  MyButton(title: '00',onPressed: () {
                      userInput +='00';
                    setState(() {
                    }); 
                  },),
                  MyButton(title: '0',onPressed: () {
                      userInput +='0';
                    setState(() {
                    }); 
                  },),
                  MyButton(title: '.',onPressed: () {
                 userInput += '.';
                 setState(() {
                 });
                  },),
                  MyButton(title: '=',onPressed: () {
                    equalpress();
                    setState(() {
                    });
                  },color:Color(0xffffa00a),),
                ],
               ),

                  ],
                ),
              ),
             ],
           ), 
      ),
    );
  }
  void equalpress(){
    String finaluserInput =userInput;
    finaluserInput = userInput.replaceAll('x', '*');
   Parser p = Parser();
   Expression expression = p.parse(userInput); 
   ContextModel contextModel = ContextModel();

   double evel =expression.evaluate(EvaluationType.REAL, contextModel);
   answer = evel.toString();
  }
}
