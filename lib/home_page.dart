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
                  height: 140, width: double.infinity, color: Colors.blue,
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
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/icons/default-profile.png')),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 1
                              )
                            )
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Haloo Users!", style: TextStyle(
                              color: Colors.white,
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
                  Padding(
                    padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xFFF5F5F7),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          cursorHeight: 20,
                          autofocus: false,
                          decoration: InputDecoration(
                              hintText: "Cari disini...",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 2),
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                  ),
                ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Category(imagePath: "assets/icons/cuci.png", title: "Cuci AC"),
                  Category(imagePath: "assets/icons/ac.png", title: "Perbaikan AC"),
                  Category(imagePath: "assets/icons/bongkar-pasang.png", title: "Pasang AC"),
                  Category(imagePath: "assets/icons/price.png", title: "Cek Harga"),
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
                        "Anda belum memberi rating",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                    Text(
                      "10.00 PM",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
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
              judul: "Paket Winter Party",
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