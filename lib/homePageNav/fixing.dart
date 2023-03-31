import 'package:flutter/material.dart';

class PerbaikanAcScreen extends StatefulWidget {
  @override
  _PerbaikanAcScreenState createState() => _PerbaikanAcScreenState();
}

class _PerbaikanAcScreenState extends State<PerbaikanAcScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perbaikan AC'),
        backgroundColor: Color.fromARGB(255, 101, 203, 233),
      ),
    );
  }
}
