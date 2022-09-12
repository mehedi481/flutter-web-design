import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      color: const Color(0xff373e98),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
    );
  }
}
