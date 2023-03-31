import 'package:flutter/material.dart';

class BantuanScreen extends StatefulWidget {
  @override
  _BantuanScreenState createState() => _BantuanScreenState();
}

class _BantuanScreenState extends State<BantuanScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan'),
        backgroundColor: Color.fromARGB(255, 101, 203, 233),
      ),
    );
  }
}
