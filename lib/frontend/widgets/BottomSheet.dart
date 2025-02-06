import 'package:flutter/material.dart';
import 'package:opensooqe/frontend/widgets/const.dart';

/// دالة لعرض BottomSheet عند الضغط على زر الفلتر
void showFilterBottomSheet(BuildContext context) {
  double minPrice = 0; // السعر الأدنى
  double maxPrice = 1000; // السعر الأعلى
  RangeValues selectedRange = const RangeValues(100, 500);

  showModalBottomSheet(
    context: context,
    backgroundColor: kbackground,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Filter by",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),

                // تصفية حسب تاريخ النشر
                ListTile(
                  leading: const Icon(Icons.access_time, color: Colors.white),
                  title: const Text("Date Published",
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    _selectDate(context);
                  },
                ),

                // تصفية حسب السعر مع RangeSlider
                const Text(
                  "Price Range",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                // عرض القيم المختارة
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${selectedRange.start.toInt()}",
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      "\$${selectedRange.end.toInt()}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                // الـ RangeSlider للتحكم في نطاق الأسعار
                RangeSlider(
                  values: selectedRange,
                  min: minPrice,
                  max: maxPrice,
                  divisions: 20,
                  activeColor: Colors.blueAccent,
                  labels: RangeLabels(
                    "\$${selectedRange.start.toInt()}",
                    "\$${selectedRange.end.toInt()}",
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      selectedRange = values;
                    });
                  },
                ),

                const SizedBox(height: 20),

                // زر تطبيق الفلتر
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                    ),
                    onPressed: () {
                      print(
                          "Filtering by price: ${selectedRange.start} - ${selectedRange.end}");
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Apply Filters",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    },
  );
}

/// دالة لاختيار تاريخ النشر
Future<void> _selectDate(BuildContext context) async {
  DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime.now(),
    builder: (context, child) {
      return Theme(
        data: ThemeData.dark(),
        child: child!,
      );
    },
  );

  if (pickedDate != null) {
    print("Selected Date: ${pickedDate.toLocal()}");
  }
}
