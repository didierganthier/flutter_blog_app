import 'package:flutter/material.dart';

class LoginRegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Flutter Blog App"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: createInputs() + createButtons(),
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> createInputs() {
  return [
    SizedBox(
      height: 10.0,
    ),
    logo(),
    SizedBox(
      height: 20.0,
    ),
    TextFormField(
      decoration: InputDecoration(labelText: 'Email', labelStyle: TextStyle(color: Colors.pink),border: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink))),
      autofocus: true,
    ),
    SizedBox(
      height: 10.0,
    ),
    TextFormField(
      decoration: InputDecoration(labelText: 'Password', labelStyle: TextStyle(color: Colors.pink),border: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink))),
    ),
    SizedBox(
      height: 10.0,
    ),
  ];
}

Widget logo() {
  return Hero(
    tag: 'hero',
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 110.0,
      child: Image.asset("assets/logo_transparent.png"),
    ),
  );
}

List<Widget> createButtons() {
  return [
    RaisedButton(
      onPressed: () {},
      child: Text(
        'Login',
        style: TextStyle(fontSize: 20.0),
      ),
      textColor: Colors.white,
      color: Colors.pink,
    ),
    FlatButton(
      onPressed: () {},
      child: Text(
        "Don't have an account? Create Account",
        style: TextStyle(fontSize: 15.0),
      ),
      textColor: Colors.white,
    )
  ];
}
