import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String imagePath;
  final String title;
  const Category({Key? key, required this.imagePath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 45,
          height: 55,
          child: Column(
            children: [
              Image.asset(
                imagePath,
                width: 20,
              ),
              SizedBox(
                height: 10,
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
