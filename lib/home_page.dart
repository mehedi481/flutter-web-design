import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(
              children: [
                Row(
                  children: [
                    Container(
                      height: 600.0,
                      width: MediaQuery.of(context).size.width * 0.45,
                      color: Colors.white,
                      child: Stack(children: [
                        Transform(
                          transform: Matrix4.rotationZ(pi / 6)
                            ..translate(-180, 170),
                          child: Container(
                            height: 350.0,
                            width: 700.0,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(300.0)),
                          ),
                        ),
                        Positioned(
                          top: 200.0,
                          left: 100.0,
                          child: Container(
                            height: 400.0,
                            width: 400.0,
                            // color: Colors.red,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Manage All your",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 38.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    "Projects in one place",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  Container(
                                    width: 300.0,
                                    child: Text(
                                      "Here discribe your project and find a top talent around the world or near you. Leave your email to us.",
                                      style: GoogleFonts.nunito(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 45.0,
                                        width: 230.0,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText:
                                                "Enter your Email address",
                                            hintStyle: GoogleFonts.nunito(
                                                fontSize: 12.0),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: Colors.black87,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Container(
                                          height: 45.0,
                                          width: 100.0,
                                          child: Center(
                                            child: Text(
                                              "Get Invite",
                                              style: GoogleFonts.nunito(
                                                color: Colors.white,
                                                fontSize: 13.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
                const Header(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
