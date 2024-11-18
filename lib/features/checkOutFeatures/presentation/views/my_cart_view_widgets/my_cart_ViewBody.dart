import 'package:flutter/material.dart';
import 'package:flutter_application_6/features/checkOutFeatures/presentation/views/card_details_view_widgets/payment_method_ListView.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'order_info_item.dart';
import 'total_price.dart';

class MyCartViewbody extends StatelessWidget {
  const MyCartViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          const SizedBox(
            height: 15,
          ),
          Expanded(child: Image.asset("assets/Images/Group7.png")),
          const SizedBox(
            height: 25,
          ),
          const orderInfoItem(
            title: 'Order Subtotal',
            value: '\$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const orderInfoItem(
            title: 'Discount',
            value: '\$0',
          ),
          const SizedBox(
            height: 3,
          ),
          const orderInfoItem(
            title: 'Shipping',
            value: '\$8',
          ),
          const Divider(
            height: 34,
            thickness: 2,
            color: Color(0xffC7C7C7),
          ),
          const totalPrice(
            title: "Total:",
            value: '\$50.97',
          ),
          const SizedBox(
            height: 16,
          ),
          customButton(
            text: "Payment",
            onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => const CardDetailsView()));
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return paymentMethodsButtomSheet();
                },
              );
            },
          ),
          const SizedBox(
            height: 13,
          )
        ]),
      ),
    );
  }
}

class paymentMethodsButtomSheet extends StatelessWidget {
  const paymentMethodsButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          paymentMethodListView(),
          SizedBox(
            height: 15,
          ),
          customButton(text: "Continue"),
        ],
      ),
    );
  }
}
