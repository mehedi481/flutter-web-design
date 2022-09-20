import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_web_design/profile_title.dart';
import 'package:google_fonts/google_fonts.dart';
import 'footer.dart';
import 'header.dart';
import 'info_palette.dart';
import 'profile_image.dart';
import 'testimonial_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;
  double pixels = 0.0;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        pixels = _scrollController.position.pixels;
        print(_scrollController.position.pixels);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          controller: _scrollController,
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
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 700),
                        opacity: pixels >= 100 ? 1.0 : 0.0,
                        child: AnimatedPadding(
                          duration: const Duration(milliseconds: 700),
                          padding: EdgeInsets.only(
                              left: pixels >= 100 ? 0.0 : 100.0),
                          child: Row(
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
                        ),
                      ),
                      const SizedBox(
                        height: 60.0,
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 750),
                        transform: pixels >= 100
                            ? Matrix4.rotationZ(0)
                            : Matrix4.rotationZ(90),
                        child: TextButton(
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
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 600),
                  top: 20.0,
                  left: pixels >= 550 ? 100.0 : 0.0,
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
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 600),
                  right: pixels >= 550 ? 100.0 : -200.0,
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
            ),
            Container(
              height: 600.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Stack(children: [
                Align(
                  child: Column(children: [
                    Text(
                      "Be in the community",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w800,
                        fontSize: 25.0,
                      ),
                    ),
                    Text(
                      "Meet New people and leave testimonials about your teamates",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                      ),
                    ),
                  ]),
                ),
                AnimatedAlign(
                  duration: const Duration(milliseconds: 700),
                  alignment: pixels >= 1000
                      ? const Alignment(0.0, 0.0)
                      : const Alignment(-1.0, 0.0),
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 700),
                    opacity: pixels >= 1000 ? 1.0 : 0.0,
                    child: Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: -70,
                              top: -60,
                              child: Icon(
                                Icons.format_quote,
                                color: Colors.grey[300],
                                size: 150.0,
                              ),
                            ),
                            Text(
                              "Execellent",
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800,
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: 360.0,
                          child: Text(
                            "To the Freelancer, I Found a tema for a project during one i met new cool specialist,and projects management has become much faster and simple",
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Commnet details",
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w800,
                            fontSize: 14.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          height: 1.5,
                          width: 100.0,
                          color: Colors.black87,
                        ),
                      ],
                    )),
                  ),
                ),
                const TestimonialTile(
                  left: 780.0,
                  top: 100.0,
                  leftAlign: false,
                  image:
                      "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80",
                ),
                const TestimonialTile(
                  left: 840.0,
                  top: 400.0,
                  leftAlign: false,
                  image:
                      "https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=699&q=80",
                ),
                const TestimonialTile(
                  left: 440.0,
                  top: 400.0,
                  leftAlign: true,
                  image:
                      "https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1476&q=80",
                ),
                Positioned(
                  right: 280.0,
                  top: 300.0,
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(60.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20.0,
                          offset: Offset(
                            0.0,
                            10.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 250.0,
                  top: 450.0,
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(60.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20.0,
                          offset: Offset(
                            0.0,
                            10.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 250.0,
                  top: 200.0,
                  child: Container(
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(60.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20.0,
                          offset: Offset(
                            0.0,
                            10.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 600.0,
              color: const Color.fromARGB(255, 4, 66, 117),
              child: Stack(children: [
                AnimatedAlign(
                  duration: const Duration(milliseconds: 600),
                  alignment: pixels >= 1580
                      ? const Alignment(0.0, 1.0)
                      : const Alignment(1.0, 0.0),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 700),
                    color: pixels >= 1580 ? Colors.transparent : Colors.cyan,
                    height: 600.0,
                    width: 400.0,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 80.0,
                          ),
                          Text(
                            "Get Started Today",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 35.0,
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "Freelancer - community of people who values their time",
                            style: GoogleFonts.josefinSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.all(10.0),
                                ),
                                child: Text(
                                  "Get my Price",
                                  style: GoogleFonts.josefinSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  backgroundColor: Colors.white,
                                  padding: const EdgeInsets.all(10.0),
                                ),
                                child: Text(
                                  "Try it free",
                                  style: GoogleFonts.josefinSans(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                ),
                const Positioned(
                  bottom: 0.0,
                  child: Footer(),
                ),
                AnimatedAlign(
                  duration: const Duration(milliseconds: 600),
                  alignment: pixels >= 1580
                      ? const Alignment(1.18, 0.0)
                      : const Alignment(-1.0, 0.0),
                  child: Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                        color: Colors.amber[400],
                        borderRadius: BorderRadius.circular(100.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10.0,
                            offset: Offset(0.0, 5.0),
                          )
                        ]),
                  ),
                ),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
