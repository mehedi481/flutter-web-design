import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff373e98),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      child: Row(children: [
        const SizedBox(width: 100),
        const Icon(
          Icons.favorite_border_rounded,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          "Mehedi Hasan",
          style: GoogleFonts.nunito(color: Colors.white, fontSize: 18.0),
        ),
        const SizedBox(
          width: 250.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            HeaderNav(text: "Home", selected: true),
            SizedBox(
              width: 40.0,
            ),
            HeaderNav(text: "Find a Team", selected: false),
            SizedBox(
              width: 40.0,
            ),
            HeaderNav(text: "Publish a Project", selected: false),
            SizedBox(
              width: 40.0,
            ),
            HeaderNav(text: "About", selected: false),
          ],
        ),
        const SizedBox(
          width: 250.0,
        ),
        Row(
          children: [
            Text(
              "Sign Up",
              style: GoogleFonts.nunito(color: Colors.white, fontSize: 13.0),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Container(
              height: 20.0,
              width: 1.0,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "Login",
              style: GoogleFonts.nunito(color: Colors.white, fontSize: 13.0),
            ),
          ],
        )
      ]),
    );
  }
}

class HeaderNav extends StatefulWidget {
  const HeaderNav({Key? key, required this.text, required this.selected})
      : super(key: key);
  final String text;
  final bool selected;
  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: GoogleFonts.nunito(fontSize: 13.0, color: Colors.white),
        ),
        widget.selected
            ? const SizedBox(
                height: 5.0,
              )
            : const SizedBox(),
        widget.selected
            ? const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 2.0,
              )
            : const SizedBox(),
      ],
    );
  }
}
