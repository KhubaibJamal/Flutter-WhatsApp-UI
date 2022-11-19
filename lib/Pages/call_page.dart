import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  final date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF075E54),
        child: Stack(
          children: const [
            Icon(
              Icons.call,
              color: Colors.white,
              size: 30,
            ),
            Positioned(
              bottom: 23,
              left: 12,
              child: CircleAvatar(
                backgroundColor: Color(0xFF075E54),
                radius: 5,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            callCard(
              "kamran",
              "https://images.unsplash.com/photo-1516557070061-c3d1653fa646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
            ),
            callCard(
              "pervaiz",
              "https://i.pinimg.com/736x/f5/c7/54/f5c75480de2d936c2b497468986c4a3c.jpg",
            ),
            callCard(
              "sohaib",
              "https://images.unsplash.com/photo-1516557070061-c3d1653fa646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
            ),
            callCard(
              "nasir",
              "https://images.unsplash.com/photo-1516557070061-c3d1653fa646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
            ),
            callCard(
              "kamran",
              "https://images.unsplash.com/photo-1516557070061-c3d1653fa646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
            ),
            callCard(
              "pervaiz",
              "https://i.pinimg.com/736x/f5/c7/54/f5c75480de2d936c2b497468986c4a3c.jpg",
            ),
            callCard(
              "sohaib",
              "https://images.unsplash.com/photo-1516557070061-c3d1653fa646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
            ),
            callCard(
              "nasir",
              "https://images.unsplash.com/photo-1516557070061-c3d1653fa646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
            ),
          ],
        ),
      ),
    );
  }

  Widget callCard(String name, String image) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(image),
        radius: 30,
      ),
      title: Text(
        name,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: const [
          Icon(
            Icons.call_made,
            color: Colors.green,
            size: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "July 12, 13:00",
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
      trailing: const Icon(
        Icons.call,
        color: Colors.green,
      ),
    );
  }
}
