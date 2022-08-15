import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountSettingScreen extends StatefulWidget {
  const AccountSettingScreen({Key? key}) : super(key: key);

  @override
  _AccountSettingScreenState createState() => _AccountSettingScreenState();
}

class _AccountSettingScreenState extends State<AccountSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Account"),
          backgroundColor: Colors.teal,
        ),
        body: Column(
          children: [
            ListTile(
              onTap: () {},
              leading: Icon(Icons.lock),
              title: Text("Privacy"),
            ),
            const ListTile(
              leading: Icon(Icons.security),
              title: Text("Security"),
            ),
            const ListTile(
              leading: Icon(Icons.domain_verification),
              title: Text("Two-steps verfication"),
            ),
            const ListTile(
              leading: Icon(Icons.mobile_screen_share),
              title: Text("Change number"),
            ),
            const ListTile(
              leading: Icon(FontAwesomeIcons.fileAlt),
              title: Text("Request account info"),
            ),
            const ListTile(
              leading: Icon(Icons.delete),
              title: Text("Delete my account"),
            ),
          ],
        ));
  }
}
