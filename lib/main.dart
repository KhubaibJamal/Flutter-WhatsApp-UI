import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'Pages/call_page.dart';
import 'Pages/camera_page.dart';
import 'Pages/chats_page.dart';
import 'Pages/status_page.dart';

late final firstCamera;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  firstCamera = cameras.first;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const List<Tab> tabs = <Tab>[
  Tab(icon: Icon(Icons.camera_alt)),
  Tab(
    text: "CHATS",
  ),
  Tab(
    text: "STATUS",
  ),
  Tab(
    text: "CALLS",
  ),
];

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
          ),
          PopupMenuButton<String>(
            iconSize: 30,
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                    value: "New group", child: Text("New group")),
                const PopupMenuItem(
                    value: "New broadcast", child: Text("New broadcast")),
                const PopupMenuItem(
                    value: "Linked devices", child: Text("Linked devices")),
                const PopupMenuItem(
                    value: "Starred message", child: Text("Starred message")),
                const PopupMenuItem(value: "Setting", child: Text("Setting")),
              ];
            },
          ),
        ],
        backgroundColor: const Color(0xFF075E54),
        title: const Text(
          "WhatsApp",
          style: TextStyle(fontSize: 25),
        ),
        bottom: TabBar(
          controller: tabController,
          tabs: tabs,
          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(controller: tabController, children: [
        CameraPage(cameraDescription: firstCamera),
        const ChatsPage(),
        const StatusPage(),
        const CallPage(),
      ]),
    );
  }
}
