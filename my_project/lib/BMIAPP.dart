import 'package:flutter/material.dart';

void main(){
  runApp(BMIAPP());
}
class BMIAPP extends StatelessWidget {
  const BMIAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMISCreen(),
    );
  }
}
class BMISCreen extends StatefulWidget {
  const BMISCreen({super.key});

  @override
  State<BMISCreen> createState() => _BMISCreenState();
}

class _BMISCreenState extends State<BMISCreen> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var InController = TextEditingController();

  var result = "";

  var bgcolor = Colors.indigo.shade200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("YOUR BMI",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white,),),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Container(
        color: bgcolor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("B M I",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.green),),
                    ),
                    TextField(
                      controller: wtController,
                      decoration: InputDecoration(
                        label: Text("Enter your Weight(in Kg)"),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.red,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.green,
                          ),
                        ),
                        prefixIcon: Icon(Icons.line_weight),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                       SizedBox(height: 25,),
                    TextField(
                      controller: ftController,
                      decoration: InputDecoration(
                        label: Text("Enter your Height(in Feet)"),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.red, 
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 2,
                             color: Colors.green,
                          ),
                        ),
                        prefixIcon: Icon(Icons.height),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 25,),
                    TextField(
                      controller: InController,
                      decoration: InputDecoration(
                        label: Text("Enter your Height(in Inch) "),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 2,
                             color: Colors.red,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 2,
                             color: Colors.green,
                          ),
                        ),
                        prefixIcon: Icon(Icons.height_outlined),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 15,),
                    TextButton(onPressed: (){
                      var wt= wtController.text.toString();
                      var ft = ftController.text.toString();
                      var Inch = InController.text.toString();
        
                      if(wt!=""&& ft!=""&& Inch!=""){
        
                         // BMI Calculation
        
                         var iwt = int.parse(wt);
                         var ift = int.parse(ft);
                         var iInch = int.parse(Inch);
                       
                       var tInch = (ift*12) + iInch;
        
                       var tcm = iInch*2.54;
        
                       var tM = 100/tcm;
        
                       var BMI = (tM*tM)/iwt;

                       var msg = "";

                     if(BMI>25){
                         msg = "Your Overweighted";
                         bgcolor=Colors.deepOrange;
                       }else if(BMI<18){
                        msg= "Your UnderWeighted";
                       bgcolor=Colors.green;
                       }else{
                        msg="Your Healthy";
                        bgcolor =Colors.redAccent;
                       }
                       setState(() {
                         result="n/$msg BMI is ${BMI.toStringAsFixed(2)}";
                       });
        
        
                      }else{
                        setState(() {
                          result="Please Filled All Required Blanks !!";
                        });
                      }
                    },
                     child: Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                         color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("Calculate",style: TextStyle(color: Colors.white),)),
                    ),
                    ),
                    SizedBox(height: 15,),
                    Text(result,style: TextStyle(fontSize: 19,color: Colors.deepPurple),),
                  ],
                ),
          ),
        ),
      ),
       
    );
  }
}