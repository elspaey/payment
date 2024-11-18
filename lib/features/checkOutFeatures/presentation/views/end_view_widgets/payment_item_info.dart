import 'package:flutter/material.dart';
import 'package:flutter_application_6/core/utils/styles.dart';

class paymentItemInfo extends StatelessWidget {
  const paymentItemInfo({super.key, required this.title, required this.vlaue});
  final String title, vlaue;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, textAlign: TextAlign.center, style: Styles.styles18),
        Text(vlaue, style: Styles.stylesBold18)
      ],
    );
  }
}
