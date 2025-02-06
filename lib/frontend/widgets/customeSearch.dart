import 'package:flutter/material.dart';
import 'package:opensooqe/frontend/widgets/const.dart';

class CustomSearchField extends StatefulWidget {
  const CustomSearchField({Key? key}) : super(key: key);

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
      child: GestureDetector(
        // onTap: () {
        //showSearch(context: context, delegate: CustomSearch());
        //},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
            color: kapp,
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Search here..."),
              const Icon(Icons.search, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
