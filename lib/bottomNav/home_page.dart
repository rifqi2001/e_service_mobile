import 'package:flutter/material.dart';
import 'package:e_service/widget/category.dart';
import 'package:e_service/widget/konten.dart';
import 'package:e_service/homePageNav/notification.dart';
import 'package:e_service/homePageNav/promo.dart';
import 'package:e_service/homePageNav/pricing.dart';
import 'package:e_service/homePageNav/help.dart';
import 'package:e_service/homePageNav/order.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> imageSliders = [
    Image.asset('assets/images/banner6.png', fit: BoxFit.fill),
    Image.asset('assets/images/banner4.png', fit: BoxFit.fill),
    Image.asset('assets/images/banner7.png', fit: BoxFit.fill),
  ];
  List<Widget> imageSliders2 = [
    Image.asset('assets/images/banner3.png', fit: BoxFit.fill),
    Image.asset('assets/images/banner2.png', fit: BoxFit.fill),
    Image.asset('assets/images/banner8.jpg', fit: BoxFit.fill),
  ];

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
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: double.infinity,
                  color: Colors.blue[900],
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //       image: AssetImage('assets/images/city2.jpg'),
                  //       opacity: 0.8,
                  //       fit: BoxFit.fill),
                  // ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.17,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: height * .07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 250, 250, 250),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
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
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NotificationScreen(),
                                ),
                              );
                            },
                            child: Container(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  Icons.notifications_active,
                                  color: Colors.white,
                                  size: 30,
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text("Informasi untuk Pengguna!",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Santana')),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                    left: 15,
                  ),
                  child: Text(
                    "Nikmati pelayanan dari teknisi berpegalaman dan terpercaya. Pesan sekarang juga!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CarouselSlider(
                    items: imageSliders,
                    options: CarouselOptions(
                      height: 150,
                      autoPlay: true,
                      // enlargeStrategy: CenterPageEnlargeStrategy.height,
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PesanScreen(),
                                  ),
                                );
                              },
                              child: Category(
                                  imagePath: "assets/icons/ac.png",
                                  title: "Pesan"),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HargaScreen(),
                                  ),
                                );
                              },
                              child: Category(
                                  imagePath: "assets/icons/price2.png",
                                  title: "Cek Harga"),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PromoScreen(),
                                  ),
                                );
                              },
                              child: Category(
                                  imagePath: "assets/icons/discount2.png",
                                  title: "Promo"),
                            ),
                            // InkWell(
                            //   onTap: () {
                            //     Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) => BantuanScreen(),
                            //       ),
                            //     );
                            //   },
                            //   child: Category(
                            //       imagePath: "assets/icons/help2.png",
                            //       title: "Bantuan"),
                            // )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Pemberitahuan",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Santana'),
                    ),
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotificationScreen()),
                              );
                            },
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
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                    child: Text("Pelayanan yang tersedia",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Santana')),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Content(
                        imagePath: "assets/images/clean.jpg",
                        title: "Cuci AC",
                      ),
                      Content(
                        imagePath: "assets/images/fix-ac.jpg",
                        title: "Perbaikan AC",
                      ),
                      Content(
                        imagePath: "assets/images/install.jpg",
                        title: "Bongkar & Pasang AC",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(padding: EdgeInsets.only(bottom: 25)),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
