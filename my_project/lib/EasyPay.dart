// import 'package:flutter/material.dart';
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hello World',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hello World'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               width: 200,
//               height: 200,
//               color: Colors.red,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:my_project/EasyLOgin.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main(){
  runApp(MyApp(
  ),);
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Pay',
       debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
    ),
    home: Intropage(),
    );
  }
}
class Easypay extends StatelessWidget {
  const Easypay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
             backgroundImage: NetworkImage("https://images.pexels.com/photos/3778876/pexels-photo-3778876.jpeg"),
              ),
              accountName: Text('Rana Jahanzaib',style: TextStyle(fontSize: 17),),
             accountEmail: Text('Profile,Setting & More',style: TextStyle(fontSize: 10),),   
            ),
                      
             ListTile(
              leading: Icon(Icons.person),
              title: Text('Account level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
              ),
              ),
             ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Transaction History',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
              ),
              ),
             ),
              ListTile(
              leading: Icon(Icons.account_box_outlined),
              title: Text('Open NewGen Account',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
              ),
              ),
             ),
              ListTile(
              leading: Icon(Icons.wallet),
              title: Text('My Wallet',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
              ),
              ),
             ),
              ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Goals & Reward',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
              ),
              ),
             ),
              ListTile(
              leading: Icon(Icons.check_circle_outline),
              title: Text('My Approvals',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
              ),
              ),
             ),
              ListTile(
              leading: Icon(Icons.star),
              title: Text('My Favourites',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
              ),
              ),
             ),
              ListTile(
              leading: Icon(Icons.qr_code),
              title: Text('Become An easypay Merchant',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
              ),
              ),
             ),
              ListTile(
              leading: Icon(Icons.pages),
              title: Text('Tax Certificate',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
              ),
              ),
             ),
              ListTile(
              leading: Icon(Icons.connected_tv_outlined),
              title: Text('Subscribed Service',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
              ),
              ),
             ),
              ListTile(
              leading: Icon(Icons.security_outlined),
              title: Text('Secuirty Prefrence',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
              ),
              ),
              ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black,),
        title: Text('EASY PAY',style: TextStyle(fontSize: 30,color: Colors.black12,fontWeight: FontWeight.bold,
        shadows: [
          BoxShadow(
            color: Colors.yellowAccent,
            blurRadius: 3,
            offset: Offset(3, 3),
          ),
        ],
        ),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            child: Icon(Icons.search,color: Color(0xffd4d181),
            ),
          ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 5),
             child: CircleAvatar(
              radius: 12,
              child: Icon(Icons.notifications,color: Color(0xffd4d181),
              ),
             ),
           ),
        ],
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
      children: [
        Container(
          height: 150,
           width: double.infinity,
          color: Colors.green,
         child: Column(
          children: [
            Container(
              height: 135,
              width: 460,
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10), 
              ),
              
             child:   Padding(
               padding: const EdgeInsets.only(left: 20),
               child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('easypay',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold,
                  shadows: [
                    BoxShadow(
                      color: Colors.blue,
                      blurRadius: 3,
                      offset: Offset(3, 3),
                    ),
                  ],
                  ),
                  ),
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                
                     SizedBox(height: 450,),  
                    ElevatedButton(onPressed: ()async{
                      SharedPreferences sp =await SharedPreferences.getInstance();
                      sp.clear();
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                      return Intropage();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                     child: Text('LOGOUT',style: TextStyle(color: Colors.white),
                      ),
                    
                    ),
                    ],
                   ),
                 ),
                ],
               ),
             ),
            ),
          ],
         ),
        ),
        SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                // color: Colors.black,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.money_rounded,size: 20,),
                    SizedBox(height: 5,),
                    Text('Send Money',style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 45,),
              Container(
                height: 80,
                width: 80,
               decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.mobile_friendly,size: 20,),
                    SizedBox(height: 5,),
                    Text('Bill Payment',style: TextStyle(fontSize: 10),),
                  ],
                ),
              ),
              SizedBox(width: 45,),
                Container(
                height: 80,
                width: 80,
                 decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.mobile_screen_share,size: 20,),
                    SizedBox(height: 5,),
                    Text('Mobile package',style: TextStyle(fontSize: 10,),),
                  ],
                ),
              ),
            ],
           ),
         ),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 5),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('More With easypay',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
              ),
              Text('viewall',style: TextStyle(fontWeight: FontWeight.bold),),
            ],
           ),
         ),
         SizedBox(height: 15,),
         Container(
          height: 200,
          width: 450,
          
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image:NetworkImage
            ('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHBwBr_94g3Y0fMCnB2KDG549cdjtGaBbFFA&s')
            ),
            border: Border.all(
             color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
         ),
       
      ],  
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pop(context);
      },
      child: Text('Back',style: TextStyle(color: Colors.red),),
      backgroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),
        label: 'Home',
        ),
          BottomNavigationBarItem(icon: Icon(Icons.location_pin,color: Colors.black,),
        label: 'Cash Point',
        ),
          BottomNavigationBarItem(icon: Icon(Icons.scanner_outlined,color: Colors.black,),
        label: '',
        ),
          BottomNavigationBarItem(icon: Icon(Icons.speaker_sharp,color: Colors.black,),
        label: 'Promotions',
        ),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),
        label: 'My Account',
        ),
      ],
      ),
    );
  }
}



           
            //  ListTile(
            //   trailing: Icon(Icons.person),
            //   title: Text('Account level',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
            //   ),
            //   ),
            //  ),
            // ListTile(
            //   trailing: Icon(Icons.attach_money),
            //   title: Text('Transaction History',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
            //   ),
            //   ),
            //  ),
            //   ListTile(
            //   trailing: Icon(Icons.account_box_outlined),
            //   title: Text('Open NewGen Account',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
            //   ),
            //   ),
            //  ),
            //   ListTile(
            //   trailing: Icon(Icons.wallet),
            //   title: Text('My Wallet',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
            //   ),
            //   ),
            //  ),
            //   ListTile(
            //   trailing: Icon(Icons.favorite),
            //   title: Text('Goals & Reward',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
            //   ),
            //   ),
            //  ),
            //   ListTile(
            //   trailing: Icon(Icons.check_circle_outline),
            //   title: Text('My Approvals',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
            //   ),
            //   ),
            //  ),
            //   ListTile(
            //   trailing: Icon(Icons.star),
            //   title: Text('My Favourites',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
            //   ),
            //   ),
            //  ),
            //   ListTile(
            //   trailing: Icon(Icons.qr_code),
            //   title: Text('Become An easypay Merchant',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
            //   ),
            //   ),
            //  ),
            //   ListTile(
            //   trailing: Icon(Icons.pages),
            //   title: Text('Tax Certificate',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
            //   ),
            //   ),
            //  ),
            //   ListTile(
            //   trailing: Icon(Icons.connected_tv_outlined),
            //   title: Text('Subscribed Service',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
            //   ),
            //   ),
            //  ),
            //   ListTile(
            //   trailing: Icon(Icons.security_outlined),
            //   title: Text('Secuirty Prefrence',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,
            //   ),
            //   ),
            //   ),