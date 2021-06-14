import 'package:flutter/material.dart';

import '../colors.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  CustomCard({this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.symmetric(vertical: size.width / 50),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [kLightCardStartColor, kLightCardEndColor]),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: kLightCardEndColor.withOpacity(0.5),
                  spreadRadius: 1,
                  offset: Offset(4, 10),
                  blurRadius: 20)
            ]),
        child: child);
  }
}
