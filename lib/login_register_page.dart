import 'package:flutter/material.dart';

class LoginRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Blog App"),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Form(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}



Widget logo(){
  return Hero(
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 110.0,
      child: Image.asset("assets/logo_transparent.png"),
    ),
  );
}

