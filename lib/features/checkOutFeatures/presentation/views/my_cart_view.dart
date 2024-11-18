import 'package:flutter/material.dart';

import '../../../../core/widgets/buils_AppBar.dart';
import 'my_cart_view_widgets/my_cart_ViewBody.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar(Title: "My Cart"),
      body: const MyCartViewbody(),
    ));
  }
}
