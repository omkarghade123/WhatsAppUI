import 'package:flutter/material.dart';
import 'package:whatsapp/page.dart/chating.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                CircleAvatar(
                    radius: 30,
                    child: Image(
                      image: AssetImage("assets/profile.png"),
                    )),
                const SizedBox(
                  width: 10,
                ),
               GestureDetector (
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Chat(),));
                },
                  child: Container(
                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Omkar Ghade",
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text("Hello' Welcome to my application")
                      ],
                    ),
                  ),
                ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [Text("1:05 AM")],
                // )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            // Row(
            //   //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     const CircleAvatar(radius: 30, child: Text("SH")),
            //     const SizedBox(
            //       width: 10,
            //     ),
            //     Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: const [
            //         Text(
            //           "Sharma",
            //           style:
            //               TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            //         ),
            //         Text("Hello' Welcome to my application"),
            //       ],
            //     ),
            //   ],
            // )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.message),
      ),
    );
  }
}
