import 'package:flutter/material.dart';

class customCheckIcon extends StatelessWidget {
  const customCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xFFD9D9D9),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Color(0xff34A853),
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 60,
        ),
      ),
    );
  }
}
