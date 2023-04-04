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
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/banner4.png',
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              "Dapatkan diskon 10% dengan memesan minimal 5 layanan E-SERVICE!",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              "Gunakan kode 1SERVICE saat sebelum memesan layanan",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Shop Now'),
            ),
          ],
        ),
      ),
    );
  }
}
