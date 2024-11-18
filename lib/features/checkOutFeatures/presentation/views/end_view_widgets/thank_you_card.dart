import 'package:flutter/material.dart';
import 'package:flutter_application_6/core/utils/styles.dart';
import 'package:flutter_application_6/features/checkOutFeatures/presentation/views/end_view_widgets/card_info_widget.dart';
import 'package:flutter_application_6/features/checkOutFeatures/presentation/views/end_view_widgets/payment_item_info.dart';
import 'package:flutter_application_6/features/checkOutFeatures/presentation/views/my_cart_view_widgets/total_price.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class thankYouCard extends StatelessWidget {
  const thankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            Text('Thank you!',
                textAlign: TextAlign.center, style: Styles.styles25),
            Text('Your transaction was successful',
                textAlign: TextAlign.center, style: Styles.styles20),
            SizedBox(
              height: 42,
            ),
            paymentItemInfo(
              title: 'Date',
              vlaue: '01/24/2023',
            ),
            SizedBox(height: 20),
            paymentItemInfo(
              title: 'Time',
              vlaue: '10:15 AM',
            ),
            SizedBox(height: 20),
            paymentItemInfo(
              title: 'To',
              vlaue: 'Sam Louis',
            ),
            Divider(
              thickness: 2,
              height: 60,
            ),
            totalPrice(title: 'Total', value: '\$50.97'),
            SizedBox(
              height: 50,
            ),
            cardInfoWidget(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  FontAwesomeIcons.barcode,
                  size: 70,
                ),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text('PAID',
                        textAlign: TextAlign.center,
                        style:
                            Styles.styles24.copyWith(color: Color(0xff34A853))),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
