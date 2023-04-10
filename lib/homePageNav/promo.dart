import 'package:e_service/homePageNav/order.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_service/homePageNav/promoCode.dart';

class PromoScreen extends StatefulWidget {
  @override
  _PromoScreenState createState() => _PromoScreenState();
}

class _PromoScreenState extends State<PromoScreen> {
  List<Widget> imageSliders2 = [
    Image.asset('assets/images/banner3.png', fit: BoxFit.fill),
    Image.asset('assets/images/banner2.png', fit: BoxFit.fill),
    Image.asset('assets/images/banner8.jpg', fit: BoxFit.fill),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Promo',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white12,
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.blue[800]),
              child: Row(children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.percent_rounded,
                    color: Colors.blue[800],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    "Masukkan kode promo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                InkWell(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Code()),
                      );
                    })
              ]),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 5, bottom: 10),
              child: Text("Promo menarik untukmu!",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Santana')),
            ),
            CarouselSlider(
              items: imageSliders2,
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                reverse: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
              ),
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
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PesanScreen()),
                );
              },
              child: Text('Pesan Sekarang'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 101, 203, 233),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
