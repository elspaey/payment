import 'package:flutter/material.dart';

import 'features/checkOutFeatures/presentation/views/my_cart_view.dart';

void main() {
  runApp(const checkOutApp());
}

class checkOutApp extends StatelessWidget {
  const checkOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
