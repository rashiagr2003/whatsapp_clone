import 'package:flutter/material.dart';

class CallsListScreen extends StatefulWidget {
  const CallsListScreen({Key? key}) : super(key: key);

  @override
  _CallsListScreenState createState() => _CallsListScreenState();
}

class _CallsListScreenState extends State<CallsListScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          callTile("Roshni", "Kha ho"),
          callTile(
            "Karthika",
            "Pgl",
          ),
          callTile(
            "Vrinda",
            "Kha ho",
          ),
          callTile(
            "Reshma",
            "Hi",
          ),
          callTile(
            "Manasi",
            "Hi",
          ),
          callTile(
            "Manasi",
            "Hi",
          ),
          callTile(
            "Manasi",
            "Hi",
          ),
          callTile(
            "Manasi",
            "Hi",
          ),
          callTile("Manasi", "Hi"),
        ],
      ),
    );
  }
}

Widget callTile(String name, String lastMsg) {
  return ListTile(
    dense: true,
    leading: const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZSUyMHBob3RvfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
    ),
    title: Text(name),
    subtitle: Text("Yestersday 2:40 "),
    isThreeLine: true,
    trailing: Icon(
      Icons.phone,
      color: Colors.teal,
    ),
  );
}
