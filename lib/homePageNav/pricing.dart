import 'package:flutter/material.dart';

class HargaScreen extends StatefulWidget {
  @override
  _HargaScreenState createState() => _HargaScreenState();
}

class _HargaScreenState extends State<HargaScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cek Harga'),
        backgroundColor: Color.fromARGB(255, 101, 203, 233),
      ),
    );
  }
}
