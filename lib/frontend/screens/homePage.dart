import 'package:flutter/material.dart';
import 'package:opensooqe/frontend/widgets/BottomSheet.dart';
import 'package:opensooqe/frontend/widgets/const.dart';
import 'package:opensooqe/frontend/widgets/customeIcon.dart';
import 'package:opensooqe/frontend/widgets/customeSearch.dart';
import 'package:opensooqe/frontend/widgets/custome_prudacts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: const CustomSearchField(),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Customeicon(
                      imagePath: "images/brush.png",
                      label: 'Art',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Customeicon(
                      imagePath: "images/photo.png",
                      label: 'Photography',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Customeicon(
                      imagePath: "images/music-notes.png",
                      label: 'Music',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Products",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.filter_list_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      showFilterBottomSheet(
                          context); // ✅ استدعاء BottomSheet عند الضغط
                    },
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const CustomePrudacts();
              },
            ),
          ],
        ),
      ),
    );
  }
}
