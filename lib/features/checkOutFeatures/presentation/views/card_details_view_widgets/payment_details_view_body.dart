import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../end_view.dart';
import 'custom_credit_card.dart';
import 'payment_method_ListView.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: paymentMethodListView()),
        SliverToBoxAdapter(
            child: customCreditCard(
          formKey: formKey,
          autovalidateMode: autovalidateMode,
        )),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 12, left: 12, right: 12),
                child: customButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return endView();
                        },
                      ));
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: "Complete Payment",
                ),
              )),
        )
      ],
    );
  }
}
