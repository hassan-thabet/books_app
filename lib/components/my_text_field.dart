import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final IconData iconData;
  final TextEditingController controller;

  final bool isSecure;
  final IconData? suffixIconData;
  final VoidCallback? visibilityOnTap;

  MyTextField({
    required this.hint,
    required this.iconData,
    required this.controller,
    required this.isSecure,
    this.visibilityOnTap,
    this.suffixIconData,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isSecure,
      decoration: InputDecoration(
        icon: Icon(iconData),
        suffixIcon: IconButton(
          onPressed: visibilityOnTap,
          icon: Icon(
            suffixIconData,
            color: Colors.grey,
            size: 18,
          ),
        ),
        hintText: hint,
        border: InputBorder.none,
      ),
      cursorColor: Colors.black54,
    );
  }
}
