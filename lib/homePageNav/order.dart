import 'package:flutter/material.dart';

class PesanScreen extends StatefulWidget {
  @override
  _PesanScreenState createState() => _PesanScreenState();
}

class _PesanScreenState extends State<PesanScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pemesanan'),
        backgroundColor: Color.fromARGB(255, 101, 203, 233),
      ),
    );
  }
}
