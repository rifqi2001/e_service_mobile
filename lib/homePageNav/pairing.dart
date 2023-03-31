import 'package:flutter/material.dart';

class PasangAcScreen extends StatefulWidget {
  @override
  _PesangAcScreenState createState() => _PesangAcScreenState();
}

class _PesangAcScreenState extends State<PasangAcScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bongkar & Pasang AC'),
        backgroundColor: Color.fromARGB(255, 101, 203, 233),
      ),
    );
  }
}
