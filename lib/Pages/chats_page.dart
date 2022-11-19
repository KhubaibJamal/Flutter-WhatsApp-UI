import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screen/chatScreen.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  final date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF075E54),
        child: const Icon(
          Icons.chat,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: Column(
        children: [
          chats("hammad", "hiii",
              "https://i.pinimg.com/736x/f5/c7/54/f5c75480de2d936c2b497468986c4a3c.jpg"),
          chats("Khubaib", "Assignment",
              "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png"),
          chats("osama", "kia haal ha?",
              "https://images.unsplash.com/flagged/photo-1565250263369-882b754513d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
        ],
      ),
    );
  }

  Widget chats(String name, String message, String image) {
    return GestureDetector(
      onTap: (() {
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const ChatScreen())));
      }),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(image),
              radius: 30,
            ),
            title: Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              message,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: Text("${date.day}/${date.month}/${date.year}"),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 40),
            // padding: EdgeInsets.all(8.0),
            child: Divider(
              thickness: 2,
            ),
          ),
        ],
      ),
    );
  }
}
