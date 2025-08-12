import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_project/SucDigi3.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(NEWONEAPP());
}
class NEWONEAPP extends StatelessWidget {
  const NEWONEAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ONEAPP(),
    );
  }
}
class ONEAPP extends StatefulWidget {
  const ONEAPP({super.key});

  @override
  State<ONEAPP> createState() => _ONEAPPState();
}

class _ONEAPPState extends State<ONEAPP> {
  static const String KEYLOGIN = "loggin";
 @override
  void initState() {
    super.initState();
    getValue();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                 Color(0xfff6d365), 
                 Colors.blue,
              ],
              begin: FractionalOffset(0.1, 0.0),end: FractionalOffset(0.0, 0.1),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.network("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMQEA8QEBMQEg8PDQ0PDxAPDxAPDw8PFREWFhURFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGhAQGi0lHR0tLS0tLS0tLS0tKy0rLS0tLS0tLS0tLS0tLS0rLy0rLS0tLS0rLS0tNy0tLS0tLS0tLf/AABEIAPsAyQMBIgACEQEDEQH/xAAaAAADAQEBAQAAAAAAAAAAAAABAgMEAAUG/8QAPBAAAgECAgcFBQcDBAMAAAAAAAECAxESIQQTMUFRYZFxgaGx8BQiMsHRBVJygpLh8UJTYhUjssIGQ6L/xAAYAQEBAQEBAAAAAAAAAAAAAAABAAIDBP/EACARAQEBAQACAwEBAQEAAAAAAAABEQISIQNBUTFhE4H/2gAMAwEAAhEDEQA/APpHECVhkw2PY9eptDRQcIYoMa04QXCLnY4awEhkSBxOSGRxHyBnHAuZsblcEFwknAxBA4mhhk7gkhFdFU7kzZiazFcR2gYSaJY4dI5okQ4Nji04WwLDWBYNOVKJRE7jJizhwiphRaMFnRkCRNIza1OV7hUhY7BsIs/wyYRHE5CMOLYICMA64bHWDWnJhFYYsNWCHCLcvSzK9yQ88Xq+kmhUjaqCuT0iiksn3Gefl5txvr4euYgxGzmmSbNWs8cez3GROJSxzjt1Z/AaBYIDUFsZRkIpBxC5qJjojjCpgV0GxOMxsZDDodENYjoyLRmrHMIGOjxBM64HHgCGQWtTlSMRrCpixq5ha1zyrVmsNt5mgWcb7BVTsYnUjr1xaa5SDZGogRkZ69t8+mqVa3aZqkm3tEqsRTGTP4rdvtv0dXyZOto1nlsF0erY0SqXRiXrybvM8dZcAbFLiM9OY8V6tTYo7AQeagllSvuKKjYNjXjUY02NqWaFF2HjEz5NeLG4NBubHHIjOkMovKSRanASORdMqpDRdtork+0rhugaoNawqFmt48lYjUkyQOQqmFE2iTTTqF1K5jgzTSkkjl1Hfjo843IYS83kZpSGDfsk5CJhnMmiMbKNi8nmYqZ6FCKsr7Q59Xae9vPjE7AkjVUjG10ZJ1OWR1/6yvPPg6+yM6wmFhwsz5N/84MKZTCPhFYZVOoZRA6aFOxFOa15Q2rRyiLiGVQ1lHoHBA1N9hTEPGxZWfScYWHcBmcqltuZYNZat7k7GyrWpRV5yjHb8TSv2cTxNJ+2IONTVZOK+Kezdkkt+d8+AyWs3/G/CK0eDov2lKmpfC3N3qNO7yd7Zr3dm1fse7RrKUFN2inaz3WsrPvuVmHwua6xWjK206VM5IFK6oyTDNkkmFjrybVnRpjIrFGWzU4IE5j7CUyOEqVmNRrJ7SNWJF5DkZ2x69k1dC4Tyo6TJB9pfM1tc/Hl6D0qIvtETxlVHVU7eDm9hVYgc0eUqw8dILxTe2Q1uZHXAxlhehCdysZnlKqwqqxwPZjNHNd55cazOrfaUaeHHK2J5ZPMLywxf+X0pYISWHVLJxu8TqO+drbLLxPlatKo4Xh7snFqeF5qm1teWe09D7d+1ZVmouKUYt4XstdrN3PLlpKpRTs5PHZ4ZbrLFv2X8y+mubhacsUpQxYWvve9JLg1lY+h0bRsVJJZxjVjF+9Jwnn7zeeWVskfN0qVStaU8MPdhL3neSTeXO6v6uehoilRkoLeqcmpPEpNrnxt4rkTt8XuvttCta3wvO0XJNbXfDyzNLpnm6LV+GTi49iV0uzdmenF3SzvdXT5HOxr5uZLL+oumPGmVUB0rFI4Xr8RcBbFp5gUBvJ5+RO4MFxpoEbnO/Hfp6J8k+w1CAtEuUuxlUZi82Nzrmpf6f0O9gRto1LlLGZKzbHxdwpk1MOM92vFqtzsRHGdiItCqDqqZFMZMC2Kqg6xGZMdEcX1p4f27K845u2H4crL1tPVaPK+0abxbW3K9lbJciGPLhscZXeJ2d9oPY1CleCu3O2crzWd7LZZWfmNKLi7yVnts1nlxv2DVKzm0o5LE7pZ573y2A1J+jTU22pK0bxljTi7K2znm9tvoe3o2iKq7U80rNt2zW92T57rbDzNCjKVWFN4bNxWJOSsrbXbvySPfeiOm4yWTUpXj/i5YWnZZXVwtej4/VbNFiqccFVXV/dlK+y6yT22vuNWO37E6dabThK7wtyxN92S2bl58zsIRj5+vciqrna0jgDFGnn9L4wYmPSjcrqo/eC86Z14oKQ2I6USTiWVrylV1iDrSCgWhSuGa35SLU6ti/tRCNAf2cv+cYvyY+GUhlIhGQ2M6MYvcZMz647XA1JGnEgqoY3IKYhujURRVDAmUjIC24zkrmZSKRqAWDSo/wC5KTT+JJXzV9xsehxUo4VZ1E27O1uzx6lsY6qdgYYlT0XDOaTzwxnF7/jS3Z5JvoezCbbTlK87JyusSfP3s78zzqCUqied9XWjl93VyfyGjWtdpK7STds3YzYee/69KVRE2+Zj152uJlrucpJGTWDJsdGNWsCpmeJSMgtOL4jlISMx8SKdLGilUTNMLbjDGskMtPS4Gp059S/T0Yx4Ma74o8erpze8l7W+KLyHhft8ffmcmBUuY6om9h0ExsQyoIOpRbEVMKYcKFduJbFqikFTI3A5pbWPpa0qoMqh5tTTYrZn2bDHW0ycsti5Fh2vX0j7SjDL4pcE8l2s86p9r1G77I8ItrxMNho02+8sOvV0X7cXuxkpXUvijKzXb18D04aapJatqVnmpJYtnjn8+B817HJ7k+9WDHRakXdXTyz7P2uGO/Py9T+zXuP7Uwu042z2r6G+hpUZK6Z8+q91/uxeS+JJqSWStz37R40rXdOV7WvZpSy5bH/JeMavPPX8fTQqotGqfNUtNlHKeXC6cTVHTuZi8OV5se3KsTdQ8yOm8mP7YuDM4y3Oo0I9JZjde+/qLrOaY4Na5aSwa9mZTCpEmnWhxkEGwJ84tIfF/pf0HWkc30aM1gpC461a/wDEdr+b6IzL1tDf1mJ1odbmLreT8CWL1kcvWZJXH2nOEXx8RVBchk7cBIOguaJShwcO/PyZfH+ESVXlHo/oWrUVGS/tvsukTelf4QfZK40pRXBdlJv5EpaXZ5Nv8jX/AFLyOq09Jb3JZ8zXT0x59Mv5yMmiaVnK7ir/AHr8jfRqxvlKL7LsPJ14tFaTJ/0x71+5WKvtUen7jpjx7i8qb3SQT3PK97ZW7LHS0dPakuxW8iuLs6/scp9niGs+dJGjb0x1TXIZesh0ZtBFTC4jBuWoigMoc2Mu/wBd4c/5Zaipczsyi7uv7Bs+Piw0PmA3FuFPmacIN0FPkC51y1o1/WYUxL+sji0bFE+wdS7CK9ZsZesh06rj9WM868N8ortUH82V6dCM5bfdv3INWskpx+/v/pp03/1FdSN/ibvyw/8AFE6tSKbvGKd9jUG/ILqvLa1wUJ5dEWqVt0OSxbJP8zj3XZvhVXBLZtmpeFzydF+JXhPtcbPxN+j24NdtSNw124rW5r+Bk/xCX7P1XGxfh8QtXV9nVuDHi+T/AFW+ZFP8PcmMo9n6UUZ1oUudvzIOKP3v/r9yKgvSihlUit/j9CUqqt6dxk0R1y9XZyqcn0I60KXaOperMzRqP7vVpD45cIrtkgq1pX5ulg2/H1My0hLbOmujO9sj/ch+h/QmfJ85cNxEFXFwNcPreA6/rIlhs/SCl6yJuXq51/WZFVJ8hl2oz35+COxL73iQ8v8AGvLiJJx34n1RlvHi33sGW7yf1JeaFeMnJ4bKN+NROxKejTdveeX+Kfm8zRKL24rL8MUvEnOpHfN/lbflclOnaPorjK/vZf401frI36PCKlitNO983DbxRgVaKafvvtUfnY1x0hZWklfdibl0SB2+O16N47lL9L+p2Lk/AjTmuLfYii7Jd5N9mxPh4nXfLvbFae5I7C+KRMKKHOP6L+Y8ct/gl8jO4rfPxAnBb31Ja2Y197xuDXxX9XQyy0mHG/V/MMdJW6L6BKb1n8q70iPCT72DXR/t37biRqyeyPruKxnPs6fMWfdGM3upLpcfFP8Atx/T+wsa9vin+XKwfbY8V0Zlqevt87rOT6nY393q2NiXq52Lgjft58v6W8uSDafHog4nxt4AclvfiSz9rsEt8vE7U8ZPxEdWPFdwuvjxbL0M5/VlRjzHjCPpmf2hbkxlpD3RL0t4aUlwXiJWk90ox7cmTxTe5IN5b3Ymtn1GWrTTfvVE3yhKT6naiFv/AHSvwhh8y06lt9/zfS5N1Ha9tnGMrdXYlt/BjQgtlOe7OdSK8jZGpFWtCmtnN5LsPN9rXHPh7nyuzXSqNq6i3+q3ikib58tbVpj3LpdB103sQtKX4V3r5MZzW+S6A11zZ/a733vDq3vfkhJVo8WxPaYrd5sGdn6rqo75ebHjThwk+4zPTeCXQHtkxZ8uG+C4Qt2jtvkuh5usqPj5eY0Yye1+JmWN3r/G9t75dGTajvk2RjQ9MrGnFbfoNU2/Q2hwkxsEeD6I5aRGO4P+o8l0DDvMfOa2b2HYaj4mpP0jm/TZt5vD9rMtHlvfiMtGW9+Ze/Z5nazn0RHx5JHRlwb8CkaC4LvdxdZ+JnX5dWBniqopcF3IZNcSN3yXQZX4vuI7+RVW4ME58MN+b+gmBb/FoF4oltJWcpf1JfhxeZnjovFuXdfzbLVpX+FuK5JX6snq1azc32yfyIaMNGS+9+rD5WLQpcEvMRPCskkuniDXL7y7s/IDPf6o+07DzFptPf8AI0QgiP8Ayt9kjBDqC4Nj40ga7gH/AK1OZ+OVJvckUjRttZCVV8Sbn2lsXqNycVzGdYxRkUUg3239L61viKyb0lLYSlpIud6n3WlRXN+B1lwX6kYZV2xdYyZ8p9QtnvYdX2kXXYjqM0x6asK/lnYkuHcrmS4bEPLPppdZc/BCuty65kUhkS8qfXPcdikwJhxkNFQYypCaxnYiXpSpCy92zfPYZsFR7ZRS/wAbplcxZyUfiaXbt6A1L/iC0JXvKbfdmWp0Iri3zZGppsVsUpdzS8TqekTk8oWXNMmprZHLYrdiGV3+7JJO928rZrnfcO6qBqyfdVVM5qxHXekdie4LKp1Ppa4jmI4ve/mApgt6+lNbw+ojk3xY0XyXmVjK4WxuS2e6lGk2UVDiF1V/DFddcDWsZJ/VI00Pgj6TMj0gXXllXlJ9MVw3FHSNOLkxkFIZEgChh4otanJLDKBRIDDW/CR0aY9kiLkTbJm2T6anVSMlSlBu7V3228gXAWLytOrLZFdENjZM5CNp7nIBxJRBTJXFbM2aZ1jRi5iOS4vpYhJi3Kcq/JWjWCyqtkTjWM+VUxgxCAIafEdiFCSf/9k="),
                Image.network("https://img.freepik.com/free-photo/abstract-vivid-colored-autumn-leaf_23-2148239743.jpg"),
                Text("NEWONE",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
              ],
            ),
          ),
        ),
    );
  }
void getValue()async{
var SharedPrefs =await SharedPreferences.getInstance();
var loggedin = SharedPrefs.getBool(KEYLOGIN);
Timer(Duration(seconds: 2),(){
if(loggedin!=null){
  if(loggedin){
 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HOMEPAGE(),));
  }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LOGIN(),));
  }
}else{
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LOGIN(),));
}
});
}
}











class LOGIN extends StatefulWidget {
  const LOGIN({super.key});

  @override
  State<LOGIN> createState() => _LOGINState();
}

class _LOGINState extends State<LOGIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
            ),
            child: FloatingActionButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MyExperi();
              }));
            },
            child: Center(
              child: Column(
                children: [
                  Container(
                   width: 300,
                  height: 400,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        // color: Colors.deepPurple,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text("LOGIN FORM",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.amber),),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                                 OutlinedButton(onPressed: (){}, child:Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text("LOGIN",style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            ),
                            
                            OutlinedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return SIGNUP();
                              }));
                            }, child:Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                             child: Text("SIGNUP",style: TextStyle(color: Colors.white),),
                              ),
                              ),
                            ),
                          ],
                        ),
             
                        SizedBox(height: 25,),
                        Container(
                          width: 250,
                          child: Center(
                            child: Column(
                              children: [
                                TextField(
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    label: Text("EMAIL",style: TextStyle(color: Colors.amber),),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.amber, 
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15,),
                                TextField(
                                  keyboardType: TextInputType.numberWithOptions(),
                                  decoration: InputDecoration(
                                    label: Text("PASSWORD",style: TextStyle(color: Colors.amber),),
                                    focusColor: Colors.white,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.amber,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                                    SizedBox(height: 30,),
                                    TextButton(onPressed: (){}, child:Text("Forget Password??",style: TextStyle(color: Colors.amber),) ),
                                SizedBox(height: 30,),
                                   OutlinedButton(onPressed: ()async{
                                    var SharedPrefs =await SharedPreferences.getInstance();
                                    var loggedin=SharedPrefs.setBool(_ONEAPPState.KEYLOGIN, true);
                                     
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                      return HOMEPAGE();
                                    }));
                                   }, child:Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text("LOGIN",style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            ),
                        

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ),
          ),
        ],
      ),
     ),
    );
  }
}

class SIGNUP extends StatefulWidget {
  const SIGNUP({super.key});

  @override
  State<SIGNUP> createState() => _SIGNUPState();
}

class _SIGNUPState extends State<SIGNUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 480,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
              child: FloatingActionButton(onPressed: (){},
              backgroundColor: Colors.blueGrey,
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 480,
                      decoration: BoxDecoration(
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Text("SIGNUP FORM",style: TextStyle(color: Colors.amber,fontSize: 20,fontWeight: FontWeight.bold),),
                             SizedBox(height: 15,),
                          Row(
                            children: [
                                   OutlinedButton(onPressed: (){
                                    Navigator.pop(context,MaterialPageRoute(builder: (context){
                                      return LOGIN();
                                    }));
                                   }, child:Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text("LOGIN",style: TextStyle(color: Colors.white),),
                                ),
                              ),
                              ),
                              
                              OutlinedButton(onPressed: (){},
                               child:Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                               child: Text("SIGNUP",style: TextStyle(color: Colors.white),),
                                ),
                                ),
                              ),
                            ],
                          ),
                          
                          SizedBox(height: 15,),
                          Container(
                            width: 250,
                            child: Center(
                              child: Column(
                                children: [
                                           SizedBox(height: 15,),
                                  TextField(
                                    keyboardType: TextInputType.numberWithOptions(),
                                    decoration: InputDecoration(
                                      label: Text("Full Name",style: TextStyle(color: Colors.amber),),
                                      focusColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.amber,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                    SizedBox(height: 15,),
                                  TextField(
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      label: Text("EMAIL",style: TextStyle(color: Colors.amber),),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.amber, 
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  TextField(
                                    keyboardType: TextInputType.numberWithOptions(),
                                    decoration: InputDecoration(
                                      label: Text("PASSWORD",style: TextStyle(color: Colors.amber),),
                                      focusColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.amber,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                   SizedBox(height: 15,),
                                  TextField(
                                    keyboardType: TextInputType.numberWithOptions(),
                                    decoration: InputDecoration(
                                      label: Text("Confirm Password",style: TextStyle(color: Colors.amber),),
                                      focusColor: Colors.white,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.amber,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          width: 2,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                      SizedBox(height: 15,),
                                      TextButton(onPressed: (){}, child:Text("Forget Password??",style: TextStyle(color: Colors.amber),) ),
                                  SizedBox(height: 15,),
                                     OutlinedButton(onPressed: (){}, child:Container(
                                height: 40,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Text("SIGNIN",style: TextStyle(color: Colors.white),),
                                ),
                              ),
                              ),
                                ],
                              ),
                            ),
                          ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ),
            
          ),
        ],
      ),
     ),
  
    );
  }
}

class HOMEPAGE extends StatefulWidget {
  const HOMEPAGE({super.key});

  @override
  State<HOMEPAGE> createState() => _HOMEPAGEState();
}

class _HOMEPAGEState extends State<HOMEPAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://plus.unsplash.com/premium_vector-1721890983105-625c0d32045f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0"))
                ),
              ),
              SizedBox(height: 90,),
              FloatingActionButton(onPressed: ()async{
                var SharedPrefs =await SharedPreferences.getInstance();
                var loggedin=SharedPrefs.setBool(_ONEAPPState.KEYLOGIN, false);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LOGIN(),));
              },
              backgroundColor: Colors.amber,
              child: Text("LOGOUT",style: TextStyle(color: Colors.blue),),
              
              ),
            ],
          ),
        ),
      ),
    );
  }
}
