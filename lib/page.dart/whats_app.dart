import 'package:flutter/material.dart';
import 'package:whatsapp/page.dart/callpage.dart';
import 'package:whatsapp/page.dart/camera.dart';
import 'package:whatsapp/page.dart/chatpage.dart';
import 'package:whatsapp/page.dart/statuspage.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  int? month;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: const Color.fromARGB(255, 31, 81, 36),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext bc) {
                return [
                  const PopupMenuItem(
                    child: Text("New group"),
                  ),
                  const PopupMenuItem(
                    child: Text("New broadcast"),
                  ),
                  const PopupMenuItem(
                    child: Text("Linked devices"),
                  ),
                 const PopupMenuItem(
                    child: Text("Starred messages"),
                  ),
                const  PopupMenuItem(
                    child: Text("Payment"),
                  ),
                const  PopupMenuItem(
                    child: Text("Settings"),
                  )
                ];
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body:const TabBarView(
          children: [
            
            Camera(),
            ChatPage(),
            StatusPage(),
            CallPage(),
          ],
        ),
      ),
    );
  }
}
