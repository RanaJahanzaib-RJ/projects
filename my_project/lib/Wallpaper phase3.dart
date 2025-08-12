import 'package:flutter/material.dart';
import 'package:my_project/WallpaperCategorie.dart';
void main(){
  runApp(WAllPaperHub());
}

class WAllPaperHub extends StatelessWidget {
  const WAllPaperHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

 List <String> arrUrl = [
    "https://www.pexels.com/photo/charming-boutique-entrance-in-lokken-32796144/",
    "https://www.pexels.com/photo/boat-on-sea-near-island-19571069/",
    "https://www.pexels.com/photo/happy-couple-walking-in-brunehaut-park-29265409/",
    "https://www.pexels.com/photo/woman-in-yellow-shirt-using-smartphone-outdoors-32822638/",
    "https://www.pexels.com/photo/yellow-taxi-in-front-of-historic-new-york-building-32438150/",
    "https://www.pexels.com/photo/stunning-yellow-european-church-against-blue-sky-32801872/",
    "https://www.pexels.com/photo/red-and-white-textile-hanging-on-white-wall-13743196/",
    "https://www.pexels.com/photo/charming-french-bistro-exterior-in-lyon-32614661/",
    "https://www.pexels.com/photo/rustic-coffee-mug-on-sunlit-table-surface-32800596/",
    "https://www.pexels.com/photo/couple-in-traditional-attire-with-scenic-mountain-view-32798584/",
    "https://www.pexels.com/video/horseback-adventure-on-cappadocia-trails-32282234/",
    "https://www.pexels.com/photo/serene-garden-escape-in-prague-s-greenery-32662657/",
    "https://www.pexels.com/photo/brunette-model-in-dress-16654239/",
    "https://www.pexels.com/photo/iconic-petra-treasury-through-al-siq-canyon-32111981/",
    "https://www.pexels.com/photo/people-walking-with-camels-at-sunset-7007275/",
    "https://www.pexels.com/photo/man-riding-electric-bike-20409358/",
    "https://www.pexels.com/photo/portrait-of-a-smiling-siberian-husky-dog-31452622/",
    "https://www.pexels.com/photo/tokyo-nighttime-crosswalk-from-above-32283936/",
    "https://www.pexels.com/photo/view-of-a-beach-from-a-silhouetted-cave-20042965/",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      title: widgetBrandName(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xfff5f8fd),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Expanded(
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: "Search Wallpaper",
                          border: InputBorder.none,
                        ),
                      ),
                      ),
                      Icon(Icons.search),
                    ],
                  ), 
                ),
           SizedBox(height: 15,),
           WidgetBrandTag(),
            SizedBox(height: 26,),
           WidgetBrandRole(),
           SizedBox(height: 30,),
         WidgetLIstview(),
           
          ],
        ),
      ),
    );
  }
}

