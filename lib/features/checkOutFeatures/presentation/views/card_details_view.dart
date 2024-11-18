import 'package:flutter/material.dart';

import '../../../../core/widgets/buils_AppBar.dart';
import 'card_details_view_widgets/payment_details_view_body.dart';

class CardDetailsView extends StatelessWidget {
  const CardDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(
          Title: "Payment Details",
          onTap: () {
            Navigator.pop(context);
          },
        ),
        body: const PaymentDetailsViewBody(),
      ),
    );
  }
}
