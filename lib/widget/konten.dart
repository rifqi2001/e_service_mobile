import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  final String imagePath;
  final String judul;
  final String desc;
  const Content(
      {Key? key,
      required this.imagePath,
      required this.judul,
      required this.desc})
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
                      child: Image.asset(imagePath, fit: BoxFit.fill))
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 10,
                child: SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(judul,
                            style: TextStyle(fontSize: 14)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            SizedBox(
                              width: 5,
                            ),
                            Text(desc,
                                style: TextStyle(fontSize: 10)),
                                SizedBox(),
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
