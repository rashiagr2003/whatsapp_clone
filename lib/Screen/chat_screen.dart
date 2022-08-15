import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screen/call_screen.dart';
import 'package:whatsapp_clone/Screen/setting_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool isTyping = false;

  List<String> allMessages = [
    "Hello",
    "How are you?",
    "Where are you?",
    "How are you?",
    "Where are you?",
  ];

  TextEditingController msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        automaticallyImplyLeading: false,
        title: Container(
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Icon(Icons.arrow_back),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZSUyMHBob3RvfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text("ABCD")
            ],
          ),
        ),
        actions: [
          Icon(
            Icons.missed_video_call,
            color: Colors.white,
            size: 25,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CallScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          Icon(
            Icons.more_vert_outlined,
            color: Colors.white,
            size: 25,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: ListView.builder(
              itemCount: allMessages.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width * 0.20,
                    margin: EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      allMessages[index],
                      style: TextStyle(fontSize: 20.0),
                    ));
              },
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: TextField(
                      controller: msgController,
                      onChanged: (value) {
                        if (value.length == 0) {
                          setState(() {
                            isTyping = false;
                          });
                        } else {
                          setState(() {
                            isTyping = true;
                          });
                        }
                        print(value.length.toString());
                      },
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Message",
                          prefixIcon: Icon(
                            Icons.emoji_emotions,
                          ),
                          suffixIcon: Container(
                            width: isTyping ? 40 : 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.attachment),
                                isTyping
                                    ? Container()
                                    : Icon(Icons.attach_money_outlined),
                                isTyping
                                    ? Container()
                                    : Icon(Icons.camera_alt_rounded)
                              ],
                            ),
                          )),
                    )),
                Container(
                  child: InkWell(
                    onTap: () {
                      print(msgController.text);
                      setState(() {
                        allMessages.add(msgController.text);
                      });
                      msgController.clear();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Icon(
                        isTyping ? Icons.send : Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
