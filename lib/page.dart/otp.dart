import 'package:flutter/material.dart';

import 'package:otp_text_field/otp_text_field.dart';
import 'package:whatsapp/page.dart/whats_app.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  OtpFieldController otpController = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 248, 245, 245),
          title: Text(
            "Enter Your Phone Number",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
          ),
          actions: [
            Icon(
              Icons.more_vert_sharp,
              color: Colors.black,
            ),
          ],
        ),
        body:SingleChildScrollView (
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Center(
                  child: Text("Waitting to automatically detect an SMS sent to")),
              Center(
                  child: Text(
                "Wrong number?",
                style: TextStyle(color: Colors.green),
              )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: OTPTextField(
                    controller: otpController,
                    length: 5,
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldWidth: 45,
                    outlineBorderRadius: 15,
                    style: TextStyle(fontSize: 17),
                    // onChanged: (pin) {
                    //   print("Changed: " + pin);
                    // },
                    // onCompleted: (pin) {
                    //   print("Completed: " + pin);
                    // }
                    ),
              ),Divider(),
              Text(
                "Enter 6-digit code",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.message),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Current Location"),
                      Divider(
                        color: Colors.black,
                      )
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
              ),
              Row(
                children: [
                  Icon(Icons.call),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Current Location"),
                ],
              ),SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => WhatsApp()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, 
                ),
                child: const Text(
                  'Next',
                ),
              ),
            ],
            ),
          ),
        ));
  }
}
