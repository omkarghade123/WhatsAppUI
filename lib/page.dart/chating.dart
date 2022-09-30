import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 44, 82, 45),
        title: const Center(
          child: Text("Omkar Ghade"),
        ),
        leading:const CircleAvatar(
          radius: 10,
         child: Image(
          image: AssetImage("assets/profile.png"),
         ),
         ),
        
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext bc) {
              return const [
                PopupMenuItem(
                  child: Text("View conatct"),
                ),
                PopupMenuItem(
                  child: Text("Media,links,and docs"),
                ),
                PopupMenuItem(
                  child: Text("search"),
                ),
                PopupMenuItem(
                  child: Text("Mute Notification"),
                ),
                PopupMenuItem(
                  child: Text("Disapperaring messages"),
                ),
                PopupMenuItem(
                  child: Text("More"),
                )
              ];
            },
          ),
        ],
      ),
      body: Container(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.tag_faces_sharp),
                    suffixIcon: Icon(Icons.send),
                    hintText: 'message',
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                        ),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.green,
                child: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_voice_sharp)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
