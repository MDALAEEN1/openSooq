import 'package:flutter/material.dart';
import 'package:opensooqe/frontend/screens/chatPage.dart';
import 'package:opensooqe/frontend/screens/productPage.dart';
import 'package:opensooqe/frontend/widgets/CustomeNavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CustomeNavigationBar(),
      routes: {
        '/products-page': (context) => ProductPage(),
        '/chat-page': (context) => ChatPage()
      },
    );
  }
}
