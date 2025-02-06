import 'package:flutter/material.dart';
import 'package:opensooqe/frontend/widgets/const.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _detailsController =
      TextEditingController(); // تفاصيل المنتج

  // قائمة لتحديد نوع المنتج
  final List<String> _productTypes = [
    'Electronics',
    'Clothing',
    'Furniture',
    'Accessories'
  ];
  String? _selectedType; // لتخزين نوع المنتج المختار

  // قائمة لتحديد المنطقة
  final List<String> _regions = ['Amman', 'Zarqa', 'Irbid', 'Aqaba', 'Mafraq'];
  String? _selectedRegion; // لتخزين المنطقة المختارة

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      appBar: AppBar(
        title: const Text('Add a new product'),
        backgroundColor: kbackground,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  // ✅ منطق لاختيار صورة هنا
                },
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kapp,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child:
                        Icon(Icons.add_a_photo, size: 50, color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // عنوان المنتج
              const Text('Product Title',
                  style: TextStyle(color: Colors.white60, fontSize: 16)),
              const SizedBox(height: 5),
              TextField(
                controller: _titleController,
                style: TextStyle(color: Colors.white60),
                decoration: InputDecoration(
                  hintText: 'Enter product title',
                  hintStyle: TextStyle(color: Colors.white60),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15), // حواف الحقل
                  ),
                ),
              ),
              const SizedBox(height: 15),

              // سعر المنتج
              const Text('Price',
                  style: TextStyle(color: Colors.white60, fontSize: 16)),
              const SizedBox(height: 5),
              TextField(
                controller: _priceController,
                style: TextStyle(color: Colors.white60),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter product price',
                  hintStyle: TextStyle(color: Colors.white60),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // نوع المنتج (قائمة منسدلة)
              const Text('Product Type',
                  style: TextStyle(color: Colors.white60, fontSize: 16)),
              const SizedBox(height: 5),
              DropdownButtonFormField<String>(
                value: _selectedType,
                items: _productTypes.map((type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(
                      type,
                      style: TextStyle(
                          color: Colors.white60), // تغيير لون النص داخل القائمة
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedType = newValue;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15), // حواف الحقل
                    borderSide: BorderSide(
                        color: Colors.blue, width: 2), // تعديل لون الحواف
                  ),
                  hintText: 'Select product type',
                  hintStyle: TextStyle(color: Colors.white60),
                  filled: true,
                  fillColor: kbackground, // تغيير لون الخلفية داخل الحقل
                ),
                dropdownColor: kapp, // تغيير لون الخلفية لقائمة الخيارات
              ),
              const SizedBox(height: 20),

              // المنطقة (قائمة منسدلة)
              const Text('Region',
                  style: TextStyle(color: Colors.white60, fontSize: 16)),
              const SizedBox(height: 5),
              DropdownButtonFormField<String>(
                value: _selectedRegion,
                items: _regions.map((region) {
                  return DropdownMenuItem<String>(
                    value: region,
                    child: Text(
                      region,
                      style: TextStyle(
                          color: Colors.white60), // تغيير لون النص داخل القائمة
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedRegion = newValue;
                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  hintText: 'Select region',
                  filled: true,
                  fillColor: kbackground, // تغيير لون الخلفية داخل الحقل
                ),
                dropdownColor: kapp, // تغيير لون الخلفية لقائمة الخيارات
              ),
              const SizedBox(height: 20),

              // تفاصيل المنتج (مربع نص)
              const Text('Product Details',
                  style: TextStyle(color: Colors.white60, fontSize: 16)),
              const SizedBox(height: 5),
              TextField(
                controller: _detailsController,
                style: TextStyle(color: Colors.white60),
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Enter product details',
                  hintStyle: TextStyle(color: Colors.white60),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15), // حواف الحقل
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // زر إضافة المنتج
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // ✅ منطق حفظ المنتج هنا
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kapp,
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Add product',
                      style: TextStyle(fontSize: 18, color: Colors.white60)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
