import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onTap,
    required this.title,
    this.isActive = true,
  });

  final VoidCallback onTap;
  final String title;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive ? onTap : null,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: isActive ? Colors.orangeAccent : Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
