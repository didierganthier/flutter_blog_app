import 'package:flutter/material.dart';
import 'package:flutter_blog_app/login_register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Blog App",
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: LoginRegisterPage(),
    );
  }
}
