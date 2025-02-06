import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:opensooqe/frontend/screens/allchats.dart';
import 'package:opensooqe/frontend/screens/homePage.dart';
import 'package:opensooqe/frontend/screens/profilePage.dart';
import 'package:opensooqe/frontend/widgets/const.dart';

class CustomeNavigationBar extends StatefulWidget {
  const CustomeNavigationBar({super.key});

  @override
  State<CustomeNavigationBar> createState() => _CustomeNavigationBarState();
}

class _CustomeNavigationBarState extends State<CustomeNavigationBar> {
  int _selectedIndex = 1; // لبدء التطبيق من العنصر الأوسط
  List<Widget> pages = [AllChats(), Homepage(), ProfilePage()]; // قائمة الصفحات

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex], // عرض الصفحة بناءً على الفهرس المحدد
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex, // تحديد الفهرس الافتراضي
        backgroundColor: kapp, // خلفية الشريط
        animationDuration: const Duration(milliseconds: 300),
        color: kbackground, // لون الشريط
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // تحديث الفهرس عند النقر
          });
        },
        items: const [
          Icon(Icons.chat, color: Colors.white),
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.account_circle, color: Colors.white),
        ],
      ),
    );
  }
}
