import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/Screen/account_setting.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Setting"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 60,
                    width: 60,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4X1shdkIlWbCIGZ7T9LNkvTl_sfO0eJhPZg&usqp=CAU",
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 4, left: 4),
                        child: Text(
                          "ABCD",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 20.5),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4),
                        child: Text(
                          "Available",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12.5),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccountSettingScreen()));
              },
              leading: Icon(Icons.account_box),
              title: Text("Account"),
              subtitle: Text("Privacy,security,change number"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.chat),
              title: Text("Chats"),
              subtitle: Text("Theme,Wallpapers,chat history"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
              subtitle: Text("message,group & call tones"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(FontAwesomeIcons.circleNotch),
              title: Text("Storage and data"),
              subtitle: Text("Network usage, auto-download"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.help),
              title: Text("Help"),
              subtitle: Text("Help centre,contact us,privacy policy"),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(FontAwesomeIcons.userFriends),
              title: Text("Invite a friend"),
            ),
          ],
        ),
      ),
    );
  }
}
