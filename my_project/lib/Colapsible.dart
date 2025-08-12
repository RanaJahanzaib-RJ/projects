import 'package:flutter/material.dart';

void main() {
  runApp(CollapsibleSidebarApp());
}

class CollapsibleSidebarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Collapsible Sidebar',
      home: CollapsibleSidebarPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CollapsibleSidebarPage extends StatefulWidget {
  @override
  _CollapsibleSidebarPageState createState() => _CollapsibleSidebarPageState();
}

class _CollapsibleSidebarPageState extends State<CollapsibleSidebarPage> {
  bool isCollapsed = false;
  double maxWidth = 200;
  double minWidth = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: isCollapsed ? minWidth : maxWidth,
            color: Colors.blueGrey[900],
            child: Column(
              children: [
                IconButton(
                  icon: Icon(
                    isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      isCollapsed = !isCollapsed;
                    });
                  },
                ),
                SizedBox(height: 20),
                _buildSidebarItem(Icons.home, "Home"),
                _buildSidebarItem(Icons.person, "Profile"),
                _buildSidebarItem(Icons.settings, "Settings"),
                _buildSidebarItem(Icons.logout, "Logout"),
              ],
            ),
          ),

          // Main content
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: Center(
                child: Text(
                  "Main Content Area",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          if (!isCollapsed)
            SizedBox(width: 10),
          if (!isCollapsed)
            Expanded(
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}