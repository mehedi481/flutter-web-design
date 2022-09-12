import 'package:flutter/material.dart';

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
            Stack(children: [
              Container(),
            ],),
            const Header(),
          ]),
        ),
      ),
    );
  }
}
