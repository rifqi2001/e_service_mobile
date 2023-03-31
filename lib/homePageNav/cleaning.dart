import 'package:flutter/material.dart';

class CuciAcScreen extends StatefulWidget {
  @override
  _CuciAcScreenState createState() => _CuciAcScreenState();
}

class _CuciAcScreenState extends State<CuciAcScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuci AC'),
        backgroundColor: Color.fromARGB(255, 101, 203, 233),
      ),
    );
  }
}
