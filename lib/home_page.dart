import 'package:flutter/material.dart';
import 'package:e_service/widget/category.dart';
import 'package:e_service/widget/konten.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: "Riwayat\nPesanan"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      ],),
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 140, width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/bg.png'),
                    fit: BoxFit.cover),
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,
                  ),
                  Padding(padding: const EdgeInsets.all(15),
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
                              image: DecorationImage(image: AssetImage('assets/icons/face.png')),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2
                              )
                            )
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Selamat Datang!\nUsers", style: TextStyle(
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
                        )
                      ),
                    ],
                  ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 5),
              child: Row(
                children: [
                  Category(imagePath: "assets/icons/cuci.png", title: "Cuci AC"),
                  Category(imagePath: "assets/icons/bongkar-pasang.png", title: "Perbaikan AC"),
                  Category(imagePath: "assets/icons/ac.png", title: "Pasang AC"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Category(imagePath: "assets/icons/price.png", title: "Promo"),
                  Category(imagePath: "assets/icons/coins.png", title: "Cek Harga"),
                  Category(imagePath: "assets/icons/question.png", title: "Bantuan"),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.all(15),
            child: Text(
              "Pemberitahuan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Santana'),
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
                    ElevatedButton(onPressed: () {}, 
                    style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 12),
                      minimumSize: Size(60, 25),
                      backgroundColor: Colors.yellow,
                    ),
                    child: Text("Cek Disini", style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 10)))
                  ],
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.all(15),
            child: Text(
              "Informasi untuk Pengguna!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Santana')
            ),
            ),
            Content(
              imagePath: "assets/images/winter.jpg",
              judul: "Paket Penawaran Langganan",
              desc: "Membeli langganan perawatan AC agar lebih hemat",
            ),
            Content(
              imagePath: "assets/images/banner1.png",
              judul: "Diskon pemesanan Service AC",
              desc: "Dapatkan dengan cara minimal pemesanan 3 AC dan\ndapatkan diskon up to 10%",
            ),
            Content(
              imagePath: "assets/images/teknisi.png",
              judul: "Teknisi",
              desc: "Kami memilih Teknisi yang berpengalaman dan terpercaya",
            ),
          ],
        )),
      ),
    );
  }
}