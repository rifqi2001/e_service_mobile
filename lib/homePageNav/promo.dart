import 'package:flutter/material.dart';

class PromoScreen extends StatefulWidget {
  @override
  _PromoScreenState createState() => _PromoScreenState();
}

class _PromoScreenState extends State<PromoScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promo'),
        backgroundColor: Color.fromARGB(255, 101, 203, 233),
      ),
    );
  }
}
