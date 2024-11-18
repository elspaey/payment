import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class customCreditCard extends StatefulWidget {
  const customCreditCard(
      {super.key, required this.formKey, required this.autovalidateMode});
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;
  @override
  State<customCreditCard> createState() => _customCreditCardState();
}

class _customCreditCardState extends State<customCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';
  bool showBackView = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (CreditCardModel) {
            cardHolderName = CreditCardModel.cardHolderName;
            expiryDate = CreditCardModel.expiryDate;
            cardNumber = CreditCardModel.cardNumber;
            cvvCode = CreditCardModel.cvvCode;
            showBackView = CreditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formKey,
          themeColor: Colors.black,
        )
      ],
    );
  }
}
