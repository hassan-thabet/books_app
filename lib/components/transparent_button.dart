
import 'package:content/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  TransparentButton({
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      onPressed: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                label,
                style: TextStyle(fontSize: 22, color: APP_MAIN_COLOR),
              ),
            )),
      ),
    );
  }
}
