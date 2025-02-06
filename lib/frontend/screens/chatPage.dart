import 'package:flutter/material.dart';
import 'package:opensooqe/frontend/widgets/const.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  List<String> messages = [];

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      setState(() {
        messages.add(_messageController.text);
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      appBar: AppBar(
        title: const Text(
          'Username',
          style: TextStyle(color: Colors.white60),
        ),
        backgroundColor: kapp,
      ),
      body: Column(
        children: [
          // جزء عرض الرسائل
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Align(
                    alignment: (index % 2 == 0
                        ? Alignment.centerLeft
                        : Alignment.centerRight), // محاذاة الرسائل حسب الرقم
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: (index % 2 == 0
                            ? Colors.grey[300]
                            : Colors.blue[300]), // ألوان مختلفة للرسائل
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        messages[index],
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // جزء إدخال الرسالة
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                // حقل الإدخال
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    style: TextStyle(
                        color: Colors.white), // تغيير لون النص عند الكتابة
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      hintStyle: TextStyle(
                          color: Colors.white60), // تغيير لون hintText
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),

                // زر إرسال
                IconButton(
                  onPressed: _sendMessage,
                  icon: const Icon(Icons.send),
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
