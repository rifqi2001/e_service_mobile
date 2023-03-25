import 'package:flutter/material.dart';
import 'package:e_service/bottom.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Text("Profil"),
      ),
    );
  }
}
