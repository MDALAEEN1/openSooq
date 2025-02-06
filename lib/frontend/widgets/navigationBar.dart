import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // لون الخلفية
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), // تقويس الزوايا العلوية
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // لون الظل
            blurRadius: 10, // درجة التمويه
            spreadRadius: 2, // انتشاره
            offset: const Offset(0, -3), // تحديد اتجاه الظل
          ),
        ],
      ),
      padding:
          const EdgeInsets.symmetric(vertical: 10), // رفع النافيقيشن بار قليلاً
      child: NavigationBar(
        height: 60, // التحكم في ارتفاع النافيقيشن بار
        backgroundColor: Colors.transparent, // شفاف ليأخذ لون `Container`
        indicatorColor: Colors.blue.withOpacity(0.2), // لون المؤشر عند التحديد
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home, color: Colors.blue),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search_outlined),
            selectedIcon: Icon(Icons.search, color: Colors.blue),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_outlined),
            selectedIcon: Icon(Icons.notifications, color: Colors.blue),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person, color: Colors.blue),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
