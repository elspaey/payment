import 'package:flutter/material.dart';
import 'package:flutter_application_6/features/checkOutFeatures/presentation/views/card_details_view.dart';
import 'package:flutter_application_6/features/checkOutFeatures/presentation/views/end_view_widgets/custom_check_icon.dart';
import 'package:flutter_application_6/features/checkOutFeatures/presentation/views/end_view_widgets/custom_dashed_line.dart';
import 'package:flutter_application_6/features/checkOutFeatures/presentation/views/end_view_widgets/thank_you_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class endViewBody extends StatelessWidget {
  const endViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                      top: 90, bottom: 32, left: 32, right: 32),
                  child: Stack(clipBehavior: Clip.none, children: [
                    thankYouCard(),
                    Positioned(
                      bottom: MediaQuery.sizeOf(context).height * .2 + 20,
                      left: 20 + 8,
                      right: 20 + 8,
                      child: customDashedLine(),
                    ),
                    Positioned(
                        left: -20,
                        bottom: MediaQuery.sizeOf(context).height * .2,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                        )),
                    Positioned(
                        right: -20,
                        bottom: MediaQuery.sizeOf(context).height * .2,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                        )),
                    Positioned(
                      top: -50,
                      left: 0,
                      right: 0,
                      child: customCheckIcon(),
                    ),
                  ])),
              Positioned(
                  left: 10,
                  top: 35,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return CardDetailsView();
                        },
                      ));
                    },
                    icon: (SvgPicture.asset(
                      "assets/Images/Arrow1.svg",
                      height: 50,
                    )),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
