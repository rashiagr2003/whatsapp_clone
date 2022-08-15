import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal.shade400,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                // color: Colors.teal.shade400,
                child: SizedBox(
                  height: 80,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, bottom: 10),
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://www.goodmorninghdloveimages.com/wp-content/uploads/2020/04/Always-be-Happy-Whatsapp-Dp-Cute-Profile-Images.png")),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "ABCD",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24.5,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Ringing",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.5,
                              color: Colors.white60),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Icon(
                      Icons.volume_up,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Icon(FontAwesomeIcons.video,
                        size: 20, color: Colors.white30),
                  ),
                  Container(
                    child: Icon(FontAwesomeIcons.microphoneSlash,
                        size: 20, color: Colors.white),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.call_end,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.teal.shade700,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            )
          ],
        ),
      ),
    );
  }
}
