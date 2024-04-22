import 'package:flutter/material.dart';

Widget bgWidget({Widget? child}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/icons/bg.png"), fit: BoxFit.fill),
    ),
    child: child,
  );
}
