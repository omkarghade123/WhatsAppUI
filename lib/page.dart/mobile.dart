

import 'package:flutter/material.dart';
import 'package:whatsapp/page.dart/otp.dart';

class MobileNum extends StatefulWidget {
  const MobileNum({Key? key}) : super(key: key);

  @override
  State<MobileNum> createState() => _MobileNumState();
}

class _MobileNumState extends State<MobileNum> {
  String dropdownvalue = 'India';

  var items = [
    'India',
    'USA',
    'Hong Kong',
    'UK',
    'Singapore',
  ];
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
          )
        ],
      ),
      body:SingleChildScrollView (
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Center(
                child: Text("WhatsApp will need is verify your phone number"),
              ),
              Center(
                child: Text(
                  "What's my phone number?",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              DropdownButton(
                value: dropdownvalue,
                icon: Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                   keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                      labelText: "Enter mobile number",
                      prefixIcon: Icon(Icons.add)),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Otp()));
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
      ),
    );
  }
}
