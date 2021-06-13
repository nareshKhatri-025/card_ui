import 'dart:ui';

import 'package:credit_card/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CreditCardDark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kDarkScaffoldColor,
      body: SafeArea(
        child: Container(
          color: kDarkContainerColor,
          padding: EdgeInsets.symmetric(horizontal: size.width / 20),
          child: Column(
            children: [
              SizedBox(
                height: size.height / 30,
              ),
              Row(
                children: [
                  Text(
                    "your cards",
                    style: TextStyle(color: kDarkTextColor),
                  ),
                  Spacer(),
                  CustomButton(
                    text: "Add card",
                    containerColor: Color(0xff272b2c),
                  ),
                ],
              ),
              SizedBox(
                height: size.height / 30,
              ),
              Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: -6,
                    lightSource: LightSource.topLeft,
                    color: Colors.transparent,
                    shadowLightColorEmboss: Color(0xff37383c)),
                child: Container(
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Color(0xff45484f),
                  //     ),
                  //     BoxShadow(
                  //       offset: Offset(-7, -4),
                  //       color: Color(0xff232426),
                  //       spreadRadius: -6.0,
                  //       blurRadius: 5.0,
                  //     ),
                  //   ],
                  // ),
                  width: size.width / 1.2,
                  height: size.height / 2.4,
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height / 80,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/creditCard.png",
                          fit: BoxFit.cover,
                          width: size.width / 1.25,
                          height: size.height / 4,
                        ),
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: size.width / 20,
                          ),
                          CustomButton(
                            text: "Manage",
                            containerColor: Color(0xff1e1f21),
                          ),
                          Spacer(),
                          CustomButton(
                            text: "Pay now",
                            containerColor: kDarkButtonColor,
                          ),
                          SizedBox(
                            width: size.width / 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final text;
  double elevation = 12;
  final Color containerColor;
  double devison = 3.5;
  CustomButton({this.text, this.containerColor});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        width: size.width / 3.5,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kDarkContainerColor, Color(0xff18191B)],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.4, 8),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(30),
          //color: containerColor,
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Color(0xff131315), //Color(0xff17181a),
                spreadRadius: 0.4,
                blurRadius: elevation,
                offset: Offset(2.0, 5.0)),
            BoxShadow(
                color: Color(0xff131315), //Color(0xff17181a),
                spreadRadius: 4,
                blurRadius: elevation / 2.0,
                offset: Offset(2.0, 4.0)),
            BoxShadow(
                color: Color(0xff37383c),
                spreadRadius: 0,
                blurRadius: elevation / 2,
                offset: Offset(-6.0, -7.0)),
            BoxShadow(
                color: Color(0xff37383c),
                //Color(0xff37373a),
                spreadRadius: 2,
                blurRadius: 20,
                offset: Offset(-6.0, -7.0)),
          ],
        ),
        child: InkWell(
          onTap: () {
            elevation = 0.0;

            devison = 3.8;
          },
          child: Text(
            text,
            style: TextStyle(
                color: kDarkTextColor,
                letterSpacing: 1,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
        ),
      ),
    );
  }
}

// class ActionButton extends StatelessWidget {
//   final Widget leading;
//   final Color innerColor;

//   final text;
//   ActionButton({this.leading, this.text, this.innerColor});
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return NeumorphicButton(
//       onPressed: () {},
//       style: NeumorphicStyle(
//         shape: NeumorphicShape.convex,
//         boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
//         depth: 10,
//         lightSource: LightSource.topLeft,
//         color: innerColor,
//         shadowLightColor: Colors.transparent,
//         shadowDarkColor: Colors.transparent,
//       ),
//       child: CustomButton(
//         text: "Manage",
//       ),
//       // shadowDarkColor: Color(0xff1e1f21)),
//       // child: Container(
//       //   child: Row(
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: [
//       //       leading,
//       //       Text(
//       //         text,
//       //         style: TextStyle(
//       //             color: kDarkTextColor,
//       //             fontWeight: FontWeight.normal,
//       //             fontSize: 12),
//       //       ),
//       //     ],
//       //   ),
//       // ),
//     );
//   }
// }
