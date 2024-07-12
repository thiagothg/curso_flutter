import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // String _prize = "0.0";
  int _indexBottomPage = 0;

  List<Widget> _pages = [
    Text("Inicio"),
    Text("EM alta"),
    Text("sub"),
    Text("Library"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          width: 98,
          height: 22,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle))
        ],
      ),
      body: _pages[_indexBottomPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexBottomPage,
        onTap: (index) {
          _indexBottomPage = index;
          setState(() {});
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
            label: "Em Alta",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: "Incrições",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: "Folder",
          ),
        ],
      ),
    );
  }
}
