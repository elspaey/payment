import 'package:flutter/material.dart';

import 'models/payment_of_types.dart';
import 'payment_method_details_item.dart';

class paymentMethodListView extends StatefulWidget {
  const paymentMethodListView({super.key});

  @override
  State<paymentMethodListView> createState() => _paymentMethodListViewState();
}

class _paymentMethodListViewState extends State<paymentMethodListView> {
  final List<PaymentOfTypes> paymentMethodItemsModel = [
    PaymentOfTypes(
      payment: "assets/Images/card.svg",
    ),
    PaymentOfTypes(
      payment: "assets/Images/paypal.svg",
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodItemsModel.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: () {
                activeIndex = index;
                setState(() {});
              },
              child: paymentMethodDetailsItem(
                isActive: activeIndex == index,
                // isActive: true,
                image: paymentMethodItemsModel[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
