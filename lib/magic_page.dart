import 'dart:math';

import 'package:flutter/material.dart';

class MagicPage extends StatefulWidget {
  const MagicPage({Key? key}) : super(key: key);

  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int ballno = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Image.asset(
          'images/ball$ballno.png',
        ),
        onPressed: () {
          setState(() {
            ballno = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
