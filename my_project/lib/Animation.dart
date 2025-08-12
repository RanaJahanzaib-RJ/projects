import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(FooAPP());
}
class FooAPP extends StatelessWidget {
  const FooAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FooScreen(),
    );
  }
}
class FooScreen extends StatefulWidget {
  const FooScreen({super.key});

  @override
  State<FooScreen> createState() => _FooScreenState();
}

class _FooScreenState extends State<FooScreen> {
  var _height = 100.0;
  var _width = 200.0;
  bool flage = true;
 var bgcolor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: Text("ANIMATED CONTAINER",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white,),),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
            colors: [
              Color(0xffffecd2), Color(0xfffcb69f),
            ],
            begin: FractionalOffset(0.1, 0.0),
            end: FractionalOffset(0.0, 0.1),
           
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              AnimatedContainer(
                height: _height,
                width: _width,
                color: bgcolor,
              duration: Duration(seconds: 1),
              ),
               SizedBox(height: 25,),
              ElevatedButton(onPressed: (){
                setState(() {
                  if(flage){
                 _height =200.0;
                _width = 100.0;
                 flage = false;
                 bgcolor=Colors.orange;
                  }else{
                     _height= 100.0;
                    _width = 200.0;
                    bgcolor=Colors.green;
                    flage = true;
                  }
                });
              }, child:Text("CLICK") ),
              SizedBox(height: 30,),
             Padding(
               padding: const EdgeInsets.only(left: 300),
               child: Column(
                children: [
                   TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                   return Ripple();
                    }));
                   }, child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Center(child: Text("NEXT",style: TextStyle(color: Colors.white),)),
                   ),),
                ],
               ),
             ),
            ],
          ),
        ),
      ),

    );
  }
}


class OPACITY extends StatefulWidget {
  const OPACITY({super.key});

  @override
  State<OPACITY> createState() => _OPACITYState();
}

class _OPACITYState extends State<OPACITY> {
  var myOpacity = 1.0;
  bool flage = true;
  var bgcolor = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text("ANIMATED OPACITY",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white,),),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfff6d365), Color(0xfffda085),
            ],
           begin: FractionalOffset(0.1, 0.0),
           end: FractionalOffset(0.0, 0.1), 
          ),
        ),
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           AnimatedOpacity(opacity: myOpacity, duration:Duration(seconds: 1),
           child: Container(
            height: 100,
            width: 200,
             color: bgcolor,
           ),
           ),
             SizedBox(height: 25,),
         ElevatedButton(onPressed: (){
          setState(() {
            if(flage){
              myOpacity=1.0;
              flage = false;
             
            }else{
              myOpacity=0.0;
              flage = true;
               bgcolor=Colors.deepOrange;
            }
          });
         }, child: Text("CLICK"),),
            SizedBox(height: 30,),
             Padding(
               padding: const EdgeInsets.only(left: 300),
               child: Column(
                children: [
                   TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                   return CrossFade();
                    }));
                   }, child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Center(child: Text("NEXT",style: TextStyle(color: Colors.white),)),
                   ),),
                ],
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}

class CrossFade extends StatefulWidget {
  const CrossFade({super.key});

  @override
  State<CrossFade> createState() => _CrossFadeState();
}

class _CrossFadeState extends State<CrossFade> {

  bool IsFirst = true;

  void roundly(){
   setState(() {
   IsFirst = false;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: Text("CROSSFADE",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white,),),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffd4fc79),Color(0xff96e6a1),
            ],
            begin: FractionalOffset(0.1, 0.0),
            end: FractionalOffset(0.0, 0.1), 
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           AnimatedCrossFade(
            firstChild: Container(
              height: 200,
              width: 200,
             decoration: BoxDecoration(
              image: DecorationImage(image:
               NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxnwrwLh3t8SrX5xwa5GADlM9aYB6fJEhpBw&s"),
              ),
               color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(11),
             ),
            ),
            secondChild: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx8LetERKwlqvtBrv-KXFmeKKNqhwSn3Zhww&s",
            height: 200,
            width: 200,
            ),
             crossFadeState: IsFirst? CrossFadeState.showFirst:CrossFadeState.showSecond,
              duration: Duration(seconds: 3),
              ),
                SizedBox(height: 25,),
                ElevatedButton(onPressed: (){
                 setState(() {
                   if(IsFirst){
                    IsFirst=false;
                   }else{
                    IsFirst = true;
                   }
                 }); 
                }, child: Text("CLICK"),),
               SizedBox(height: 30,),
             Padding(
               padding: const EdgeInsets.only(left: 300),
               child: Column(
                children: [
                   TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                   return HEROANIMATED();
                    }));
                   }, child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Center(child: Text("NEXT",style: TextStyle(color: Colors.white),)),
                   ),),
                ],
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}

class HEROANIMATED extends StatefulWidget {
  const HEROANIMATED({super.key});

  @override
  State<HEROANIMATED> createState() => _HEROANIMATEDState();
}

class _HEROANIMATEDState extends State<HEROANIMATED> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("HEROANIMATED",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white,),),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfffad0c4),Color(0xffff9a9e),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
             InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
               return HERODETAIL();
                }));
              },
               child: Hero(tag: "background",
                child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ72KmxKIWd6gfmtnSQmdZ4GiFuJHJmuDfQQ&s",
                height: 300,
                width: 500,
                ),
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
class HERODETAIL extends StatefulWidget {
  const HERODETAIL({super.key});

  @override
  State<HERODETAIL> createState() => _HERODETAILState();
}

class _HERODETAILState extends State<HERODETAIL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: Text("DETAIL",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white,),),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body:Center(
        child: Column(
            children: [
              Hero(tag: 'background',
               child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ72KmxKIWd6gfmtnSQmdZ4GiFuJHJmuDfQQ&s")),
               SizedBox(height: 25,),
               ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return TweenAnimation();
                }));
               }, child: Text("Next"),),
            ],
          ),
      ),
      
    );
  }
}
// Tween Animatin

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync:this,duration: Duration(seconds: 4) );
    animation = Tween(begin: 300.0, end: 50.0).animate(animationController);
    animationController.addListener((){
      print(animation.value);
      setState(() {
        
      });
  });
   animationController.forward();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TWEEN ANIMATION",style: TextStyle(fontSize: 25,color: Colors.deepPurple,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                height: animation.value,
                width: animation.value,
                   child: Stack(
                   children: [
                      Container(
                     height: animation.value,
                     width: animation.value,
                     color:Colors.amber,
                    ),
                    Positioned(
                      top: 21,
                      left: 21,
                      child:   Container(
                      height: animation.value,
                      width: animation.value,
                     color: Colors.green,
                   ),
                    ),
                    Positioned(
                        top: 42,
                        left: 42,
                        child: Container(
                        height: animation.value,
                        width: animation.value,
                        color: Colors.orange,
                   ),
                    ),
                    Positioned(
                      top: 62,
                      left: 62,
                      child:Container(
                      height: animation.value,
                      width: animation.value,
                      color: Colors.red,
                    ),
                   ),
                   ],
                   ),
               ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Ripple();
              }));
            }, child: Text("NEXT"),),
          ],
        ),
      ),
    );
  }
}


class Ripple extends StatefulWidget {
  const Ripple({super.key});

  @override
  State<Ripple> createState() => _RippleState();
}

class _RippleState extends State<Ripple>with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  var ListRadius = [150.0,200.0,250.0,300.0,350.0];
  @override
  void initState() {
    super.initState();
    animationController= AnimationController(vsync: this,duration: Duration(seconds: 4),lowerBound: 0.5);
    animationController.addListener((){
      print(animationController.value);
      setState(() {
        
      });
    });
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        title: Text("RIPPLE ANIMATION",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
         buildMyContainer(ListRadius[0]),
         buildMyContainer(ListRadius[1]),
         buildMyContainer(ListRadius[2]),
         buildMyContainer(ListRadius[3]),
         buildMyContainer(ListRadius[4]),
         FaIcon(Icons.shopping_cart,color: Colors.yellow,size: 95,),
        Text('   RURE        BASKIT',style: TextStyle(fontSize: 35,color: Colors.green,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
  Widget buildMyContainer(Radius){
   return Container(
      height: Radius*animationController.value,
      width: Radius*animationController.value,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue.withOpacity(1.0-animationController.value),
      ),
    );
  }
}