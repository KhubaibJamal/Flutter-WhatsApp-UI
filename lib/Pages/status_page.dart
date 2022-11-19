import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            actionButton(
              icon: Icons.edit,
              color: Colors.black,
              bgColor: const Color(0xFFC1C1C1),
            ),
            const SizedBox(
              height: 15,
            ),
            actionButton(
              icon: Icons.camera_alt,
              color: Colors.white,
              bgColor: const Color(0xFF075E54),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: Stack(
                  children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png'),
                      radius: 30,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF075E54),
                        radius: 12,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                title: const Text(
                  "My status",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "Tap to add status update",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 18),
              statusText("Recent updates"),
              const SizedBox(height: 18),
              recentStatus(
                "Osama",
                "5 minutes ago",
                "https://images.unsplash.com/photo-1599842057874-37393e9342df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z2lybHxlbnwwfHwwfHw%3D&w=1000&q=80",
                Colors.green,
              ),
              recentStatus(
                "Osama",
                "5 minutes ago",
                "https://i.pinimg.com/736x/f5/c7/54/f5c75480de2d936c2b497468986c4a3c.jpg",
                Colors.green,
              ),
              recentStatus(
                "Osama",
                "5 minutes ago",
                "https://images.unsplash.com/photo-1516557070061-c3d1653fa646?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                Colors.green,
              ),
              const SizedBox(height: 18),
              statusText("Views updates"),
              const SizedBox(height: 18),
              recentStatus(
                "Osama",
                "5 minutes ago",
                "https://images.unsplash.com/flagged/photo-1565250263369-882b754513d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                Colors.grey,
              ),
              recentStatus(
                "jamal",
                "5 minutes ago",
                "https://images.unsplash.com/flagged/photo-1565250263369-882b754513d1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                Colors.grey,
              ),
            ],
          ),
        ));
  }

  Widget actionButton(
      {required IconData icon, required Color color, required Color bgColor}) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: bgColor,
      child: Icon(
        icon,
        color: color,
        size: 30,
      ),
    );
  }

  Widget recentStatus(
      String name, String message, String image, Color viewColor) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 30,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: viewColor, width: 3.5)),
            ),
          ),
          title: Text(
            name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            message,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget statusText(String text) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
