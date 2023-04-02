import 'package:flutter/material.dart';

class ListPrice extends StatelessWidget {
  final String imagePath;
  final String title;
  final String harga;
  final String estimasi;
  const ListPrice(
      {Key? key,
      required this.imagePath,
      required this.title,
      required this.harga,
      required this.estimasi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 240,
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 10,
              child: Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: Image.asset(imagePath, fit: BoxFit.cover))
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 10,
                child: SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.money, color: Colors.green),
                            SizedBox(
                              width: 5,
                            ),
                            Text(harga,
                                style: TextStyle(fontSize: 12)),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.access_time, color: Colors.amber),
                            SizedBox(
                              width: 5,
                            ),
                            Text(estimasi,
                                style: TextStyle(fontSize: 12))
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
