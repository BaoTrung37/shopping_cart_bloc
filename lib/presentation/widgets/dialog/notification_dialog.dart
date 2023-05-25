import 'package:flutter/material.dart';
import 'package:shoppingcart/presentation/widgets/app_text_buton.dart';

Future<bool?> showNotificationDialog(
  BuildContext context, {
  required String title,
  String? content,
  required VoidCallback onTap,
}) async {
  return showDialog(
    builder: (context) => AlertDialog(
      shape: ShapeBorder.lerp(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        1,
      ),
      contentPadding: const EdgeInsets.all(16),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          AppTextButton(
            onTap: () {
              Navigator.of(context).pop();
              onTap.call();
            },
            title: 'Back To Home',
          )
        ],
      ),
    ),
    context: context,
  );
}
