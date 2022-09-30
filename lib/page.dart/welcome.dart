import 'package:flutter/material.dart';
import 'package:whatsapp/page.dart/mobile.dart';


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: const Center(
                  child: Text(
                "Welcome to WhatsApp",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.green),
              )),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Image(image: AssetImage("assets/wc.png")),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MobileNum()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Background color
                    ),
                    child: const Text(
                      'AGREE TO CONTINUE',
                      
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
