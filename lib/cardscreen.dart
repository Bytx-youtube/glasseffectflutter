import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0x0ff0e1720),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 30,
              bottom: 20,
            ),
            child: Center(
              child: Text(
                "MY CARD",
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Transform.translate(
                offset: const Offset(40,-20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0x0ff7366ff),
                          Color(0x0ffff9cab),
                        ]
                      )
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(-40,90),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 210,
                    width: 210,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0x0fff00b51),
                              Color(0x0ff820160),
                            ]
                        )
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 10,
                      sigmaY: 10,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 180,
                      width: screenWidth,
                      color: Colors.grey.shade300.withOpacity(0.2),
                      child: Stack(
                        children: [
                          Text(
                            "MEMBERSHIP",
                            style: GoogleFonts.montserrat(
                              color: Colors.grey.shade300.withOpacity(0.5),
                              letterSpacing: 1.5,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "0110 0234 4599 2488",
                                style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade300.withOpacity(0.5),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "JAMES SMITH",
                                style: GoogleFonts.montserrat(
                                  color: Colors.grey.shade300.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.local_atm,
                              color: Colors.grey.shade300.withOpacity(0.5),
                              size: 30,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "05/26",
                              style: GoogleFonts.montserrat(
                                color: Colors.grey.shade300.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 40,
              right: 40,
              bottom: 16,
            ),
            child: Text(
              "HISTORY",
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          listItem("BANK TRANSFER", "+2000"),
          listItem("IPHONE 13", "-1000"),
          listItem("CLOTHES", "-200"),
          listItem("AIRPODS", "-220"),
          listItem("SHOES", "-350"),
        ],
      ),
    );
  }

  Widget listItem(String text, String amount) {
    return Container(
      margin: const EdgeInsets.only(
        left: 40,
        right: 40,
        bottom: 16,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            height: 60,
            width: screenWidth,
            color: Colors.grey.shade300.withOpacity(0.2),
            child: Stack(
              children: [
                Text(
                  text,
                  style: GoogleFonts.montserrat(
                    color: Colors.grey.shade300.withOpacity(0.5),
                    letterSpacing: 1.5,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    amount + "\$",
                    style: GoogleFonts.montserrat(
                      color: amount.startsWith("+") ? Colors.green.withOpacity(0.5) : Colors.red.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
