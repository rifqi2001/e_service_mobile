import 'package:flutter/material.dart';
import 'package:e_service/widget/category.dart';
import 'package:e_service/widget/konten.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/ice.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: height * .07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 250, 250),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/icons/face.png')),
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          width: 2))),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Selamat Datang!\nUsers",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.notifications_active,
                                color: Colors.white,
                                size: 30,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Category(
                      imagePath: "assets/icons/cuci.png", title: "Cuci AC"),
                  Category(
                      imagePath: "assets/icons/bongkar-pasang.png",
                      title: "Perbaikan AC"),
                  Category(
                      imagePath: "assets/icons/ac.png", title: "Pasang AC"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Category(imagePath: "assets/icons/price.png", title: "Promo"),
                  Category(
                      imagePath: "assets/icons/coins.png", title: "Cek Harga"),
                  Category(
                      imagePath: "assets/icons/question.png", title: "Bantuan"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Pemberitahuan",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Santana'),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 253, 255, 168),
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              height: 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Icon(Icons.crisis_alert, color: Colors.grey),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Anda mendapat pemberitahuan baru",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize: 12),
                          minimumSize: Size(60, 25),
                          backgroundColor: Colors.yellow,
                        ),
                        child: Text("Cek Disini",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 10)))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Informasi untuk Pengguna!",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Santana')),
            ),
            Content(
              imagePath: "assets/images/winter.jpg",
              judul: "Paket Penawaran Langganan",
              desc: "Membeli langganan perawatan AC agar lebih hemat",
            ),
            Content(
              imagePath: "assets/images/banner1.png",
              judul: "Diskon pemesanan Service AC",
              desc:
                  "Dapatkan dengan cara minimal pemesanan 3 AC dan\ndapatkan diskon up to 10%",
            ),
            Content(
              imagePath: "assets/images/teknisi.png",
              judul: "Teknisi",
              desc: "Kami memilih Teknisi yang berpengalaman dan terpercaya",
            ),
          ],
        )),
      ),
      // bottomNavigationBar: _bottomNavBar,
    );
  }
}
