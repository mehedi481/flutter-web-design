import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        "Resource",
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        "Home",
                        style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        "Find a Team",
                        style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        "Publish a Project",
                        style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Text(
                        "About",
                        style: GoogleFonts.nunito(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          "About",
                          style: GoogleFonts.nunito(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          "General Info",
                          style: GoogleFonts.nunito(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          "FAQ's",
                          style: GoogleFonts.nunito(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          "Contact",
                          style: GoogleFonts.nunito(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ]),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.copyright_rounded,
                  color: Colors.black54,
                  size: 15.0,
                ),
                Text(
                  "2022 All right reserved",
                  style: GoogleFonts.nunito(
                    color: Colors.black54,
                    fontWeight: FontWeight.w800,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Text("Love with Flutter")
          ]),
    );
  }
}
