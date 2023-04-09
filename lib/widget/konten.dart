import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  final String imagePath;
  final String title;

  const Content({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 10,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Stack(
            children: [
              SizedBox(
                width: 240,
                height: double.infinity,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.black26,
                    BlendMode.darken,
                  ), // ubah warna dan mode filter sesuai kebutuhan
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 50,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
