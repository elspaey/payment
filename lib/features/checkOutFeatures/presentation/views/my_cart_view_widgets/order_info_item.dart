import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class orderInfoItem extends StatelessWidget {
  const orderInfoItem({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, textAlign: TextAlign.center, style: Styles.styles18),
        Text(value, textAlign: TextAlign.center, style: Styles.styles18)
      ],
    );
  }
}
