import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'models/payment_of_types.dart';

class paymentMethodDetailsItem extends StatelessWidget {
  const paymentMethodDetailsItem({
    super.key,
    this.isActive = false,
    required this.image,
  });
  final bool isActive;
  final PaymentOfTypes image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      child: Container(
        decoration: ShapeDecoration(
            shadows: [
              BoxShadow(
                color: isActive ? const Color(0xFF34A853) : Colors.white,
                blurRadius: 4,
                offset: const Offset(0, 0),
                spreadRadius: 0,
              )
            ],
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 1.50,
                    color: isActive ? const Color(0xFF34A853) : Colors.grey),
                borderRadius: BorderRadius.circular(15))),
        width: 103,
        height: 62,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: SvgPicture.asset(
              image.payment,
            ),
          ),
        ),
      ),
    );
  }
}
