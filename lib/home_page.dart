import 'package:flip_box_bar/flip_box_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wigiv"),
      ),
      body: Container(),
      bottomNavigationBar: FlipBoxBar(
        selectedIndex: selectedIndex,
        navBarHeight: 80,
        items: [
          FlipBarItem(
              icon: Icon(Icons.local_car_wash),
              text: Text("Feed"),
              frontColor: Colors.blue,
              backColor: Colors.blueAccent),
          FlipBarItem(
              icon: Icon(Icons.camera),
              text: Text("Post"),
              frontColor: Colors.cyan,
              backColor: Colors.cyanAccent),
          FlipBarItem(
              icon: Icon(Icons.settings),
              text: Text("Settings"),
              frontColor: Colors.orange,
              backColor: Colors.orangeAccent),
        ],
        onIndexChanged: (newIndex) {
          setState(() {
            selectedIndex = newIndex;
          });
        },
      ),
    );
  }
}
