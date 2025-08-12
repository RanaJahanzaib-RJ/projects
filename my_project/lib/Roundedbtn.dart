
import 'package:flutter/material.dart';

class Roundedbtn extends StatelessWidget {

  final String? btnName;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  Roundedbtn({
  required this.btnName,
 required this.icon,
 required this.bgcolor, 
  required this.textStyle,
  required  this.callback,
  });
  @override
  Widget build(BuildContext context) {
    
   return ElevatedButton(onPressed: (){
    callback!();
   }, child: icon!=null? Row(
    children: [
    icon!,
    Text(btnName!, style:textStyle,),
    ],
   ): Text(btnName!,style: textStyle,
   ),
   style: ElevatedButton.styleFrom(
    shadowColor: bgcolor,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        width: 2,
        color: Colors.blue,
      ),
      borderRadius: BorderRadius.circular(11),
      
    ),
   ),
   );
  }
}