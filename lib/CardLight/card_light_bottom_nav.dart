import 'package:credit_card/colors.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

class CardLightBottomNav extends StatefulWidget {
  @override
  _CardLightBottomNavState createState() => _CardLightBottomNavState();
}

class _CardLightBottomNavState extends State<CardLightBottomNav> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        child: Row(
          children: [
            SizedBox(
              width: size.width / 20,
            ),
            IconButton(
              icon: Icon(
                Icons.home_outlined,
                color: selected == 0
                    ? kLightIconActiveColor
                    : Colors.grey.withOpacity(0.8),
              ),
              onPressed: () {
                setState(() {
                  selected = 0;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.show_chart_outlined,
                color: selected == 1
                    ? kLightIconActiveColor
                    : Colors.grey.withOpacity(0.8),
              ),
              onPressed: () {
                setState(() {
                  selected = 1;
                });
              },
            ),
            Spacer(),
            Spacer(
              flex: 2,
            ),
            IconButton(
              icon: Icon(
                Icons.format_quote_outlined,
                color: selected == 2
                    ? kLightIconActiveColor
                    : Colors.grey.withOpacity(0.8),
              ),
              onPressed: () {
                setState(() {
                  selected = 2;
                });
              },
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.person_outline,
                color: selected == 3
                    ? kLightIconActiveColor
                    : Colors.grey.withOpacity(0.8),
              ),
              onPressed: () {
                setState(() {
                  selected = 3;
                });
              },
            ),
            SizedBox(
              width: size.width / 20,
            )
          ],
        ),
        height: size.height / 11,
        width: size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: kLightCardEndColor.withOpacity(0.3),
                spreadRadius: 1,
                offset: Offset(-4, -10),
                blurRadius: 20)
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: selected == 1
              ? Container()
              : selected == 2
                  ? Container()
                  : selected == 3
                      ? Container()
                      : HomeView(),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 30),
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {},
          backgroundColor: kLightButtonColor,
          child: Container(
            decoration: BoxDecoration(color: kLightButtonColor),
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
