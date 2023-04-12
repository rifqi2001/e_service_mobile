import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String imagePath;
  final String title;
  const Category({Key? key, required this.imagePath, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              color: Colors.blue[900], borderRadius: BorderRadius.circular(25)),
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
                style: TextStyle(
                    fontFamily: 'Santana', fontSize: 12, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
