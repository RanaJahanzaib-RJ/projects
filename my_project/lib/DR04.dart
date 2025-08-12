import 'package:flutter/material.dart';
class DoctorChatScreen extends StatefulWidget {
  const DoctorChatScreen({super.key});

  @override
  State<DoctorChatScreen> createState() => _DoctorChatScreenState();
}

class _DoctorChatScreenState extends State<DoctorChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> _messages = [];

  void _sendMessage() {
    String text = _controller.text.trim();
    if (text.isEmpty) return;

    // Add your message
    setState(() {
      _messages.add({'message': text, 'isUser': true});
    });

    _controller.clear();

    // Auto reply from doctor (simulate delay)
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _messages.add({
          'message': _generateDoctorReply(text),
          'isUser': false,
        });
      });
    });
  }

  String _generateDoctorReply(String userMessage) {
    // Customize this logic for smart replies
    if (userMessage.toLowerCase().contains("pain")) {
      return "Please describe the pain in detail.";
    } else if (userMessage.toLowerCase().contains("appointment")) {
      return "Sure, you can book your appointment for tomorrow.";
    } else {
      return "Thank you for your message. I will get back to you shortly.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/046/680/105/small/an-pakistani-female-doctor-on-isolated-transparent-background-png.png"), // use NetworkImage if needed
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dr. Amna Khan"),
                Text("Online", style: TextStyle(fontSize: 12)),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(12),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                return Align(
                  alignment: msg['isUser'] ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(12),
                    margin: EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                      color: msg['isUser'] ? Colors.blue[100] : Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(msg['message']),
                  ),
                );
              },
            ),
          ),
          _buildInputArea()
        ],
      ),
    );
  }

  Widget _buildInputArea() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "Type your message...",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
          ),
          SizedBox(width: 8),
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: IconButton(
              icon: Icon(Icons.send, color: Colors.white),
              onPressed: _sendMessage,
            ),
          )
        ],
      ),
    );
  }
}


class DoctorSettingsScreen extends StatefulWidget {
  const DoctorSettingsScreen({super.key});

  @override
  State<DoctorSettingsScreen> createState() => _DoctorSettingsScreenState();
}

class _DoctorSettingsScreenState extends State<DoctorSettingsScreen> {
  bool notification = true;
  bool messageOption = false;
  bool videoCallOption = false;
  bool callOption = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50], // light blue bottom background
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
          _buildSettingTile(
            icon: Icons.notifications,
            color: Colors.blue.shade100,
            title: "Notifications",
            value: notification,
            onChanged: (val) => setState(() => notification = val),
          ),
          _buildSettingTile(
            icon: Icons.message,
            color: Colors.purple.shade100,
            title: "Message Option",
            value: messageOption,
            onChanged: (val) => setState(() => messageOption = val),
          ),
          _buildSettingTile(
            icon: Icons.video_call,
            color: Colors.deepPurple.shade100,
            title: "Video Call Option",
            value: videoCallOption,
            onChanged: (val) => setState(() => videoCallOption = val),
          ),
          _buildSettingTile(
            icon: Icons.call,
            color: Colors.pink.shade100,
            title: "Call Optionn", // kept typo as in the image
            value: callOption,
            onChanged: (val) => setState(() => callOption = val),
          ),
          Expanded(child: Container()), // pushes items up
        ],
      ),
    );
  }

  Widget _buildSettingTile({
    required IconData icon,
    required Color color,
    required String title,
    required bool value,
    required Function(bool) onChanged,
  }) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(title),
        trailing: Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.blue,
        ),
      ),
    );
  }
}