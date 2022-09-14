import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_web_design/profile_title.dart';
import 'package:google_fonts/google_fonts.dart';
import 'header.dart';
import 'info_palette.dart';
import 'profile_image.dart';

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
                                  const SizedBox(
                                    height: 30.0,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
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
                                      const SizedBox(
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
                                        child: SizedBox(
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
                    Container(
                      height: 600.0,
                      width: MediaQuery.of(context).size.width * 0.55,
                      color: Colors.white,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: const [
                          ProfileImage(
                            top: 140.0,
                            left: 90.0,
                            diameter: 200.0,
                            image:
                                "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                          ),
                          ProfileImage(
                            top: 160.0,
                            left: 310.0,
                            diameter: 100.0,
                            image:
                                "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                          ),
                          ProfileImage(
                            top: 360.0,
                            left: 90.0,
                            diameter: 170.0,
                            image:
                                "https://images.unsplash.com/photo-1593104547489-5cfb3839a3b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=853&q=80",
                          ),
                          ProfileImage(
                            top: 275.0,
                            left: 280.0,
                            diameter: 280.0,
                            image:
                                "https://images.unsplash.com/photo-1554727242-741c14fa561c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                          ),
                          ProfileTitle(
                            top: 140,
                            left: 50,
                            title: "I am Gonna give you Color theory",
                            subTitle: "Creator, Designer",
                            factor: 0.5,
                          ),
                          ProfileTitle(
                            top: 160,
                            left: 380,
                            title: "I am Gonna give you Color theory",
                            subTitle: "Creator, Designer",
                            factor: 0.5,
                          ),
                          ProfileTitle(
                            top: 360,
                            left: 50,
                            title: "I am Gonna give you Color theory",
                            subTitle: "Creator, Designer",
                            factor: 0.5,
                          ),
                          ProfileTitle(
                            top: 275,
                            left: 450,
                            title: "I am Gonna give you Color theory",
                            subTitle: "Creator, Designer",
                            factor: 0.5,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const Header(),
              ],
            ),
            Container(
              height: 400,
              width: double.infinity,
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    right: -200,
                    child: Container(
                      height: 330,
                      width: 430,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(300.0),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "How it works",
                        style: GoogleFonts.nunito(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          InfoPalette(
                            title: 'Community',
                            text:
                                'Communicate with collegues, share ideas, find a team in project in one space',
                            icon: Icons.people_alt_rounded,
                          ),
                          InfoPalette(
                            title: 'Overview Reports',
                            text:
                                'Track your progress thanks to the reporting system right inside the platform',
                            icon: Icons.pie_chart_rounded,
                          ),
                          InfoPalette(
                            title: 'DashBoard',
                            text:
                                'Manage your projects and tasks by tracking activity on the dashboard',
                            icon: Icons.person_rounded,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 60.0,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          primary: Colors.black87,
                          padding: const EdgeInsets.all(0.0),
                        ),
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 8.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            border: Border.all(color: Colors.grey[800]!),
                          ),
                          child: Text(
                            "Explore More",
                            style: GoogleFonts.nunito(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 500.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Stack(clipBehavior: Clip.none, children: [
                Positioned(
                  left: -250.0,
                  child: Container(
                    height: 450.0,
                    width: 700.0,
                    decoration: BoxDecoration(
                      color: Colors.amber[400],
                      borderRadius: BorderRadius.circular(400.0),
                    ),
                  ),
                ),
                Positioned(
                  top: 20.0,
                  left: 100.0,
                  child: Container(
                    height: 400.0,
                    width: 700.0,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image.network(
                      "https://miro.medium.com/max/2400/0*qO2PFu6dr04R1O6P.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const ProfileTitle(
                  top: 20,
                  left: 40,
                  title: "Send a final design to the team",
                  subTitle: "Sara,Client",
                  factor: 1.0,
                ),
                const ProfileTitle(
                  top: 400.0,
                  left: 620.0,
                  title: "Publish your project whenever you want",
                  subTitle: "Micheal",
                  factor: 1.0,
                ),
                Positioned(
                  right: 100.0,
                  top: 150.0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Easy Project Management",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w800,
                            fontSize: 25.0,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          width: 280.0,
                          child: Text(
                            "Manage your project,Organize your own workspace,keep statistics and collaborate with your teammates in one place",
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.black87,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          onPressed: () {},
                          child: SizedBox(
                            height: 45.0,
                            width: 100.0,
                            child: Center(
                              child: Text(
                                "Try for free",
                                style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
