import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_wallpaper_manager/flutter_wallpaper_manager.dart';
import 'package:permission_handler/permission_handler.dart';


void main() {
  runApp(WallpaperApp());
}

class WallpaperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallpaper App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  final Map<String, List<String>> wallpapers = {
    "Nature": [
      "https://picsum.photos/id/1015/400/800",
      "https://picsum.photos/id/1016/400/800",
      "https://picsum.photos/id/1084/400/800",
      "https://picsum.photos/id/1026/400/800",
      "https://picsum.photos/id/1036/400/800",
    ],
    "Cars": [
 "https://picsum.photos/id/1011/400/800",
"https://picsum.photos/id/1024/400/800",
"https://picsum.photos/id/1025/400/800",
"https://picsum.photos/id/1031/400/800",
"https://picsum.photos/id/1084/400/800",
    ],
    "Animals": [
      "https://picsum.photos/id/1025/400/800",
      "https://picsum.photos/id/1024/400/800",
      "https://picsum.photos/id/1026/400/800",
      'https://picsum.photos/id/237/500/800',
      'https://picsum.photos/id/1003/500/800',
      // "https://images.pexels.com/photos/247502/pexels-photo-247502.jpeg",     
    ],
    "Humans":[
      "https://picsum.photos/id/1013/400/800",
       "https://picsum.photos/id/1011/400/800",
      " https://picsum.photos/id/1036/400/800",
       'https://picsum.photos/id/1004/500/800',
       'https://picsum.photos/id/1005/500/800',
    ],
  };

  Future<void> applyWallpaper(String url) async {
    // Request permission
    await Permission.storage.request();

    // Apply as wallpaper (Android only)
    int location = WallpaperManager.HOME_SCREEN;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: wallpapers.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Wallpaper Categories"),
          bottom: TabBar(
            isScrollable: true,
            tabs: wallpapers.keys.map((category) => Tab(text: category)).toList(),
          ),
        ),
        body: TabBarView(
          children: wallpapers.entries.map((entry) {
            return GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemCount: entry.value.length,
              itemBuilder: (context, index) {
                String imgUrl = entry.value[index];
                return Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                          child: CachedNetworkImage(imageUrl: imgUrl, fit: BoxFit.cover),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              applyWallpaper(imgUrl);
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Wallpaper Applied!")),
                              );
                            },
                            icon: Icon(Icons.wallpaper),
                            label: Text("Apply"),
                          ),
                          TextButton.icon(
                            onPressed: () {
                              // Just removes from UI
                              entry.value.removeAt(index);
                              (context as Element).markNeedsBuild();
                            },
                            icon: Icon(Icons.delete),
                            label: Text("Delete"),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}