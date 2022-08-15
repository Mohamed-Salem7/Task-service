import 'package:flutter/material.dart';

void navigatorTo(context,widget) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

Widget myDivider() => Container(
  width: double.infinity,
  height: 2.0,
  color: Colors.grey[900]!.withOpacity(0.3),
);
