import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<History> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Text("History"),
      ),
    );
  }
}
