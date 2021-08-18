import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  NormalButton({
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: APP_MAIN_COLOR),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            label,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        )),
      ),
    );
  }
}
