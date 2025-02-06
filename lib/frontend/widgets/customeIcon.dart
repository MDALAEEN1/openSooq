import 'package:flutter/material.dart';
import 'package:opensooqe/frontend/widgets/const.dart';

class Customeicon extends StatelessWidget {
  final IconData? icon;
  final String label;
  final String? imagePath; // صورة مخصصة للأيقونة
  final Color backgroundColor;
  final Color iconColor;

  const Customeicon({
    super.key,
    this.icon,
    required this.label,
    this.imagePath,
    this.backgroundColor = kapp,
    this.iconColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 32, // حجم الدائرة
          backgroundColor: backgroundColor,
          child: imagePath != null
              ? SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    imagePath!,
                    fit: BoxFit.contain, // جعل الصورة متناسقة داخل الدائرة
                  ),
                )
              : Icon(
                  icon ?? Icons.help, // إذا لم يتم توفير صورة، استخدم أيقونة
                  size: 32,
                  color: iconColor,
                ),
        ),
        const SizedBox(height: 6), // مسافة بين الأيقونة والنص
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
