import 'package:flutter/material.dart';

import '../utils/styles.dart';

class customButton extends StatelessWidget {
  const customButton({
    super.key,
    this.onTap, required this.text,
  });
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 73,
        decoration: ShapeDecoration(
          color: const Color(0xFF34A853),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            // 'Complete Payment',
            text,
            textAlign: TextAlign.center,
            style: Styles.styles22,
          ),
        ),
      ),
    );
  }
}
