import 'package:flutter/material.dart';
import 'package:opensooqe/frontend/screens/chatPage.dart';
import 'package:opensooqe/frontend/widgets/const.dart';

class AllChats extends StatelessWidget {
  const AllChats({super.key});

  @override
  Widget build(BuildContext context) {
    // قائمة المحادثات (مثال بيانات)
    final List<Map<String, String>> chats = [
      {
        "name": "Ahmed",
        "lastMessage": "Hello, how are you?",
        "time": "10:30 AM",
      },
      {
        "name": "Dana",
        "lastMessage": "See you later!",
        "time": "9:15 AM",
      },
      {
        "name": "Omar",
        "lastMessage": "Okay, thanks!",
        "time": "Yesterday",
      },
      {
        "name": "Layla",
        "lastMessage": "I'll call you back.",
        "time": "Yesterday",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Chats"),
        backgroundColor: kapp,
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Text(chat["name"]![0], // أول حرف من الاسم
                  style: const TextStyle(color: Colors.white)),
            ),
            title: Text(
              chat["name"]!,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            subtitle: Text(
              chat["lastMessage"]!,
              style: TextStyle(color: Colors.white70),
            ),
            trailing: Text(
              chat["time"]!,
              style: TextStyle(color: Colors.white54),
            ),
            onTap: () {
              // عند الضغط على المحادثة، يتم الانتقال إلى صفحة الدردشة مع هذا الشخص
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const ChatPage(), // صفحة المحادثة الفردية
                ),
              );
            },
          );
        },
      ),
      backgroundColor: kbackground, // خلفية داكنة
    );
  }
}
