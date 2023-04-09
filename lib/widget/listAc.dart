import 'package:flutter/material.dart';

class ListAc extends StatelessWidget {
  final String imagePath;
  final String title;
  final String harga;

  const ListAc({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.harga,
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
              Positioned(
                left: 10,
                bottom: 10,
                child: Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Text(
                      harga,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ListAc extends StatelessWidget {
//   final String imagePath;
//   final String title;
//   final String harga;
//   const ListAc({
//     Key? key,
//     required this.imagePath,
//     required this.title,
//     required this.harga,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         width: MediaQuery.of(context).size.width * 0.6,
//         height: 150,
//         child: Stack(
//           children: [
//             Card(
//               clipBehavior: Clip.antiAliasWithSaveLayer,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25)),
//               elevation: 10,
//               child: Column(
//                 children: [
//                   SizedBox(
//                       width: double.infinity,
//                       height: 100,
//                       child: Image.asset(imagePath, fit: BoxFit.fill))
//                 ],
//               ),
//             ),
//             Positioned(
//                 bottom: 0,
//                 left: 10,
//                 child: SizedBox(
//                   height: 60,
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 10, right: 10),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(title,
//                             style: TextStyle(
//                                 fontSize: 17, fontWeight: FontWeight.bold)),
//                         Row(
//                           children: [
//                             Icon(Icons.attach_money, color: Colors.green),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Text(harga, style: TextStyle(fontSize: 12)),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 )),
//           ],
//         ));
//   }
// }
