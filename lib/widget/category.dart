import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String imagePath;
  final String title;
  const Category({Key? key, required this.imagePath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          width: 50,
          height: 55,
          decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 25,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: TextStyle(fontFamily: 'Santana', fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
