import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String imagePath;
  final String title;
  const Category({Key? key, required this.imagePath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 35,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                maxLines: 1,
                style: TextStyle(fontFamily: 'Santana', fontSize: 12),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
