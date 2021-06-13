import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors.dart';
import 'custom_card.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: size.width / 10),
        color: kLightContainerColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width / 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height / 20,
                    ),
                    CustomCard(
                      child: ListTile(
                        leading: Padding(
                          padding: EdgeInsets.only(top: size.width / 52),
                          child: Image.asset("assets/heart_icon.png"),
                        ),
                        minLeadingWidth: 10,
                        title: Text("Just For You",
                            style: GoogleFonts.poppins().copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            )),
                        subtitle: Text(
                          "ENDS IN 29:45:47",
                          style: GoogleFonts.poppins().copyWith(
                            color: Colors.white70,
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey[300].withOpacity(0.4),
                          size: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 20,
                    ),
                    Container(
                      child: Text("Good evening,",
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: size.width * 0.048,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffacb0bc),
                          )),
                    ),
                    Container(
                      child: Text("Som",
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: size.width * 0.048,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w600,
                            color: kLightHeadingTextColor,
                          )),
                    ),
                    SizedBox(
                      height: size.height / 25,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width / 35),
                      child: CustomCard(
                        child: Container(
                          width: size.width,
                          height: size.height / 5.8,
                          padding:
                              EdgeInsets.symmetric(horizontal: size.width / 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(left: 18),
                                child: Image.asset("assets/question_icon.png"),
                              ),
                              Spacer(),
                              ListTile(
                                minLeadingWidth: 0.0,
                                minVerticalPadding: 0.0,
                                title: Text("Self-love",
                                    style: GoogleFonts.poppins().copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )),
                                subtitle: Row(
                                  children: [
                                    Text("Daily reflection".toUpperCase(),
                                        style: GoogleFonts.poppins().copyWith(
                                          color: Colors.black.withOpacity(0.2),
                                          fontWeight: FontWeight.w500,
                                        )),
                                    Icon(
                                      Icons.arrow_right_alt_outlined,
                                      color: Colors.black.withOpacity(0.2),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
            Container(
              height: size.height / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height / 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width / 10),
                    child: Text("02. JANUARY",
                        style: GoogleFonts.poppins().copyWith(
                            letterSpacing: 0.5, fontWeight: FontWeight.w400)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width / 10),
                    child: Text(
                      "2021",
                      style: GoogleFonts.poppins().copyWith(
                          color: Colors.black45,
                          fontSize: 12,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: size.width / 12),
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.edit_outlined,
                              color: kLightHeadingTextColor.withOpacity(0.5),
                            ),
                            onPressed: () {}),
                        SizedBox(
                          width: size.width / 20,
                        ),
                        Expanded(
                            child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20))),
                          elevation: 8,
                          shadowColor: Colors.black.withOpacity(0.5),
                          margin: EdgeInsets.all(0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height / 30),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: size.width / 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Super Awesome"),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "12:32 AM",
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.2)),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.home_outlined,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.child_care_outlined,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.outlet_outlined,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.home_outlined,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
