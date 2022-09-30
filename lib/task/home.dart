import 'package:flutter/material.dart';
import 'dart:io';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height * 0.25;
    MediaQuery.of(context).size.width * 0.15;
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Color.fromARGB(255, 248, 242, 242),
          // shadowColor: Colors.white,
         
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [
            Column(
              children: [
                // Platform.isIOS
                //     ? Container(
                //         height: size,
                //         width: double.infinity,
                //         color: Color.fromARGB(255, 83, 14, 246),
                //       )
                //     :
                Container(
                  height: size,
                  width: double.infinity,
                  color: Color.fromARGB(255, 224, 76, 13),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(height: size, color: Colors.blue),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Expanded(
                      child: Container(height: size, color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(height: size, color: Colors.blue),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Expanded(
                      child: Container(height: size, color: Colors.blue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: size * 0.5,
                        color: Colors.amber,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Expanded(
                      child: Container(
                        height: size * 0.5,
                        color: Colors.amber,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Expanded(
                      child: Container(
                        height: size * 0.5,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: size * 0.5,
                        color: Colors.amber,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Expanded(
                      child: Container(
                        height: size * 0.5,
                        color: Colors.amber,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Expanded(
                      child: Container(
                        height: size * 0.5,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: size * 0.5,
                        color: Colors.amber,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Expanded(
                      child: Container(
                        height: size * 0.5,
                        color: Colors.amber,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Expanded(
                      child: Container(
                        height: size * 0.5,
                        color: Colors.amber,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ));
  }
}
