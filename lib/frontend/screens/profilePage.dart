import 'package:flutter/material.dart';
import 'package:opensooqe/frontend/screens/AddProductPage.dart';
import 'package:opensooqe/frontend/widgets/const.dart';
import 'package:opensooqe/frontend/widgets/custome_my_products.dart';
import 'package:opensooqe/frontend/widgets/custome_prudacts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: kapp,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: kapp,
                        child: Image.asset("images/man (1).png"),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "User name",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "email@example.com",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: Stack(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.notifications,
                            size: 30, color: Colors.black54),
                        onPressed: () {
                          // إضافة أكشن عند الضغط
                        },
                      ),
                      Positioned(
                        right: 5,
                        top: 5,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            "3", // عدد الإشعارات
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Stack(
              children: [
                ListView(
                  children: [
                    SizedBox(
                      height: 320,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return const CustomeMyProducts();
                        },
                      ),
                    ),
                    const SizedBox(height: 20), // ✅ توفير مساحة للزر العائم
                    // إعدادات أساسية
                    ListTile(
                      leading:
                          const Icon(Icons.settings, color: Colors.white60),
                      title: const Text("الإعدادات",
                          style:
                              TextStyle(fontSize: 16, color: Colors.white60)),
                      onTap: () {
                        // انتقل إلى صفحة الإعدادات
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.lock, color: Colors.white60),
                      title: const Text("تغيير كلمة المرور",
                          style:
                              TextStyle(fontSize: 16, color: Colors.white60)),
                      onTap: () {
                        // تنفيذ تغيير كلمة المرور
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.logout, color: Colors.red),
                      title: const Text("تسجيل الخروج",
                          style: TextStyle(fontSize: 16, color: Colors.red)),
                      onTap: () {
                        // تنفيذ تسجيل الخروج
                      },
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddProductPage()),
                      );
                    },
                    backgroundColor: kapp,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(Icons.add, size: 30, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
