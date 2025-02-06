import 'package:flutter/material.dart';
import 'package:opensooqe/frontend/widgets/const.dart';

class CustomePrudacts extends StatelessWidget {
  const CustomePrudacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            '/products-page',
          );
        },
        child: Column(
          children: [
            Container(
              height: 270,
              decoration: BoxDecoration(
                color: kapp,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none, // يسمح بخروج العناصر عن الحواف
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image:
                                AssetImage("assets/sample.jpg"), // صورة المنتج
                            fit: BoxFit.cover, // يملأ المساحة بالكامل
                          ),
                        ),
                      ),
                      Positioned(
                        top: 140, // مكان ظهور الكرت
                        left: 10,
                        child: Container(
                          width: 140,
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                            color: kapp,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 21,
                                backgroundColor: Colors.blue,
                                child: Icon(Icons.face,
                                    size: 30, color: Colors.amber),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Khaled",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Title",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white60,
                              ),
                            ),
                            Text(
                              "12 JD",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
