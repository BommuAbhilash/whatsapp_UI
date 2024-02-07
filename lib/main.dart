
import 'package:flutter/material.dart';
import 'calls.dart';
import 'chats.dart';
import 'updates.dart';
import 'groups.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 4, vsync: this);
  int currentPage = 0;
  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: const Text("Whatsapp"),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 48),
          child: TabBar(
            onTap: (value) {
              setState(() {
                currentPage = value;
              });
            },
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.groups_2_rounded),
              ),
              Tab(
                child: Row(
                  children: [
                    Text("Chats"),
                    SizedBox(
                      width: 6,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 11,
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text(
                          "41",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Text("Updates"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          const Groups(),
          const Chats(),
          const Updates(),
          Calls(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[900],
        onPressed: null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: currentPage == 3
            ? const Icon(Icons.add_ic_call) :  currentPage == 2
                ? const Icon(Icons.camera_alt_rounded)
                : currentPage == 1 ? const Icon(Icons.message_rounded): null
             
      ),
    );
  }
}



