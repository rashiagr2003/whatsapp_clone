import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screen/chat_screen.dart';

class ChatsListScreen extends StatefulWidget {
  const ChatsListScreen({Key? key}) : super(key: key);

  @override
  _ChatsListScreenState createState() => _ChatsListScreenState();
}

class _ChatsListScreenState extends State<ChatsListScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          chatTile("Roshni", "Kha ho", "2:40 am"),
          chatTile("Karthika", "Pgl", "1:40 am"),
          chatTile("Vrinda", "Kha ho", "2:00 am"),
          chatTile("Reshma", "Hi", "5:40 pm"),
          chatTile("Manasi", "Hi", "2:00 am"),
          chatTile("Manasi", "Hi", "2:00 am"),
          chatTile("Manasi", "Hi", "2:00 am"),
          chatTile("Manasi", "Hi", "2:00 am"),
          chatTile("Manasi", "Hi", "2:00 am"),
          chatTile("Manasi", "Hi", "2:00 am"),
          chatTile("Manasi", "Hi", "2:00 am"),
          chatTile("Manasi", "Hi", "2:00 am"),
          chatTile("Manasi", "Hi", "2:00 am"),
        ],
      ),
    );
  }

  Widget chatTile(
    String name,
    String lastMsg,
    String time,
  ) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatScreen()));
      },
      dense: true,
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZSUyMHBob3RvfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
      ),
      title: Text(name),
      subtitle: Text(lastMsg),
      isThreeLine: true,
      trailing: Text(time),
    );
  }
}
