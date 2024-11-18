import 'package:flutter/material.dart';

import 'end_view_widgets/end_view_body.dart';

class endView extends StatelessWidget {
  const endView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              // IconButton(
              //   onPressed: () {
              //     Navigator.push(context, MaterialPageRoute(
              //       builder: (context) {
              //         return CardDetailsView();
              //       },
              //     ));
              //   },
              //   icon: Icon(Icons.arrow_back,size: MediaQuery.of(context).size.height*.05,),
              // )
            ],
          ),
          Expanded(child: endViewBody()),
        ],
      ),
    );
  }
}
