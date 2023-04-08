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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/city2.jpg'),
                        opacity: 0.8,
                        fit: BoxFit.fill),
                  ),
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
                              imagePath: "assets/icons/ac.png", title: "Pesan"),
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
                      ],
                    ),
                  ),
                ),
              ],
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
                                builder: (context) => PromoScreen(),
                              ),
                            );
                          },
                          child: Category(
                              imagePath: "assets/icons/discount2.png",
                              title: "Promo"),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BantuanScreen(),
                              ),
                            );
                          },
                          child: Category(
                              imagePath: "assets/icons/help2.png",
                              title: "Bantuan"),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, bottom: 10),
              child: Text("Informasi untuk Pengguna!",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Santana')),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 5,
                left: 15,
              ),
              child: Text(
                "Nikmati pelayanan dari teknisi berpegalaman dan terpercaya. Pesan sekarang juga!",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                height: 140,
                autoPlay: true,
                aspectRatio: 2.0,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                // enlargeStrategy: CenterPageEnlargeStrategy.height,
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
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, bottom: 10),
              child: Text("Ada Promo untuk pengguna baru!",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Santana')),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, left: 15),
              child: Text(
                "Dapatkan diskon nya sekarang juga! S&K berlaku",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            CarouselSlider(
              items: imageSliders2,
              options: CarouselOptions(
                height: 140,
                autoPlay: true,
                reverse: true,
                aspectRatio: 2.0,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                // enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       Content(
            //         imagePath: "assets/images/banner3.png",
            //       ),
            //       Content(
            //         imagePath: "assets/images/banner2.png",
            //       ),
            //       Content(
            //         imagePath: "assets/images/banner1.png",
            //       ),
            //     ],
            //   ),
            // ),
          ],
        )),
      ),
    );
  }
}
