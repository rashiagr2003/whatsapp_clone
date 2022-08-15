// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screen/calls_list_screen.dart';
import 'package:whatsapp_clone/Screen/chats_list_screen.dart';
import 'package:whatsapp_clone/Screen/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1, // default is 0
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "Whatsapp",
            style: TextStyle(
                fontSize: 20.5,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          actions: [
            Icon(Icons.search),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingScreen()));
                  },
                  child: Icon(Icons.more_vert_rounded)),
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
            indicatorWeight: 5,
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            ChatsListScreen(),
            Container(
              child: Text("screen 2"),
            ),
            CallsListScreen()
          ],
        ),
      ),
    );
  }
}
