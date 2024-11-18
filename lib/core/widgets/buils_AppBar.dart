import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/styles.dart';

AppBar buildAppBar({required final String Title, void Function()? onTap}) {
  return AppBar(
    leading: GestureDetector(
      onTap: onTap,
      child: Center(
        child: SvgPicture.asset(
          "assets/Images/Arrow1.svg",
        ),
      ),
    ),
    backgroundColor: Colors.transparent,
    centerTitle: true,
    title: Text(Title, textAlign: TextAlign.center, style: Styles.styles25),
  );
}
