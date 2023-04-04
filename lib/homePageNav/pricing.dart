import 'package:flutter/material.dart';
import 'package:e_service/widget/listPrice.dart';
import 'package:e_service/widget/listAc.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                child: Text("Harga Satuan",
                    style: TextStyle(
                        fontFamily: 'Santana',
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ListPrice(
                    imagePath: "assets/images/clean.jpg",
                    title: "Cuci AC",
                    harga: "RP 70.000",
                    estimasi: "1 - 2 jam",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ListPrice(
                    imagePath: "assets/images/fix-ac.jpg",
                    title: "Perbaikan AC",
                    harga: "RP 100.000",
                    estimasi: "1 - 2 jam",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ListPrice(
                    imagePath: "assets/images/install.jpg",
                    title: "Bongkar & Pasang AC",
                    harga: "RP 150.000",
                    estimasi: "1 - 2 jam",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                child: Text("Jenis AC",
                    style: TextStyle(
                        fontFamily: 'Santana',
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListAc(
                imagePath: "assets/images/non inverter.jpg",
                title: "Non Inverter",
                harga: "Harga Normal"),
            SizedBox(
              height: 10,
            ),
            ListAc(
                imagePath: "assets/images/inverter.jpg",
                title: "Inverter",
                harga: "+ Rp 10.000"),
            SizedBox(
              height: 10,
            ),
            ListAc(
                imagePath: "assets/images/standing.jpg",
                title: "Standing",
                harga: "Harga Normal"),
          ],
        ),
      ),
    );
  }
}
