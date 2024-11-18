import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class cardInfoWidget extends StatelessWidget {
  const cardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 23),
        child: Row(
          children: [
            SvgPicture.asset("assets/Images/MasterCard_logo.svg"),
            SizedBox(
              width: 23,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Credit Card"), Text("Mastercard **78")],
            )
          ],
        ),
      ),
    );
  }
}
