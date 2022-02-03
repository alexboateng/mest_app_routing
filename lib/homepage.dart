import 'package:flutter/material.dart';
import 'package:mest_app_routing/login_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route home"),
      ),
      body: Column(children: [
        TextButton(
          child: Text('Login'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
        TextButton(
          child: Text('Click Me'),
          onPressed: () {
            Navigator.of(context).pushNamed("/login");
          },
        ),
      ]),
    );
  }
}
