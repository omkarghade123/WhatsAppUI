import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp/page.dart/welcome.dart';



class Splashpage extends StatefulWidget {
  const Splashpage({Key? key}) : super(key: key);

  @override
  State<Splashpage> createState() => _SplashpageState();
}

class _SplashpageState extends State<Splashpage> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Welcome())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
              height: 75, width: 75, child: Image.asset("assets/wh.png")),
        ),
      ),
    );
  }
}
